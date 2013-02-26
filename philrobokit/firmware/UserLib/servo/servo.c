/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "servo.c"                                   |
* |:----          |:----                                        |
* |Description:   | This is a library for driving servo motors  |
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
static enum servoStates
{
	SERVO_PULSEON
	,SERVO_PULSEOFF
};

static enum servoInfo
{
	SERVO_PIN
	,SERVO_PULSE
	,SERVO_SLOPE
	,NUMBEROFINFO
};

/* Local Variables */
static uint8_t servo[NUMBEROFMODULES][NUMBEROFINFO] = {0};/*@null@*/
	
static uint8_t sequenceCounter = 8;
static uint8_t servoState = SERVO_PULSEOFF;
#ifdef S_SPLINT_S // Suppress SPLint Parse Errors 
    #define bool_t  bool
#endif  
static bool_t kickStarted = false;

/* Private Function Prototypes */
static void servoController();

/* Public Functions */
/*******************************************************************************//**
* \brief Initialize any pin for driving a servo (Full Module Configuration)
*
* > This is a function called for full initialisation of any digital pin 
* > to be used for driving a Servo.
*
* > <BR>
* > **Syntax:**<BR>
* >     setupServoFull(module, pin, angle, min_pulse, max_pulse, min_angle, max_angle) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - servo module assignment, SERV0, SERV1, SERV2, SERV3, SERV4, SERV5, SERV6, SERV7    <BR>
* >     pin - Anito pin number assignment                                                           <BR>
* >     angle - desired default angle in 1 degree resolution                                        <BR>
* >     min_pulse - min servo input pulse in 10mS resolution                                        <BR>
* >     max_pulse - max servo input pulse in 10mS resolution                                        <BR>
* >     min_angle - min servo angle in 1 degree resolution, center position is 0degree              <BR>
* >     max_angle - min servo angle in 1 degree resolution, center position is 0degree
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupServoFull(enum servoModules ServoMod, uint8_t ServoPin, int8_t DefaultAngle, uint8_t MinPulseWidth, uint8_t MaxPulseWidth, int8_t MinAngle, int8_t MaxAngle)
{
	uint32_t TempBuffer;
	
	/* Initilize Parameters */
	servo[ServoMod][SERVO_PIN]		= ServoPin;

	/* Compute Servo Slope */
	TempBuffer = (((uint32_t)MaxPulseWidth - MinPulseWidth)*128);
	TempBuffer /= ((int8_t)MaxAngle - MinAngle);
	servo[ServoMod][SERVO_SLOPE] = (uint8_t)TempBuffer;
	
	/* Compute Servo Pulse Width */
	servo[ServoMod][SERVO_PULSE] = (uint8_t)(((int32_t)DefaultAngle*servo[ServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
	
	/* Initialize TMR2 for Servo Control */
	if(false == kickStarted)
	{
		setup8BitTimer(SERVO_TIMER, servoController);
		setTimer(SERVO_TIMER, SERVO_MAX_PULSEWIDTH);								// set pulse on period (kickstart)
		kickStarted = true;
	}	
}

/*******************************************************************************//**
* \brief Initialize any pin for driving a servo
*
* > This is a function called for initializing any digital pin to be used for 
* > driving a Servo.
*
* > <BR>
* > **Syntax:**<BR>
* >     setupServoDef(module, pin, angle) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - servo module assignment, SERV0, SERV1, SERV2, SERV3, SERV4, SERV5, SERV6, SERV7    <BR>
* >     pin - Anito pin number assignment                                                           <BR>
* >     angle - desired "default" angle in 1 degree resolution, center position is 0degree
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupServo(enum servoModules ServoMod, uint8_t ServoPin, int8_t DefaultAngle)
{
	setupServoFull(ServoMod, ServoPin, DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
}

/*******************************************************************************//**
* \brief Initialize the Servo (Ready to Fly Port) with a default angle
*
* > This is a function called for initializing the Servo Port
*
* > <BR>
* > **Syntax:**<BR>
* >     setupServoPort(angle) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     angle - desired "default" angle in 1 degree resolution, center position is 0degree
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupServoPort(int8_t DefaultAngle)
{
	setupServoFull(SERV0,SERVO,DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
}

/*******************************************************************************//**
* \brief Set the servo module angle
*
* > This function is called to change the angle of a servo module assigned to a pin
*
* > <BR>
* > **Syntax:**<BR>
* >     setServoAngle(module, angle) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - servo module assignment, SERV0, SERV1, SERV2, SERV3, SERV4, SERV5, SERV6, SERV7
* >     angle - desired angle in 1 degree resolution, center position is 0degree
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setServoAngle(enum servoModules ServoMod, int8_t servoAngle)
{
	servo[ServoMod][SERVO_PULSE] = (uint8_t)(((int32_t)servoAngle*servo[ServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
}

/*******************************************************************************//**
* \brief Set the servo port angle
*
* > This function is called to change the servo port angle
*
* > <BR>
* > **Syntax:**<BR>
* >     setServoPortAngle(angle) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     angle - desired angle in 1 degree resolution, center position is 0degree
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setServoPortAngle(int8_t servoAngle)
{
	setServoAngle(SERV0,servoAngle);
}

/* Private Functions */
/*******************************************************************************//**
* \brief Servo Control Mechanism
*
* > This is an interrupt callback function which handles the sequencing of servo 
* > pulses. It uses the 8bit timer module (TMR2) as timebase.
*
* > <BR>
* > **Syntax:**<BR>
* >     servoController()
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
			setTimer(SERVO_TIMER, (SERVO_MAX_PULSEWIDTH-servo[sequenceCounter][SERVO_PULSE]));  // set pulse off period
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
				setTimer(SERVO_TIMER, SERVO_MAX_PULSEWIDTH);							        // low for 2.5mS
				clrPin(servo[sequenceCounter][SERVO_PIN]);
				servoState = SERVO_PULSEOFF;
			}
			else
			{
				setTimer(SERVO_TIMER, servo[sequenceCounter][SERVO_PULSE]);				        // set pulse on period	
				setPin(servo[sequenceCounter][SERVO_PIN]);				
				servoState = SERVO_PULSEON;
			}
			break;
		}
		default:	/* must not be reached */
		{
			setTimer(SERVO_TIMER, SERVO_MAX_PULSEWIDTH);								        // low for 2.5mS
			sequenceCounter = 8;
			servoState = SERVO_PULSEOFF;
			break; 
		}
	}
}

/* end of servo.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	
	
