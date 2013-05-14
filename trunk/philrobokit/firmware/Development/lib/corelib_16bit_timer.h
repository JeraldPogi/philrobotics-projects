/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_16bit_timer.h"                     |
* |:----          |:----                                        |
* |Description:   | This is a header file of the 16bit timer library |
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
* |v00.00.01    |20130323   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130514   |ESCII              |Code Formatted, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_16BIT_TIMER_H__
#define __PH_16BIT_TIMER_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_16bit_timer_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#include "hal_16bit_timer.h"
#endif

/* User Configuration Definitions */
// 1/(3*9600) = 34.72222uS, UART bit is sampled 3x
#if (_XTAL_FREQ == 20000000)
#define K16_CRITICALTASK_PERIOD                     174 // 0.2uS resolution @ 20Mhz
#elif (_XTAL_FREQ == 8000000)
#define K16_CRITICALTASK_PERIOD                     69  // 0.5uS resolution @ 8Mhz
#else
#warning Clock Frequency Not Defined
#endif

/* Global Constants */
/* Timers */
enum tmr16BitModules_et
{
    TIMER1      = 1
};

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void timer16BitISR(void);
void setup16BitTimerFull(enum tmr16BitModules_et eTmrModule, void(*callback)(), uint8_t ui8Prescaler, uint8_t ui8Postscaler);
void setup16BitTimer(enum tmr16BitModules_et eTmrModule, void(*callback)());
void set16BitTimer(enum tmr16BitModules_et eTmrModule, uint16_t ui16Value);

#endif /* end of corelib_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------