/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_dac.h"                             |
* |:----          |:----                                        |
* |Description:   | This is a header file for the DAC library   |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |v00.00.01    |20130205   |ESCII              |Library Initial Release    |
* |v00.01.00    |20130514   |ESCII              |Code Formatted, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_DAC_H__
#define __PH_DAC_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_pwm_test_stub.h"
#else
#include "PhilRoboKit_CoreLib_Macro.h"
#include "corelib_pwm.h"
#endif

/* User Configuration Definitions */
/* none */

/* Global Constants */
#define DAC0                            PWM0
#define DAC1                            PWM1

#define K_DAC_DEFAULT_FREQ              122         // 1.22kHz

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void setDAC(uint8_t ui8DAC_Module, uint16_t ui16Value);
void removeDAC(uint8_t ui8DAC_Module);

#endif /* end of corelib_dac.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------