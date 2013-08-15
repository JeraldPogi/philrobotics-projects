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

/*******************************************************************************//**
* \brief Timebase Interrupt Service Routine
*
* > This is an interrupt handler called periodically to manage system timebase
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
    static uint16_t ui16UsCounter = 0;
#ifdef __TIMER_SEC__
    static uint16_t ui16MsCounter = 0;
#endif

    if(hal_getBaseTimerIntFlag() && hal_getBaseTimerIntEnableStatus())
    {
        hal_clrBaseTimerIntFlag();
        inc_gui16TimerUsMSB_Value(256);                     // increment uS Timer High Byte
        ui16UsCounter += TMR0_US_INCREMENT;

        while(ui16UsCounter >= 1000)
        {
            inc_gui16TimerMs_Value();
            ui16UsCounter -= 1000;
#ifdef __TIMER_SEC__
            ui16MsCounter++;
#endif
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(0);
#endif
        }

#ifdef __TIMER_SEC__

        if(ui16MsCounter >= 1000)
        {
            inc_gui16TimerSec_Value();
            ui16MsCounter = 0;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(1);
#endif
        }

#endif
    }
}

/*******************************************************************************//**
* \brief Basetimer counter value
*
* > This is function which returns the value of the uS base timer counter
*
* > <BR>
* > **Syntax:**<BR>
* >      getBaseTimerValue(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     value of the uS counter
* > <BR><BR>
***********************************************************************************/
uint16_t getBaseTimerValue(void)
{
    uint16_t ui16Temp,ui16HiTimer;

    while((TRUE == get_gblISRLocked_FlagValue())) {}    // aquire mutex

    disableGlobalInt();                                 // ensure atomic operation
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
    hal_disableBaseTimer();
#elif (__PHR_CONTROLLER__==__MCU_PIC16__)

    do
#else
#endif
    {
        ui16HiTimer = get_gui16TimerUsMSB_Value();
        ui16Temp = REGISTER_TMR0L;
    }

#if (__PHR_CONTROLLER__==__MCU_PIC16__)

    while(ui16HiTimer != get_gui16TimerUsMSB_Value());

#elif (__PHR_CONTROLLER__==__MCU_PIC18__)
    hal_enableBaseTimer();
#else
#endif
    ui16Temp += ui16HiTimer;
    //enableGlobalInt();                                // esc.comment enabled on corelib_basetimer.c
    return ui16Temp;
}

/* Private Functions */
/* none */

/* end of hal_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
