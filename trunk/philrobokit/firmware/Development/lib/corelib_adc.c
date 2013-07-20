/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_adc.c"                             |
* |:----          |:----                                        |
* |Description:   | This is a library for the ADC peripheral    |
* |Revision:      | v01.02.00                                   |
* |Author:        | Giancarlo Acelajado                         |
* |               |                                             |
* |Dependencies:  |                                             |
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.01.00    |20110xxx   |Giancarlo A.       |Library Initial Release            |
* |v00.01.01    |201203xx   |Giancarlo A.       |Fix Bugs, add setupADCPinsToDigital|
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130307   |ESC II             |Organized functions into HAL and CoreLib|
* |v01.00.02    |20130323   |ESC II             |Get ADCCycle timestamp regardless of ADC EOC status|
* |v01.01.00    |20130408   |ESC II             |Defined option for timer or counter delay|
* |v01.02.00    |20130514   |ESCII              |Code Formatted, added tracepoint for unit testing|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_adc.h"

/* Local Constants */
static enum adcModules_et
{
    ADC0,                   // AN0
    ADC1,                   // AN1
    ADC2,                   // AN2
    ADC3,                   // Skipped
    ADC4,                   // AN3
    ADC5,                   // AN5
    ADC6,                   // AN6
    ADC7,                   // AN7
    MAX_ADC_CHANNELS
};

/* Local Variables */
static enum adcModules_et   eCurrentChannel = 0;
static      uint16_t        ui16ADCBuff[MAX_ADC_CHANNELS-1] = {0};

/* Private Function Prototypes */
/* none */

/* Public Functions */
/*******************************************************************************//**
* \brief ADC End of Conversion interrupt service routine
*
* > This is an interrupt handler called the ADC has finished conversion
* > of the channel value
*
* > <BR>
* > **Syntax:**<BR>
* >     adcISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void adcISR(void)
{
    static enum adcModules_et    eEffectiveChannel;

    if(hal_getADCIntFlag() && hal_getADCIntEnableStatus())
    {
        hal_clrADCIntFlag();

        /* parse effective channel */
        if(ADC3 == eCurrentChannel)
        {
            /* must not be reached */
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(0);                               // must not be reached
#endif
        }
        else if(eCurrentChannel > ADC3)
        {
            eEffectiveChannel = eCurrentChannel - 1;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(1);
#endif
        }
        else
        {
            eEffectiveChannel = eCurrentChannel;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(2);
#endif
        }

        /* store results */
        ui16ADCBuff[eEffectiveChannel] = readADCResult();

        /* Increment Channel */
        if(eCurrentChannel < (MAX_ADC_CHANNELS-1))
        {
            eCurrentChannel++;

            /* Skip Vref Pin */
            if(ADC3 == eCurrentChannel)
            {
                eCurrentChannel++;
#ifdef UNIT_TEST
                UCUNIT_Tracepoint(4);
#endif
            }

#ifdef UNIT_TEST
            UCUNIT_Tracepoint(3);
#endif
        }
        else
        {
            eCurrentChannel = 0;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(5);
#endif
        }

        /* Set ADC Channel */
        hal_setADCChannel(eCurrentChannel);
    }
}

/*******************************************************************************//**
* \brief Cyclic ADC rotuines
*
* > This function is called at periodic interval to start the ADC conversion
*
* > <BR>
* > **Syntax:**<BR>
* >     adcCycle()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void adcCycle(void)
{
    static uint16_t ui16Counter = 0;
    ui16Counter++;

    /* Check cycle timeout */
    if(ui16Counter >= ADC_CYCLE_COUNTER_TIMEOUT)
    {
        /* get new time stamp */
        ui16Counter = 0;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif

        /* Check end of conversion */
        if(true == hal_checkADCEndofConversion())
        {
            /* start new conversion */
            hal_startADCConversion();
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(1);
#endif
        }
    }
}

/*******************************************************************************//**
* \brief Setup the ADC peripheral for periodic sampling of all ADC channels
*
* > This function is called to Setup the ADC peripheral for periodic
* > sampling of all ADC channels. The positive reference can be selected as either VDD,
* > EXT, and on other variant INT.
*
* > <BR>
* > **Syntax:**<BR>
* >      setupADC(vref_source)
* > <BR><BR>
* > **Parameters:**<BR>
* >     vref_source - positive voltage reference source, VDD, EXT, INT
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupADC(enum ADCVrefSource_et eVrefSource)
{
    /* Ensure ADC Peripheral is Disabled */
    hal_disableADC();
    /* Configure GPIO as inputs */
    mc_makeInput(D14);              // AN0
    mc_makeInput(D15);              // AN1
    mc_makeInput(D16);              // AN2
    mc_makeInput(D17);              // AN3
    mc_makeInput(D18);              // AN4
    mc_makeInput(D19);              // AN5
    mc_makeInput(D20);              // AN6

    if(EXT == eVrefSource)
    {
        /* Configure ADC pins all analog, External Vref */
        hal_configADCPins(CFG_EXTVREF);
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }
    else
    {
        /* Configure ADC pins all analog, Vdd Vref */
        hal_configADCPins(CFG_ALLANALOG);
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(1);
#endif
    }

    configLowLvlADC();
    /* Select Channel 0 by Default */
    eCurrentChannel = 0;
    hal_setADCChannel(eCurrentChannel);
    /* Enable Interrupt Here */
    hal_clrADCIntFlag();
    hal_enableADCInt();
    /* Enable ADC Peripheral */
    hal_enableADC();
    delayUs(10);                        // blocking function but on initialization only
    /* ADC Conversion Kickstart */
    hal_startADCConversion();
}

/*******************************************************************************//**
* \brief Setup the 8bit timer peripheral count resolution
*
* > This function is called to setup the 8bit timer peripheral count resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      value = adcRead(channel)
* > <BR><BR>
* > **Parameters:**<BR>
* >     channel - ADC channel to be read, AN0, AN1, AN2, AN3, AN4, AN5, AN6
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t value - the read ADC value from the requested channel
* > <BR><BR>
***********************************************************************************/
uint16_t adcRead(uint8_t ui8Channel)
{
    return ui16ADCBuff[ui8Channel];
}

/*******************************************************************************//**
* \brief Disables the ADC pins so it can be used as digital pins
*
* > This function is called to disable the ADC pins so it can be used as
* > digital pins(D14 to D20). The default pin directions are set as inputs.
*
* > <BR>
* > **Syntax:**<BR>
* >      removeADC()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void removeADC(void)
{
    /* Configure ADC Pins to Digital */
    hal_configADCPins(CFG_ALLDIGITAL);
    /* Turn Off ADC Module */
    hal_disableADC();
    /* Configure GPIO as inputs */
    mc_makeInput(D14);              // AN0
    mc_makeInput(D15);              // AN1
    mc_makeInput(D16);              // AN2
    mc_makeInput(D17);              // AN3
    mc_makeInput(D18);              // AN4
    mc_makeInput(D19);              // AN5
    mc_makeInput(D20);              // AN6
}

/* Private Functions */
/* none */

/* end of corelib_adc.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
