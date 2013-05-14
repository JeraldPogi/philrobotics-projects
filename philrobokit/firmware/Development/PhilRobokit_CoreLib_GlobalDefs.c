/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_GlobalDefs.c"          |
* |:----          |:----                                        |
* |Description:   | Global Variable Definitions                 |
* |Revision:      | v00.01.00                                   |
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
* |v00.01.00    |20130514   |ESCII              |Code Formated						|
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
/* Timer Mutex */
static          bool_t      gblTimerUsMSB_Mutex = FALSE;
static          bool_t      gblTimerMs_Mutex    = FALSE;
static          bool_t      gblTimerSec_Mutex   = FALSE;

/* Function Prototypes */
/* none */

/* Public Functions */
/* A flag to indicate low level initialization has commenced and the global interrupts are alread enabled */
void set_gblInitialized_FlagValue(void)
{
    gblInitialized = true;
}

bool_t get_gblInitialized_FlagValue(void)
{
    return gblInitialized;
}

/* Microseconds */
void inc_gui16TimerUsMSB_Value(uint16_t ui16Value)
{
    while(gblTimerUsMSB_Mutex)
    {
        gblTimerUsMSB_Mutex = TRUE;
    }

    gui16TimerUsMSB += ui16Value;
    gblTimerUsMSB_Mutex = FALSE;
}

uint16_t get_gui16TimerUsMSB_Value(void)
{
    uint16_t ui16Temp;

    while(gblTimerUsMSB_Mutex)
    {
        gblTimerUsMSB_Mutex = TRUE;
    }

    ui16Temp = (gui16TimerUsMSB&0xFF00);
    gblTimerUsMSB_Mutex = FALSE;
    return ui16Temp;
}

/* Milliseconds */
void inc_gui16TimerMs_Value(void)
{
    while(gblTimerMs_Mutex)
    {
        gblTimerMs_Mutex = TRUE;
    }

    gui16TimerMs++;
    gblTimerMs_Mutex = FALSE;
}

uint16_t get_gui16TimerMs_Value(void)
{
    uint16_t ui16Temp;

    while(gblTimerMs_Mutex)
    {
        gblTimerMs_Mutex = TRUE;
    }

    ui16Temp =  gui16TimerMs;
    gblTimerMs_Mutex = FALSE;
    return ui16Temp;
}

/* Seconds */
void inc_gui16TimerSec_Value(void)
{
    while(gblTimerSec_Mutex)
    {
        gblTimerSec_Mutex = TRUE;
    }

    gui16TimerSec++;
    gblTimerSec_Mutex = FALSE;
}

uint16_t get_gui16TimerSec_Value(void)
{
    uint16_t ui16Temp;

    while(gblTimerSec_Mutex)
    {
        gblTimerSec_Mutex = TRUE;
    }

    ui16Temp = gui16TimerSec;
    gblTimerSec_Mutex = FALSE;
    return ui16Temp;
}

/* Private Functions */
/* none */

/* end of PhilRoboKit_CoreLib_GlobalDefs.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
