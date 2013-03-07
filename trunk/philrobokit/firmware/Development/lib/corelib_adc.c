/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_adc.c"                             |
* |:----          |:----                                        |
* |Description:   | This is a library for the ADC peripheral    |
* |Revision:      | v01.00.01                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_adc.h"

/* Local Constants */
static enum adcModules_e
{
	ADC0                    // AN0
	,ADC1                   // AN1
	,ADC2                   // AN2
    ,ADC3                   // Skipped
    ,ADC4                   // AN3
    ,ADC5                   // AN5
    ,ADC6                   // AN6
    ,MAX_ADC_CHANNELS
};

/* Local Variables */
static enum adcModules_e    eCurrentChannel = 0;
static      uint16_t        ui16ADCBuff[MAX_ADC_CHANNELS-1] = {'\0'};
static      uint16_t        ui16ADCCycleTimer;

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
    static enum adcModules_e    eEffectiveChannel;
                uint16_t        ui16ADCVal;
	
    if(hal_getADCIntFlag() && hal_getADCIntEnableStatus())
    {
        hal_clrADCIntFlag();
        
        /* parse effective channel */
        if(eCurrentChannel > ADC3)
        {
            eEffectiveChannel = eCurrentChannel - 1;
        }
        else
        {
            eEffectiveChannel = eCurrentChannel;
        }
        
        /* Store Results */
        ui16ADCBuff[eEffectiveChannel] = readADCResult();
        
        /* Increment channel */
        if(eCurrentChannel < (MAX_ADC_CHANNELS-1))
        {
            eCurrentChannel++;
            
            /* Skip Vref Pin */
            if(ADC3 == eCurrentChannel)
            {
                eCurrentChannel++;
            }
        }
        else
        {
            eCurrentChannel = 0;
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
    /* Check cycle timeout */
    if(getElapsedMs(ui16ADCCycleTimer) >= ADC_CYCLE_TIMEOUT)
    {
        /* Check end of conversion */
        if(true == hal_checkADCEndofConversion())
        {
            /* get new time stamp */
            ui16ADCCycleTimer = getMs();
            
            /* start new conversion */
            hal_startADCConversion();
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
* >      setupADC(VrefSource)
* > <BR><BR>
* > **Parameters:**<BR>
* >     VrefSource - positive voltage reference source, VDD, EXT, INT          
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupADC(enum ADCVrefSource_e eVrefSource)
{	
    /* Ensure ADC Peripheral is Disabled */
	hal_disableADC();
    
    /* Configure GPIO as inputs */
    makeADCPinsInput();

    if(EXT == eVrefSource)
    {
        /* Configure ADC pins all analog, External Vref */
    	hal_configADCPins(CFG_EXTVREF);    
    }
    else
    {
        /* Configure ADC pins all analog, Vdd Vref */
    	hal_configADCPins(CFG_ALLANALOG);    
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
    ui16ADCCycleTimer = getMs();
    hal_startADCConversion(); 
}	

/*******************************************************************************//**
* \brief Setup the 8bit timer peripheral count resolution
*
* > This function is called to setup the 8bit timer peripheral count resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      value = adcRead(ui8Channel)
* > <BR><BR>
* > **Parameters:**<BR>
* >     ui8Channel - ADC channel to be read, AN0, AN1, AN2, AN3, AN4, AN5, AN6
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
    makeADCPinsInput();
}

/* Private Functions */
    /* none */
    
/* end of corelib_adc.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------