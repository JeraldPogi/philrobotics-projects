/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Config_PhilRobokit.h"                                              |
* |:----          |:----                                                                |
* |Description:   | Configuration file for PhilRobokit Platform Compatibility           |
* |Revision:      | v00.02.01                                                           |
* |Author:        | Efren S. Cruzat II                                                  |
* |               |                                                                     |
* |Dependencies:  |                                                                     |
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
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef Config_PhilRobokit_h
#define Config_PhilRobokit_h

#include "hal_uart.h"
#include "corelib_uart.h"
#include "hal_gpio.h"
#include "corelib_gpio.h"

// PhilRobokit  Signal Name
// Pin
// 2            Collision Sensor 3         (Right)
// 3            Collision Sensor 2         (Center)
// 4            Collision Sensor 1         (Left)
#define KI_RIGHT_WALLSENSOR                 D2
#define KI_CENTER_WALLSENSOR                D3
#define KI_LEFT_WALLSENSOR                  D4

// 7            Line Sensor 1               (Right)
// 6            Line Sensor 2               (Center)
// 5            Line Sensor 3               (Left)
#define KI_RIGHT_LINESENSOR                 D5
#define KI_CENTER_LINESENSOR                D6
#define KI_LEFT_LINESENSOR                  D7

// 8            Motor 1 Direction Control   (Right Motor)
// 9            Motor 1 Run Control         (Right Motor)
// 10           Motor 2 Run Control         (Left Motor)
// 11           Motor 2 Direction Control   (Left Motor)
#define KI_RIGHTMOTOR_DIRCTRL               D8
#define KI_RIGHTMOTOR_RUNCTRL               D9
#define KI_LEFTMOTOR_RUNCTRL                D10
#define KI_LEFTMOTOR_DIRCTRL                D11

// 12           Right Wheel Tachometer
// 13           Left Wheel Tachometer
#define KI_RIGHTWHEEL_TACHO                 D12
#define KI_LEFTWHEEL_TACHO                  D13

/* Analog Output */
#if(MOTOR_TYPE == USE_DC_VAR_SPEED)
#include "soft_dac.h"

#define LEFT_MOTOR                          (SDAC0)
#define RIGHT_MOTOR                         (SDAC1)

#endif

/* Servo Pin */
#if(MOTOR_TYPE == USE_SERVO)
#include "Servo.h"

#define LEFT_SERVO                          (0)
#define RIGHT_SERVO                         (1)

#endif

#endif