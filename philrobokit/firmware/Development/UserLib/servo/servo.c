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
static enum ServoStates_e
{
	SERVO_PULSEON
	,SERVO_PULSEOFF
};

static enum ServoInfo_e
{
	SERVO_PIN
	,SERVO_PULSE
	,SERVO_SLOPE
	,NUMBEROFINFO
};

/* Local Variables */
static uint8_t aui8Servo[NUMBEROFMODULES][NUMBEROFINFO] = {0};/*@null@*/
	
static uint8_t ui8SequenceCounter = 8;
static uint8_t ui8ServoState = SERVO_PULSEOFF;
#ifdef S_SPLINT_S // Suppress SPLint Parse Errors 
    #define bool_t  bool
#endif  
static bool_t blKickStarted = FALSE;

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
void setupServoFull(enum ServoModules_e eServoMod, uint8_t ui8ServoPin, int8_t i8DefaultAngle, uint8_t ui8MinPulseWidth, uint8_t ui8MaxPulseWidth, int8_t i8MinAngle, int8_t i8MaxAngle)
{
	uint32_t ui32TempBuffer;
	
	/* Initilize Parameters */
	aui8Servo[eServoMod][SERVO_PIN]		= ui8ServoPin;

	/* Compute Servo Slope */
	ui32TempBuffer = (((uint32_t)ui8MaxPulseWidth - ui8MinPulseWidth)*128);
	ui32TempBuffer /= ((int8_t)i8MaxAngle - i8MinAngle);
	aui8Servo[eServoMod][SERVO_SLOPE] = (uint8_t)ui32TempBuffer;
	
	/* Compute Servo Pulse Width */
	aui8Servo[eServoMod][SERVO_PULSE] = (uint8_t)(((int32_t)i8DefaultAngle*aui8Servo[eServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
	
	/* Initialize TMR2 for Servo Control */
	if(FALSE == blKickStarted)
	{
		setup8BitTimer(SERVO_TIMER, servoController);
		set8BitTimer(SERVO_TIMER, SERVO_MAX_PULSEWIDTH);								// set pulse on period (kickstart)
		blKickStarted = TRUE;
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
void setupServo(enum ServoModules_e eServoMod, uint8_t ui8ServoPin, int8_t i8DefaultAngle)
{
	setupServoFull(eServoMod, ui8ServoPin, i8DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
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
void setupServoPort(int8_t i8DefaultAngle)
{
	setupServoFull(SERV0,SERVO,i8DefaultAngle, SERVO_MIN_PULSEWIDTH, SERVO_MAX_PULSEWIDTH, SERVO_MIN_ANGLEPOSITION, SERVO_MAX_ANGLEPOSITION);
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
void setServoAngle(enum ServoModules_e eServoMod, int8_t i8ServoAngle)
{
	aui8Servo[eServoMod][SERVO_PULSE] = (uint8_t)(((int32_t)i8ServoAngle*aui8Servo[eServoMod][SERVO_SLOPE]) / 128 + SERVO_PULSE_OFFSET);
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
void setServoPortAngle(int8_t i8ServoAngle)
{
	setServoAngle(SERV0,i8ServoAngle);
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
	switch(ui8ServoState)
	{
		case SERVO_PULSEON:
		{
			set8BitTimer(SERVO_TIMER, (SERVO_MAX_PULSEWIDTH-aui8Servo[ui8SequenceCounter][SERVO_PULSE]));  // set pulse off period
			clrPin(aui8Servo[ui8SequenceCounter][SERVO_PIN]);
			ui8ServoState = SERVO_PULSEOFF;
			break;
		}
		case SERVO_PULSEOFF:
		{
			/* Check Next Servo */
			if(ui8SequenceCounter < 8)
			{
				ui8SequenceCounter++;
			}
			else
			{
				ui8SequenceCounter = 0;
			}			
			
			/* Check if Angle is pulse < min */
			if(aui8Servo[ui8SequenceCounter][SERVO_PULSE] < SERVO_MIN_PULSEWIDTH)
			{
				/* skip aui8Servo module */
				aui8Servo[ui8SequenceCounter][SERVO_PULSE] = 0;
				set8BitTimer(SERVO_TIMER, SERVO_MAX_PULSEWIDTH);							        // low for 2.5mS
				clrPin(aui8Servo[ui8SequenceCounter][SERVO_PIN]);
				ui8ServoState = SERVO_PULSEOFF;
			}
			else
			{
				set8BitTimer(SERVO_TIMER, aui8Servo[ui8SequenceCounter][SERVO_PULSE]);				        // set pulse on period	
				setPin(aui8Servo[ui8SequenceCounter][SERVO_PIN]);				
				ui8ServoState = SERVO_PULSEON;
			}
			break;
		}
		default:	/* must not be reached */
		{
			set8BitTimer(SERVO_TIMER, SERVO_MAX_PULSEWIDTH);								        // low for 2.5mS
			ui8SequenceCounter = 8;
			ui8ServoState = SERVO_PULSEOFF;
			break; 
		}
	}
}

/* end of servo.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	
	
