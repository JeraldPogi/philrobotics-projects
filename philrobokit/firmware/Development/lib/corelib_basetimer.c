/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_basetimer.c"                       |
* |:----          |:----                                        |
* |Description:   | Anito Base Timer Application                |
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
* |v00.00.01    |201211xx   |Giancarlo A.       |Library Initial Release                    |
* |v01.00.01    |20130321   |ESC II             |Modified uS time computation to use TMR0   |
* |v01.01.00    |20130514   |ESCII              |Code Formatted                             |
* |v01.01.01    |20130517   |ESCII              |Tracepoints added for unit testing         |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_basetimer.h"

/* Local Constants */
/* none */

/* Local Variables */
/* none */

/* Private Function Prototypes */
/* none */


/* Public Functions */
/*******************************************************************************//**
* \brief Microsecond Time Stamp
*
* > This function returns the value of a freerunning counter which increments every
* > 1uS. The stamp is used to measure the elapsed time from the time a stamp is
* > acquired until the getElapsedUs() function is called.
*
* > <BR>
* > **Syntax:**<BR>
* >      stamp = getUs()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t stamp - the current value of the freerunning uS counter
* > <BR><BR>
***********************************************************************************/
uint16_t getUs(void)
{
    uint16_t ui16TempBuff;
    ui16TempBuff = getBaseTimerValue();
    return ui16TempBuff;
}

/*******************************************************************************//**
* \brief  Microsecond Elapsed Time Measurement
*
* > This function returns the difference between the current value of the freerunning
* > uS counter and the previous timestamp.
*
* > <BR>
* > **Syntax:**<BR>
* >      elapsed = getElapsedUs(stamp)
* > <BR><BR>
* > **Parameters:**<BR>
* >     stamp - uS time reference
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t elapsed - measured uS time difference
* > <BR><BR>
***********************************************************************************/
uint16_t getElapsedUs(uint16_t ui16TimeUs)
{
    uint16_t ui16TempBuff;
    ui16TempBuff = getBaseTimerValue();
    ui16TempBuff -= ui16TimeUs;// delta
#if (_XTAL_FREQ == 20000000)                            // 20Mhz normalization: timer interrupt slowed a little bit for slow clock so interrupt is less frequent
    ui16TempBuff = (ui16TempBuff - (ui16TempBuff >> 2)) + (ui16TempBuff >> 4);  // delta' = delta * 0.8, (0.8125 = 1 - 0.25 + 0.0625)
    ui16TempBuff <<= SHIFT_MULT;
#endif
    return ui16TempBuff;
}

/*******************************************************************************//**
* \brief Millisecond Time Stamp
*
* > This function returns the value of a freerunning counter which increments every
* > 1mS. The stamp is used to measure the elapsed time from the time a stamp is
* > acquired until the getElapsedMs() function is called.
*
* > <BR>
* > **Syntax:**<BR>
* >      stamp = getMs()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t stamp - the current value of the freerunning mS counter
* > <BR><BR>
***********************************************************************************/
uint16_t getMs(void)
{
    uint16_t ui16TempBuff;
    disableGlobalInt();
    ui16TempBuff = get_gui16TimerMs_Value();
    enableGlobalInt();
    return ui16TempBuff;
}

/*******************************************************************************//**
* \brief  Millisecond Elapsed Time Measurement
*
* > This function returns the difference between the current value of the freerunning
* > mS counter and the previous timestamp.
*
* > <BR>
* > **Syntax:**<BR>
* >      elapsed = getElapsedMs(stamp)
* > <BR><BR>
* > **Parameters:**<BR>
* >     stamp - mS time reference
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t elapsed - measured mS time difference
* > <BR><BR>
***********************************************************************************/
uint16_t getElapsedMs(uint16_t ui16TimeMs)
{
    uint16_t ui16TempBuff;
    disableGlobalInt();
    ui16TempBuff = get_gui16TimerMs_Value();
    ui16TempBuff -= ui16TimeMs;
#if (_XTAL_FREQ == 20000000)                            // 20Mhz normalization: timer interrupt slowed a little bit for slow clock so interrupt is less frequent
    ui16TempBuff <<= SHIFT_MULT;
#endif
    enableGlobalInt();
    return ui16TempBuff;
}

#ifdef __TIMER_SEC__
/*******************************************************************************//**
* \brief Seconds Time Stamp
*
* > This function returns the value of a freerunning counter which increments every
* > 1Sec. The stamp is used to measure the elapsed time from the time a stamp is
* > acquired until the getElapsedSec() function is called.
*
* > <BR>
* > **Syntax:**<BR>
* >      stamp = getSec()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t stamp - the current value of the freerunning Sec counter
* > <BR><BR>
***********************************************************************************/
uint16_t getSec(void)
{
    uint16_t ui16TempBuff;
    ui16TempBuff = get_gui16TimerSec_Value();
    return ui16TempBuff;
}

/*******************************************************************************//**
* \brief  Seconds Elapsed Time Measurement
*
* > This function returns the difference between the current value of the freerunning
* > Sec counter and the previous timestamp.
*
* > <BR>
* > **Syntax:**<BR>
* >      elapsed = getElapsedSec(stamp)
* > <BR><BR>
* > **Parameters:**<BR>
* >     stamp - Sec time reference
* > <BR><BR>
* > **Returns:**<BR>
* >     uint16_t elapsed - measured Sec time difference
* > <BR><BR>
***********************************************************************************/
uint16_t getElapsedSec(uint16_t ui16TimeSec)
{
    uint16_t ui16TempBuff;
    ui16TempBuff = get_gui16TimerSec_Value();
    ui16TempBuff -= ui16TimeSec;
    return ui16TempBuff;
}
#endif

/* Private Functions */
/* none */

/* end of corelib_basetimer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
