//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	servo.h - Servo Control Header File
// Description:	
// Revision:    v00.00.03
// Author:      Efren S. Cruzat II
//
// Dependencies:
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//***********************************************************************************
// FW Version      Date        Author         Description
// v00.00.01       <date>    <authorname>   - Library Initial Release
// v00.00.02		20120711	ESCII		- Code Cleanup
//											- Enumerated servo modules
// v00.00.03		20120712	ESCII		- Modified 8bit timer library include link
//***********************************************************************************
#ifndef __PH_SERVO_H__
#define __PH_SERVO_H__

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "htc_16f87xa.h"
	#endif
#endif

#include <PhilRoboKit_CoreLib_Macro.h>
#include <lib\CoreLib_8bit_timer.h>

#define SERVO_IDLE_PERIOD			2000	// 20mS

/* Configuration for HTX900 Servo */
#define SERVO_MIN_PULSEWIDTH		50		// 0.5mS		
#define SERVO_MAX_PULSEWIDTH		250		// 2.5mS		
#define SERVO_DEFAULT_PULSEWIDTH	150		// 1.5mS	
#define SERVO_MIN_ANGLEPOSITION		(-90)
#define SERVO_MAX_ANGLEPOSITION		(+90)
#define SERVO_DEFAULT_ANGLEPOSITION	(0)

#define SERVO_PULSE_OFFSET			SERVO_DEFAULT_PULSEWIDTH

enum servoModules
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

/* Public Function Prototypes */
void setupServo(enum servoModules ServoMod, unsigned char ServoPin, signed char DefaultAngle, unsigned char MinPulseWidth, unsigned char MaxPulseWidth, signed char MinAngle, signed char MaxAngle);
void setupServoDef(enum servoModules ServoMod, unsigned char ServoPin, signed char DefaultAngle);
void setupServoPort(signed char DefaultAngle);
void setServoAngle(enum servoModules ServoMod, signed char servoAngle);
void setServoPortAngle(signed char servoAngle);
	
#endif /* end of servo.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	