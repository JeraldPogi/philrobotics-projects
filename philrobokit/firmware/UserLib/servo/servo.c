//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	servo.c - Servo Control
// Description:	This is a driver for driving upto 8 Servos and assignable to any digital pins.
//				It uses one of the 8bit timers for generating the pulses
// Revision:   	v00.00.02
// Author:      Efren S. Cruzat II
//
// Dependencies:	corelib_8bit_timer.c/corelib_8bit_timer.h
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
// FW Version      	Date        	Author         	Description
// v00.00.01       	<date>    		<authorname>   	- Library Initial Release
// v00.00.02		20120711		ESCII			- Code Cleanup
//													- Enumerated servo modules
//***********************************************************************************
#include "servo.h"

/* Local Variables */
enum servoStates
{
	SERVO_PULSEON
	,SERVO_PULSEOFF
};

enum servoInfo
{
	SERVO_PIN
	,SERVO_PULSE
//	,SERVO_MINPULSE
//	,SERVO_MAXPULSE
//	,SERVO_MINANGLE
//	,SERVO_MAXANGLE
	,SERVO_SLOPE
	,NUMBEROFINFO
};

static uint8_t servo[NUMBEROFMODULES][NUMBEROFINFO] = {0};
	
static uint8_t sequenceCounter = 8;
static uint8_t servoState = SERVO_PULSEOFF;
static 
#ifndef S_SPLINT_S // Suppress SPLint Parse Errors
bit_t 
#else
uint8_t
#endif
kickStarted = 0;

/* Private Function Prototypes */
static void servoController();

/* Public Functions */
void setupServo(enum servoModules ServoMod, unsigned char ServoPin, signed char DefaultAngle, unsigned char MinPulseWidth, unsigned char MaxPulseWidth, signed char MinAngle, signed char MaxAngle)
{
	unsigned long TempBuffer;
	
	/* Initilize Parameters */
	servo[ServoMod][SERVO_PIN]		= ServoPin;
//	servo[ServoMod][SERVO_MINPULSE] = MinPulseWidth;
//	servo[ServoMod][SERVO_MAXPULSE] = MaxPulseWidth;
//	servo[ServoMod][SERVO_MINANGLE] = MinAngle;
//	servo[ServoMod][SERVO_MAXANGLE] = MaxAngle;

	/* Compute Servo Slope */
	TempBuffer = (((signed long)MaxPulseWidth - MinPulseWidth)*128);
	TempBuffer /= ((signed int)MaxAngle - MinAngle);
	servo[ServoMod][SERVO_SLOPE] = (unsigned char)TempBuffer;
	
	/* Compute Servo Pulse Width */
	servo[ServoMod][SERVO_PULSE] = (unsigned char)(((signed long)DefaultAngle*servo[ServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
	
	/* Initialize TMR2 for Servo Control */
	if(0 == kickStarted)
	{
		setup8BitTimerDef(TIMER2,servoController);
		setTimerValue(TIMER2,SERVO_MAX_PULSEWIDTH);									// set pulse on period (kickstart)
		kickStarted = 1;
	}	
}

void setupServoDef(enum servoModules ServoMod, unsigned char ServoPin, signed char DefaultAngle)
{
	setupServo(ServoMod, ServoPin, DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
}

void setupServoPort(signed char DefaultAngle)
{
	setupServo(SERV0,SERVO,DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
}

void setServoAngle(enum servoModules ServoMod, signed char servoAngle)
{
	servo[ServoMod][SERVO_PULSE] = (unsigned char)(((signed long)servoAngle*servo[ServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
}

void setServoPortAngle(signed char servoAngle)
{
	setServoAngle(SERV0,servoAngle);
}

/* Private Functions */
static void servoController()
{
	/* Servo State Machine */
	switch(servoState)
	{
		case SERVO_PULSEON:
		{
			setTimerValue(TIMER2,SERVO_MAX_PULSEWIDTH-servo[sequenceCounter][SERVO_PULSE]);	// set pulse off period
			setPinLow(servo[sequenceCounter][SERVO_PIN]);
			servoState = SERVO_PULSEOFF;
			break;
		}
		case SERVO_PULSEOFF:
		{
			/* Check Next Servo */
			if(sequenceCounter < 8)
			{
				sequenceCounter++;
			}
			else
			{
				sequenceCounter = 0;
			}			
			
			/* Check if Angle is pulse < min */
			if(servo[sequenceCounter][SERVO_PULSE] < SERVO_MIN_PULSEWIDTH)
			{
				/* skip servo module */
				servo[sequenceCounter][SERVO_PULSE] = 0;
				setTimerValue(TIMER2,SERVO_MAX_PULSEWIDTH);								// low for 2.5mS
				setPinLow(servo[sequenceCounter][SERVO_PIN]);
				servoState = SERVO_PULSEOFF;
			}
			else
			{
				setTimerValue(TIMER2,servo[sequenceCounter][SERVO_PULSE]);				// set pulse on period	
				setPinHigh(servo[sequenceCounter][SERVO_PIN]);				
				servoState = SERVO_PULSEON;
			}
			break;
		}
		default:	/* must not be reached */
		{
			setTimerValue(TIMER2,SERVO_MAX_PULSEWIDTH);									// low for 2.5mS
			sequenceCounter = 8;
			servoState = SERVO_PULSEOFF;
			break; 
		}
	}
}

/* end of servo.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	


	
	
