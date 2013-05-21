/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_pwm.c"                             |
* |:----          |:----                                        |
* |Description:   | This is a library for using the PWM functions |
* |Revision:      | v00.02.00                                   |
* |Author:        | Efren S. Cruzat II                          |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |v00.00.01    |20120710   |ESCII              |Library Initial Release    |
* |v00.01.00    |20130205   |ESCII              |Modified For Layered Architecture  |
* |v00.02.00    |20130514   |ESCII              |Code Formatted                     |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_pwm.h"

/* Local Constants */
/* none */

/* Local Variables */
static  uint8_t     ui8PreScaler=1, ui8PreScalerVal=1, ui8PR2plus1=0;

/* Private Function Prototypes */
/* none */

/* Public Functions */
/*******************************************************************************//**
* \brief Setup the PWM peripheral frequency and default duty cycle
*
* > This function is called to initialize the PWM peripheral frequency and default
* > duty cycle. The frequency can be set between 1.22kHz and 200kHz with 10Hz resolution,
* > while the duty cycle has a 0.1% resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      setupPWM(module, frequency, dutycycle)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - PWM module assignment, PWM0, PWM1                          <BR>
* >     frequency - the required PWM frequency in 10Hz resolution           <BR>
* >     dutycycle - the required PWM duty cycle in 0.1% resolution
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupPWM(enum PWMModules_et ePWM_Module, uint16_t ui16Frequency, uint16_t ui16DutyCycle)
{
    /* Set the PWM period */
    setPWMFrequency(ui16Frequency);                 // Common for CCP1 and CCP2
    /* Load the default PWM duty value */
    setPWMDuty(ePWM_Module,ui16DutyCycle);
    /* Configure Timer */
    /* Select Source */
    //mc_PWMClk_Source(CCP_PWM_CLOCK);              // not for PIC16F877A
    /* Clear TMRxIF */
    //hal_clrPWMTmrIntFlag() ;                          // not critical
    /* Configure Prescaler value */
    hal_initPWMTimer(ui8PreScalerVal);          // Common for CCP1 and CCP2

    /* Configure CCP to PWM mode */
    if(PWM0 == ePWM_Module)
    {
        hal_configCCP1Mode(CCP_PWM_MODE);
        mc_makeOutput(D2);
    }
    else if(PWM1 == ePWM_Module)
    {
        hal_configCCP2Mode(CCP_PWM_MODE);
        mc_makeOutput(D1);
    }
    else
    {
        /* Invalid PWM Module */
        /* Do Nothing */
    }

    /* Enable Timer */
    hal_enablePWMTmr();                             // Common for CCP1 and CCP2
}

/*******************************************************************************//**
* \brief Set the PWM frequency
*
* > This function is called for setting the PWM frequency which affects both
* > PWM0 and PWM1. The frequency can be set between 1.22kHz and 200kHz w
* > ith 10Hz resolution (e.g. 1kHz/10Hz = 100).
*
* > <BR>
* > **Syntax:**<BR>
* >     setPWMFrequency(frequency)
* > <BR><BR>
* > **Parameters:**<BR>
* >     frequency - the required PWM frequency in 10Hz resolution
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setPWMFrequency(uint16_t ui16Frequency)
{
    uint16_t    ui16TempVar;
#ifdef S_SPLINT_S /* Suppress SPLint Unrecognized ID Errors */
#define uint24_t  uint32_t                          // esc.comment: use with caution
#endif
    uint24_t    ui24Period;                         // 0.01uS/Bit Resolution

    /* Check Frequency Range */
    if(ui16Frequency > K_MAX_FREQ_RANGE)            // > 200kHz
    {
        ui16Frequency = K_MAX_FREQ_RANGE;
    }
    else if(ui16Frequency < K_MIN_FREQ_RANGE)       // < 1.22kHz
    {
        ui16Frequency  = K_MIN_FREQ_RANGE;
    }
    else
    {
        /* Frequency within Range */
        /* Do Nothing */
    }

    /* Check Prescaler Range */
    if(ui16Frequency >= K_PRESCALE0_FREQ_LIM)       // 19.53kHz - 200kHz
    {
        ui8PreScalerVal = PRESCALE0_VAL;            // div by 1
    }
    else if(ui16Frequency >= K_PRESCALE1_FREQ_LIM)  // 4.88kHz - 19.53kHz
    {
        ui8PreScalerVal = PRESCALE1_VAL;            // div by 4
    }
    else if(ui16Frequency >= K_PRESCALE2_FREQ_LIM)  // 1.22kHz - 4.88kHz
    {
        ui8PreScalerVal = PRESCALE2_VAL;            // div by 16
    }
    else                                            // default
    {
        ui8PreScalerVal = PRESCALE2_VAL;            // div by 16
    }

    /* Prescaler to Period Parsing */
    ui8PreScaler = ui8PreScalerVal << 1;
    ui8PreScaler = (uint8_t)1 << ui8PreScaler;      // secret :p
    ui24Period = (uint24_t)(10000000UL / ui16Frequency);
    ui16TempVar = (uint16_t)20 * ui8PreScaler;
    ui24Period = ui24Period/ui16TempVar;

    /* Check Saturation */
    if(ui24Period > K_PERIOD_SAT_LIM)
    {
        ui8PR2plus1 = K_PERIOD_SAT_LIM;
    }
    else
    {
        ui8PR2plus1 = (uint8_t)ui24Period;
    }

    hal_setPWMPeriod(ui8PR2plus1);
}

/*******************************************************************************//**
* \brief Set the PWM duty cycle
*
* > This function is called for setting the PWM duty cycle.
* > The duty cycle value has a 0.1% resolution (e.g. 50% / 0.1% = 500).
*
* > <BR>
* > **Syntax:**<BR>
* >      setPWMDuty(module, dutycycle)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - PWM module assignment, PWM0, PWM1                          <BR>
* >     dutycycle - the required PWM duty cycle in 0.1% resolution
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setPWMDuty(enum PWMModules_et ePWM_Module, uint16_t ui16DutyCycle)
{
    uint16_t    ui16TempVar;

    /* Maximum of 100% Only */
    if(ui16DutyCycle > K_DUTY_SAT_LIM)
    {
        ui16DutyCycle = K_DUTY_SAT_LIM;
    }

    ui16TempVar = (uint16_t)ui8PR2plus1 << 2;       // secret :p
    ui16TempVar = (uint16_t)(((uint32_t)ui16TempVar * ui16DutyCycle) / 1000);

    if(PWM0 == ePWM_Module)
    {
        hal_setPWM0Ton(ui16TempVar);
    }
    else if(PWM1 == ePWM_Module)
    {
        hal_setPWM1Ton(ui16TempVar);
    }
    else
    {
        /* Invalid PWM Module */
        /* Do Nothing */
    }
}

/*******************************************************************************//**
* \brief Remove the PWM module
*
* > This function is called for disabling the PWM module
*
* > <BR>
* > **Syntax:**<BR>
* >      removePWM(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - PWM module assignment, PWM0, PWM1
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void removePWM(enum PWMModules_et ePWM_Module)
{
    if(PWM0 == ePWM_Module)
    {
        hal_setPWM0_Off();
    }
    else if(PWM1 == ePWM_Module)
    {
        hal_setPWM1_Off();
    }
    else
    {
        /* Invalid PWM Module */
        /* Do Nothing */
    }
}

/* Private Functions */
/* none */

/* end of corelib_pwm.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
