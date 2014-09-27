/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Mobot_Lib.c"                                                       |
* |:----          |:----                                                                |
* |Description:   | Main Library for differential wheel driven Mobile Robots (Mobots)
*                       This library should work on Arduino, Pinguino, and PhilRobokit  |
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
* |v00.00.02    |20101119   |ESCII              |Library Initial Release            |
* |v00.01.01    |20120118   |ESCII              |Last known working port(Pinguino)  |
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "Mobot_Lib.h"

#if defined(__PINGUINO__)
#include <Mobot_Lib/PBotGlobals.c>
#include <Mobot_Lib/LowLevelMobot.c>
#include <Mobot_Lib/DProtocol.c>
#include <Mobot_Lib/Telemetry.c>
#endif

// ************************************************************************
// *** Start of PBotClass *************************************************
// ************************************************************************

// *** private variables **********************************************
static uint8_t strDProtID[4];

// *** private functions **********************************************
static void startDProtocol(bool_t blEnableRemoteControl, bool_t blEnableTelemetry, uint32_t ui32DBaudRate);

// PBot Begin with D-Protocol
void setupPBotUART(uint8_t ui8Mode, bool_t blObstaclePolarity, bool_t blLinePolarity, bool_t blEnableTelemetry, uint32_t ui32DBaudRate)
{
    bool_t blEnableRemoteControl = FALSE;

    if(ui8Mode == REMOTECONTROL)
    {
        blEnableRemoteControl = TRUE;
    }

    setupPBot(ui8Mode, blObstaclePolarity, blLinePolarity);
    startDProtocol(blEnableRemoteControl, blEnableTelemetry, ui32DBaudRate);
}

// Basic PBot Begin
void setupPBot(uint8_t ui8Mode, bool_t blObstaclePolarity, bool_t blLinePolarity)
{
    blObstacleSensorPolarity = !blObstaclePolarity;
    blLineSensorPolarity = blLinePolarity;
    // Initilize Collision Sensor Inputs
    makeInput(KI_RIGHT_WALLSENSOR);
    makeInput(KI_CENTER_WALLSENSOR);
    makeInput(KI_LEFT_WALLSENSOR);
    // Initilize Line Sensor Inputs
    makeInput(KI_RIGHT_LINESENSOR);
    makeInput(KI_CENTER_LINESENSOR);
    makeInput(KI_LEFT_LINESENSOR);
    // Initilize Motor Control Outputs and Initially Low
    clrPin(KI_RIGHTMOTOR_DIRCTRL);
    clrPin(KI_RIGHTMOTOR_RUNCTRL);
    clrPin(KI_LEFTMOTOR_RUNCTRL);
    clrPin(KI_LEFTMOTOR_DIRCTRL);
    makeOutput(KI_RIGHTMOTOR_DIRCTRL);
    makeOutput(KI_RIGHTMOTOR_RUNCTRL);
    makeOutput(KI_LEFTMOTOR_RUNCTRL);
    makeOutput(KI_LEFTMOTOR_DIRCTRL);
#if (MOTOR_TYPE == USE_DC_FIX_SPEED)
    /* Do Nothing */
#elif (MOTOR_TYPE == USE_DC_VAR_SPEED)
    /* Initialize PWM */
    setupSoftDAC(LEFT_MOTOR, KI_LEFTMOTOR_RUNCTRL, 0);
    setupSoftDAC(RIGHT_MOTOR, KI_RIGHTMOTOR_RUNCTRL, 0);
#elif (MOTOR_TYPE == USE_SERVO)
#else
#error undefined MOTOR_TYPE
#endif

#if(MOBOT_PLATFORM == USE_PHILROBOKIT)
	removeADC();
#endif
}

// *** High Level PBot Control Functions **********************************
void moveForward(uint8_t ui8Speed)
{
    runRightMotor(ui8Speed, KBL_FORWARD_DIR);
    runLeftMotor(ui8Speed, KBL_FORWARD_DIR);
}

void moveBackward(uint8_t ui8Speed)
{
    runRightMotor(ui8Speed, KBL_REVERSE_DIR);
    runLeftMotor(ui8Speed, KBL_REVERSE_DIR);
}

void turnLeft(uint8_t ui8Speed)
{
    runRightMotor(KB_FULLSPEED, KBL_FORWARD_DIR);
    runLeftMotor(KB_FULLSPEED-ui8Speed, KBL_FORWARD_DIR);
}

void turnRight(uint8_t ui8Speed)
{
    runRightMotor(KB_FULLSPEED-ui8Speed, KBL_FORWARD_DIR);
    runLeftMotor(KB_FULLSPEED, KBL_FORWARD_DIR);
}

void rotateLeft(uint8_t ui8Speed)
{
    runRightMotor(ui8Speed, KBL_FORWARD_DIR);
    runLeftMotor(ui8Speed, KBL_REVERSE_DIR);
}

void rotateRight(uint8_t ui8Speed)
{
    runRightMotor(ui8Speed, KBL_REVERSE_DIR);
    runLeftMotor(ui8Speed, KBL_FORWARD_DIR);
}

void stopMotors(void)
{
    stopRightMotor();
    stopLeftMotor();
}

// *** Object / Wall Sensor Detection *************************************
uint8_t detectObstacle(void)
{
    pollWallSensors(&blObstacleSensorPolarity);

    // Front Near
    if(blWallDetectedonLeft && blWallDetectedonCenter && blWallDetectedonRight)
    {
        ui8ObstacleLocation = KI_OBJECT_NEARFRONT;
    }
    // Left-Center
    else if(blWallDetectedonLeft && blWallDetectedonCenter)
    {
        ui8ObstacleLocation = KI_OBJECT_LEFTCENTER;
    }
    // Right-Center
    else if(blWallDetectedonCenter && blWallDetectedonRight)
    {
        ui8ObstacleLocation = KI_OBJECT_RIGHTCENTER;
    }
    // Both Sides
    else if(blWallDetectedonLeft && blWallDetectedonRight)
    {
        ui8ObstacleLocation = KI_OBJECT_BOTHSIDES;
    }
    // Front Far
    else if(blWallDetectedonCenter)
    {
        ui8ObstacleLocation = KI_OBJECT_FARFRONT;
    }
    // Leftmost
    else if(blWallDetectedonLeft)
    {
        ui8ObstacleLocation = KI_OBJECT_LEFT;
    }
    // Rightmost
    else if(blWallDetectedonRight)
    {
        ui8ObstacleLocation = KI_OBJECT_RIGHT;
    }
    // No Obstacle
    else
    {
        ui8ObstacleLocation = KI_NO_OBSTACLE;
    }

    return  ui8ObstacleLocation;
}

// *** Line Sensor Detection **********************************************
uint8_t detectLine(void)
{
    pollLineSensors(&blLineSensorPolarity);

    // Center
    if(blLineDetectedonLeft && blLineDetectedonCenter && blLineDetectedonRight)
    {
        ui8LineLocation = KI_OVER_LINE;
    }
    // Left-Center
    else if(blLineDetectedonLeft && blLineDetectedonCenter)
    {
        ui8LineLocation = KI_LINE_LEFTCENTER;
    }
    // Right-Center
    else if(blLineDetectedonCenter && blLineDetectedonRight)
    {
        ui8LineLocation = KI_LINE_RIGHTCENTER;
    }
    // Leftmost
    else if(blLineDetectedonLeft)
    {
        ui8LineLocation = KI_LINE_LEFT;
    }
    // Rightmost
    else if(blLineDetectedonRight)
    {
        ui8LineLocation = KI_LINE_RIGHT;
    }
    // Center
    else if(blLineDetectedonCenter)
    {
        ui8LineLocation = KI_LINE_CENTER;
    }
    // No Obstacle
    else
    {
        ui8LineLocation = KI_NO_LINE;
    }

    return  ui8LineLocation;
}

// *** Telemetry Methods **************************************************
static void startDProtocol(bool_t blEnableRemoteControl, bool_t blEnableTelemetry, uint32_t ui32DBaudRate)
{
    if(blEnableRemoteControl)
    {
        setupTelemetryID(ui32DBaudRate, strDProtID/*, this*/);
    }

#if !CONFIG_DISABLE_TELEMETRY
    else if(blEnableTelemetry)
    {
        setupTelemetryID(ui32DBaudRate, strDProtID/*, this*/);
    }

#endif
}

#if 0
// *** Remote Control Methods *********************************************
void parseIncomingChar(void)
{
    uint8_t iuint8_tCounter;

    if(blDPacketAvailable)
    {
        for(iuint8_tCounter = 0; iuint8_tCounter < 4; iuint8_tCounter++)
        {
            strDProtocolID[iuint8_tCounter] = PBotControl.strDProtocolID[iuint8_tCounter];
        }

        for(iuint8_tCounter = 0; iuint8_tCounter < 5; iuint8_tCounter++)
        {
            strCommandCode[iuint8_tCounter] = PBotControl.strCommandCode[iuint8_tCounter];
        }

        for(iuint8_tCounter = 0; iuint8_tCounter < 7; iuint8_tCounter++)
        {
            strParam1[iuint8_tCounter] = PBotControl.strParam1[iuint8_tCounter];
        }

        for(iuint8_tCounter = 0; iuint8_tCounter < 7; iuint8_tCounter++)
        {
            strParam2[iuint8_tCounter] = PBotControl.strParam2[iuint8_tCounter];
        }

        blDPacketAvailable = FALSE;
        blDPacketReady = TRUE;
    }

    blBufferOverflow = PBotControl.blBufferOverflow;
    blTerminationError = PBotControl.blTerminationError;
}
#endif

// *** To do... ***********************************************************
// Issues:
// <none reported yet>
//
// Enhancements:
// 1. code for tacho measurements
//
// ************************************************************************

// ************************************************************************
// End of Mobot_Lib.c
// ************************************************************************
