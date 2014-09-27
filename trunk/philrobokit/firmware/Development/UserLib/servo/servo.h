/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "servo.h"                                   |
* |:----          |:----                                        |
* |Description:   | This is a header file of the servo driver   |
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
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.02    |20120711   |ESCII              |Library Initial Release            |
* |v00.00.03    |20120712   |ESCII              |Modified 8bit timer library include link |
* |v00.01.00    |20130219   |ESCII              |Modified For Layered Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_SERVO_H__
#define __PH_SERVO_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
#include <corelib_8bit_timer.h>
#include <hal_8bit_timer.h>

/* User Configuration Definitions */
#define SERVO_TIMER                 TIMER2
#define SERVO_IDLE_PERIOD			2000	// 20mS

    /* Configuration for Generic Servo */
#define SERVO_MIN_PULSEWIDTH		50		// 0.5mS		
#define SERVO_MAX_PULSEWIDTH		250		// 2.5mS		
#define SERVO_DEFAULT_PULSEWIDTH	150		// 1.5mS	
#define SERVO_MIN_ANGLEPOSITION		(-90)
#define SERVO_MAX_ANGLEPOSITION		(+90)
#define SERVO_DEFAULT_ANGLEPOSITION	(0)

#define SERVO_PULSE_OFFSET			SERVO_DEFAULT_PULSEWIDTH

/* Global Constants */
enum ServoModules_e
{
	SERV0
	,SERV1
	,SERV2
	,SERV3
	,SERV4
	,SERV5
	,SERV6
	,SERV7
	,NUMBEROFMODULES
};
    
/* Macro and Configuration Definitions */
#ifdef PHILROBOKIT_LITE
#define removeSERVOOutputPin(pin)						inline_makeInput(pin)
#define configSERVOOutputPin(pin)						inline_makeOutput(pin)
#define setServoPin(pin)								inline_setPin(pin)
#define clrServoPin(pin)								inline_clrPin(pin)

#else
#define removeSERVOOutputPin(pin)						makeInput(pin)
#define configSERVOOutputPin(pin)						makeOutput(pin)
#define setServoPin(pin)								setPin(pin)
#define clrServoPin(pin)								clrPin(pin)

#endif

#define setupSERVOTimer(tmr_module,isr_pointer)			setup8BitTimer(tmr_module,isr_pointer)
#define setSERVOTimer(tmr_timer,value)					set8BitTimer(tmr_timer,value)
    
/* Public Function Prototypes */
void setupServo(enum ServoModules_e eServoMod, uint8_t ui8ServoPin, int8_t i8DefaultAngle);
void setupServoPort(int8_t i8DefaultAngle);
void setupServoFull(enum ServoModules_e eServoMod, uint8_t ui8ServoPin, int8_t i8DefaultAngle, uint8_t ui8MinPulseWidth, uint8_t ui8MaxPulseWidth, int8_t i8MinAngle, int8_t i8MaxAngle);
void setServoAngle(enum ServoModules_e eServoMod, int8_t i8ServoAngle);
void setServoPortAngle(int8_t i8ServoAngle);
	
#endif /* end of servo.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	