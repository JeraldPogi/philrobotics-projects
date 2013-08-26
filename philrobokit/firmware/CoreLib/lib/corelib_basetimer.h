/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_basetimer.h"                       |
* |:----          |:----                                        |
* |Description:   | Anito Base Timer Application                |
* |Revision:      | v01.01.00                                   |
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
* |v01.00.00    |201211xx   |Giancarlo A.       |Library Initial Release            |
* |v01.01.00    |20130514   |ESCII              |Code Formatted, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __APP_COMMON_TIMER_H__
#define __APP_COMMON_TIMER_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_basetimer_test_stub.h"
#else
#include "PhilRoboKit_CoreLib_Macro.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"
#include "hal_timer.h"
#endif

/* User Configuration Definitions */
/* none */

/* Global Constants */
/* none */

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
uint16_t getUs(void);
uint16_t getElapsedUs(uint16_t ui16TimeUs);

uint16_t getMs(void);
uint16_t getElapsedMs(uint16_t ui16TimeMs);

#ifdef __TIMER_SEC__
uint16_t getSec(void);
uint16_t getElapsedSec(uint16_t ui16TimeSec);
#endif

#endif/* end of corelib_basetimer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------