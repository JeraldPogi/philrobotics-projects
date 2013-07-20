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

/* Timers */
static volatile uint16_t    gui16TimerUsMSB     = 0;            // only the timer isr must write on these variables
static volatile uint16_t    gui16TimerMs        = 0;            // only the timer isr must write on these variables
static volatile uint16_t    gui16TimerSec       = 0;            // only the timer isr must write on these variables

/* Local Variables */
#if 0
/* Timer Mutex */
static          bool_t      gblTimerUsMSB_Mutex = FALSE;
static          bool_t      gblTimerMs_Mutex    = FALSE;
static          bool_t      gblTimerSec_Mutex   = FALSE;
#endif

/* Function Prototypes */
#if 0
void get_MutexLock(volatile bool_t* pblMutex);
void clr_MutexLock(volatile bool_t* pblMutex);
#endif

/* Public Functions */
/* A flag to indicate low level initialization has commenced and the global interrupts are alread enabled */
void set_gblInitialized_FlagValue(void)
{
    gblInitialized = true;
}

bool_t get_gblInitialized_FlagValue(void)
{
    bool_t blTemp;
    blTemp = gblInitialized;
    return blTemp;
}

/* Microseconds */
void inc_gui16TimerUsMSB_Value(uint16_t ui16Value)
{
    gui16TimerUsMSB += ui16Value;
}

uint16_t get_gui16TimerUsMSB_Value(void)
{
    uint16_t ui16Temp;
    ui16Temp = (gui16TimerUsMSB&0xFF00);
    return ui16Temp;
}

/* Milliseconds */
void inc_gui16TimerMs_Value(void)
{
    gui16TimerMs++;
}

uint16_t get_gui16TimerMs_Value(void)
{
    uint16_t ui16Temp;
    //while(FALSE == getGlobalIntEnableStatus()){}        // aquire mutex
    //disableGlobalInt();                                 // ensure atomic operation
    ui16Temp =  gui16TimerMs;
    //enableGlobalInt();                                  // esc.comment, disabling performed on corelib_basetimer, encountering problems
    return ui16Temp;
}

/* Seconds */
void inc_gui16TimerSec_Value(void)
{
    gui16TimerSec++;
}

uint16_t get_gui16TimerSec_Value(void)
{
    uint16_t ui16Temp;
    //while(FALSE == getGlobalIntEnableStatus()) {}       // aquire mutex
    //disableGlobalInt();                                 // ensure atomic operation
    ui16Temp = gui16TimerSec;
    //enableGlobalInt();                                  // esc.comment, disabling performed on corelib_basetimer, encountering problems
    return ui16Temp;
}

/* Private Functions */
#if 0
void get_MutexLock(volatile bool_t* pblMutex)
{
    bool_t blInitValue;
    blInitValue = FALSE;

    if(FALSE == getGlobalIntEnableStatus())             // mutex locked by interrupt
    {
        *pblMutex = TRUE;
    }
    else
    {
        do
        {
            disableGlobalInt();                         // ensure atomic operation
            blInitValue = *pblMutex;
            *pblMutex = TRUE;
            enableGlobalInt();
        }
        while(TRUE == blInitValue);
    }
}

void clr_MutexLock(volatile bool_t* pblMutex)
{
    *pblMutex = FALSE;
}
#endif

/* end of PhilRoboKit_CoreLib_GlobalDefs.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
