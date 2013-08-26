/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_GlobalDefs.c"          |
* |:----          |:----                                        |
* |Description:   | Global Variable Definitions                 |
* |Revision:      | v00.01.01                                   |
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
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.01    |20120713   |ESCII              |Library Initial Release            |
* |v00.00.02    |20130508   |ESCII              |Fixed Mutex Locking on inc timer counters|
* |v00.01.00    |20130514   |ESCII              |Code Formated                      |
* |v00.01.01    |20130515   |ESCII              |Fixed SPLINT Warning               |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_GlobalDefs.h"

/* Local Constants */
/* none */

/* Global Variables */
static volatile bool_t      gblInitialized      = FALSE;
static volatile bool_t      gblISRLocked        = FALSE;

/* Timers */
static volatile uint16_t    gui16TimerUsMSB     = 0;            // only the timer isr must write on these variables
static volatile uint16_t    gui16TimerMs        = 0;            // only the timer isr must write on these variables
static volatile uint16_t    gui16TimerSec       = 0;            // only the timer isr must write on these variables

/* Local Variables */
/* none */

/* Function Prototypes */
/* none */

/* Public Functions */
/* A flag to indicate low level initialization has commenced and the global interrupts are alread enabled */
void set_gblInitialized_FlagValue(void)
{
    gblInitialized = TRUE;
}

bool_t get_gblInitialized_FlagValue(void)
{
    bool_t blTemp;
    blTemp = gblInitialized;
    return blTemp;
}

void set_gblISRLocked_FlagValue(void)
{
    gblISRLocked = TRUE;
}

void clr_gblISRLocked_FlagValue(void)
{
    gblISRLocked = FALSE;
}

bool_t get_gblISRLocked_FlagValue(void)
{
    bool_t blTemp;
    blTemp = gblISRLocked;
    return blTemp;
}

/* Microseconds */
void inc_gui16TimerUsMSB_Value(uint16_t ui16Value)
{
    disableGlobalInt();                             // Atomic Operation
    gui16TimerUsMSB += ui16Value;

    if(FALSE == gblISRLocked)                       // Let ISR reenable interrupts
    {
        enableGlobalInt();
    }
}

uint16_t get_gui16TimerUsMSB_Value(void)
{
    uint16_t ui16Temp;
    //while(TRUE == gblISRLocked) {}                // acquire mutex
    //disableGlobalInt();                           // Atomic Operation
    ui16Temp = (gui16TimerUsMSB&0xFF00);
    //enableGlobalInt();                            // esc.comment enabled on corelib_basetimer.c
    return ui16Temp;
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

/* Milliseconds */
void inc_gui16TimerMs_Value(void)
{
    disableGlobalInt();                             // Atomic Operation
    gui16TimerMs++;

    if(FALSE == gblISRLocked)                       // Let ISR reenable interrupts
    {
        enableGlobalInt();
    }
}

uint16_t get_gui16TimerMs_Value(void)
{
    uint16_t ui16Temp;
    //while(TRUE == gblISRLocked) {}                // acquire mutex
    //disableGlobalInt();                           // Atomic Operation
    ui16Temp =  gui16TimerMs;
    //enableGlobalInt();                            // esc.comment enabled on corelib_basetimer.c
    return ui16Temp;
}

/* Seconds */
void inc_gui16TimerSec_Value(void)
{
    disableGlobalInt();                             // Atomic Operation
    gui16TimerSec++;

    if(FALSE == gblISRLocked)                       // Let ISR reenable interrupts
    {
        enableGlobalInt();
    }
}

uint16_t get_gui16TimerSec_Value(void)
{
    uint16_t ui16Temp;
    //while(TRUE == gblISRLocked) {}                // acquire mutex
    //disableGlobalInt();                           // Atomic Operation
    ui16Temp = gui16TimerSec;
    //enableGlobalInt();                            // esc.comment enabled on corelib_basetimer.c
    return ui16Temp;
}

/* Private Functions */
/* none */

/* end of PhilRoboKit_CoreLib_GlobalDefs.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
