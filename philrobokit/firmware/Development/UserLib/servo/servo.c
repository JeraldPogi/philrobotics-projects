/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "servo.c"                                   |
* |:----          |:----                                        |
* |Description:   | This is a library for using the 8 bit timer functions |
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
* |v00.00.02    |20120711   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130219   |ESCII              |Modified For Layered Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "servo.h"

/* Local Constants */
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

/* Local Variables */
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
/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupServo(/*enum servoModules*/uint8_t ServoMod, uchar_t ServoPin, char_t DefaultAngle, uchar_t MinPulseWidth, uchar_t MaxPulseWidth, char_t MinAngle, char_t MaxAngle)
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
	servo[ServoMod][SERVO_SLOPE] = (uchar_t)TempBuffer;
	
	/* Compute Servo Pulse Width */
	servo[ServoMod][SERVO_PULSE] = (uchar_t)(((signed long)DefaultAngle*servo[ServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
	
	/* Initialize TMR2 for Servo Control */
	if(0 == kickStarted)
	{
		setup8BitTimer(TIMER2,servoController);
		setTimer(TIMER2,SERVO_MAX_PULSEWIDTH);									// set pulse on period (kickstart)
		kickStarted = 1;
	}	
}

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupServoDef(/*enum servoModules*/uint8_t ServoMod, uchar_t ServoPin, char_t DefaultAngle)
{
	setupServo(ServoMod, ServoPin, DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
}

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupServoPort(char_t DefaultAngle)
{
	setupServo(SERV0,SERVO,DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
}

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setServoAngle(/*enum servoModules*/uint8_t ServoMod, char_t servoAngle)
{
	servo[ServoMod][SERVO_PULSE] = (uchar_t)(((signed long)servoAngle*servo[ServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
}

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setServoPortAngle(char_t servoAngle)
{
	setServoAngle(SERV0,servoAngle);
}

/* Private Functions */
/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void servoController()
{
	/* Servo State Machine */
	switch(servoState)
	{
		case SERVO_PULSEON:
		{
			setTimer(TIMER2,SERVO_MAX_PULSEWIDTH-servo[sequenceCounter][SERVO_PULSE]);	// set pulse off period
			clrPin(servo[sequenceCounter][SERVO_PIN]);
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
				setTimer(TIMER2,SERVO_MAX_PULSEWIDTH);								// low for 2.5mS
				clrPin(servo[sequenceCounter][SERVO_PIN]);
				servoState = SERVO_PULSEOFF;
			}
			else
			{
				setTimer(TIMER2,servo[sequenceCounter][SERVO_PULSE]);				// set pulse on period	
				setPin(servo[sequenceCounter][SERVO_PIN]);				
				servoState = SERVO_PULSEON;
			}
			break;
		}
		default:	/* must not be reached */
		{
			setTimer(TIMER2,SERVO_MAX_PULSEWIDTH);									// low for 2.5mS
			sequenceCounter = 8;
			servoState = SERVO_PULSEOFF;
			break; 
		}
	}
}

/* end of servo.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	
	
