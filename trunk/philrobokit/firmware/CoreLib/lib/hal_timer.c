/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_timer.c"                               |
* |:----          |:----                                        |
* |Description:   | Anito Base Timer Low Level                  |
* |Revision:      | v01.01.01                                   |
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
* |FW Version   |Date       |Author             |Description                                |
* |:----        |:----      |:----              |:----                                      |
* |v00.00.01    |201202xx   |Giancarlo A.       |Library Initial Release                    |
* |v00.00.02    |201203xx   |Giancarlo A.       |XXXXXX                                     |
* |v00.00.03    |20130707   |ESCII              |Fixed Interrupt Handler                    |
* |             |           |                   |Set to Overflow every 100uS                |
* |v01.00.00    |201211xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
* |v01.00.01    |20130320   |ESCII              |Move Timebase to TMR0 freerunning timer    |
* |v01.01.00    |20130514   |ESCII              |Code Formatted                             |
* |v01.01.01    |20130515   |ESCII              |Added unit test tracepoints                |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_timer.h"

/* Local Constants */
/* none */

/* Local Variables */
/* none */

/* Private Function Prototypes */
/* none */

/* Public Functions */
/*******************************************************************************//**
* \brief Setup Base Timer
*
* > This function is called to initialize the base timer as freerunning timer which
* > interrupts on overflow to increment timebases
*
* > <BR>
* > **Syntax:**<BR>
* >      setupTimer()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
#if 0
void setupTimer(void)
{
    /* Set Prescaler */
    hal_setTMR0Prescaler(TMR0_PRESCALE);
    /* Timer Peripheral Init */
    hal_TMR0_Init();
    /* Additional Configuration for PIC 18 */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
    hal_use8BitTMR0();
    /* Enable Timer Module */
    hal_enableBaseTimer();
#endif
    /* Enable Interrupt */
    hal_clrBaseTimerIntFlag();
    hal_enableBaseTimerInt();
}
#endif

/*******************************************************************************//**
* \brief Timebase Interrupt Service Routine
*
* > This is an interrupt handler called periodically to manage system timebase
*
* > PIC18F4520, XC8, @32Mhz(/4) Clock, 255uS Period: 5-10uS from trigger, 12uS Duration (4.7% resource)
* > PIC16F877A, XC8, @20Mhz(/4) Clock, 204uS Period: 8-16uS from trigger, 28uS Duration (13.73% resource)
*
* > <BR>
* > **Syntax:**<BR>
* >      timerISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void timerISR(void)
{
    static uint16_t ui16MsCounter = 0;

    if(hal_getBaseTimerIntFlag() && hal_getBaseTimerIntEnableStatus())
    {
        REGISTER_TMR0L = TMR0_1MS_PRELOAD;
        hal_clrBaseTimerIntFlag();
        inc_gui16TimerMs_Value();

        ui16MsCounter++;
        if(ui16MsCounter >= 1000)
        {
            inc_gui16TimerSec_Value();
            ui16MsCounter = 0;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(0);
#endif
        }

#if defined (USE_ADC)
        /* Check end of conversion */
        if(TRUE == hal_checkADCEndofConversion())
        {
            /* start new conversion */
            hal_startADCConversion();
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(1);
#endif
        }
#endif
    }
}

/* Private Functions */
/* none */

/* end of hal_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
