/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_gpio.h"                            |
* |:----          |:----                                        |
* |Description:   | General Purpose Input/Output Hardware Abstraction Layer Header File for PIC |
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
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130405   |ESCII              |Separated module to HAL and Corelib|
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __CORELIB_GPIO_H__
#define __CORELIB_GPIO_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_gpio_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#include "hal_gpio.h"
#endif

/* User Configuration Definitions */
/* Active Ports */
#define PORTA_ACTIVE
#define PORTB_ACTIVE
#define PORTC_ACTIVE
#define PORTD_ACTIVE
#define PORTE_ACTIVE

/* Pin Default Values and Direction */
#ifndef S_SPLINT_S                      // Suppress SPLint Parse Errors
/* esc.comment: not ANSI C Compliant, change to hex notation */
#define PORTA_DIR_DEF                   (0b00011111)
#define PORTA_OUT_DEF                   (0b00011111)

#define PORTB_DIR_DEF                   (0b00000000)
#define PORTB_OUT_DEF                   (0b00000000)

#define PORTC_DIR_DEF                   (0b10000000)
#define PORTC_OUT_DEF                   (0b10000000)

#define PORTD_DIR_DEF                   (0b00001100)
#define PORTD_OUT_DEF                   (0b00001100)

#define PORTE_DIR_DEF                   (0b00000111)
#define PORTE_OUT_DEF                   (0b00000111)

#else
#define PORTA_DIR_DEF                   (0)
#define PORTA_OUT_DEF                   (0)

#define PORTB_DIR_DEF                   (0)
#define PORTB_OUT_DEF                   (0)

#define PORTC_DIR_DEF                   (0)
#define PORTC_OUT_DEF                   (0)

#define PORTD_DIR_DEF                   (0)
#define PORTD_OUT_DEF                   (0)

#define PORTE_DIR_DEF                   (0)
#define PORTE_OUT_DEF                   (0)
#endif

/* Global Constants */
/* none */

/* Macro and Configuration Definitions */
/* Pin Direction */
#define makeInput(pin)                  configPin(pin, INPUT)
#define makeOutput(pin)                 configPin(pin, OUTPUT)

/* Input Pins */
#define getPinState(pin)                checkPinState(pin)

/* Output Pins */
#define setPin(pin)                     changePinState(pin, SET_PIN)
#define clrPin(pin)                     changePinState(pin, CLR_PIN)
#define togglePin(pin)                  changePinState(pin, TOGGLE_PIN)

/* Public Function Prototypes */
void setupGpio(void);

#endif/* end of corelib_gpio.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
