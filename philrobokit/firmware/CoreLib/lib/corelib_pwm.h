/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_pwm.h"                             |
* |:----          |:----                                        |
* |Description:   | This is a header file for the PWM library   |
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
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.01    |20120710   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130205   |ESCII              |Modified For Layered Architecture  |
* |v00.02.00    |20130514   |ESCII              |Code Formatted, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_PWM_H__
#define __PH_PWM_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_pwm_test_stub.h"
#else
#include "hal_pwm.h"
#endif

/* User Configuration Definitions */
/* none */

/* Global Constants */
/* PWMs */
enum PWMModules_et
{
    PWM0,
    PWM1
};

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void setupPWM(enum PWMModules_et ePWM_Module, uint16_t ui16Frequency, uint16_t ui16DutyCycle);
void setPWMFrequency(uint16_t ui16Frequency);
void setPWMDuty(enum PWMModules_et ePWM_Module, uint16_t ui16DutyCycle);
void removePWM(enum PWMModules_et ePWM_Module);

#endif/* end of corelib_pwm.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
