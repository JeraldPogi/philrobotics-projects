/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Mobot_Lib.h"                                                       |
* |:----          |:----                                                                |
* |Description:   | Main Library for differential wheel driven Mobile Robots (Mobots)   |
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

#ifndef PBot_h
#define PBot_h

#include "Config_Global.h"
#include "PBotGlobals.h"
#include "LowLevelMobot.h"
#include "DProtocol.h"
#include "Telemetry.h"

// *** User Friendly Keywords ***
// P-Bot Modes
#define SUMO                   0
#define LINETRACKING           1
#define MICROMOUSE             2
#define REMOTECONTROL          3
#define WHEELBALANCE           4
#define VACUUMCLEANER          5

// Line/Wall Sensor Polarity
#define WHITE                  KBL_WHITE
#define BLACK                  KBL_BLACK

// Motor Predefined Speeds
#define FULLSPEED              KB_FULLSPEED
#define HIGHSPEED              KB_HIGHSPEED
#define MIDSPEED               KB_MIDSPEED
#define LOWSPEED               KB_LOWSPEED

// Motor Spin Direction
#define FORWARD                KBL_FORWARD_DIR
#define REVERSE                KBL_REVERSE_DIR

// Obstacle Input States
#define NO_OBSTACLE            KI_NO_OBSTACLE
#define OBJECT_LEFT            KI_OBJECT_LEFT
#define OBJECT_LEFTCENTER      KI_OBJECT_LEFTCENTER
#define OBJECT_RIGHT           KI_OBJECT_RIGHT
#define OBJECT_RIGHTCENTER     KI_OBJECT_RIGHTCENTER
#define OBJECT_FARFRONT        KI_OBJECT_FARFRONT
#define OBJECT_NEARFRONT       KI_OBJECT_NEARFRONT
#define OBJECT_BOTHSIDES       KI_OBJECT_BOTHSIDES

// Line Input States
#define NO_LINE                KI_NO_LINE
#define LINE_LEFT              KI_LINE_LEFT
#define LINE_LEFTCENTER        KI_LINE_LEFTCENTER
#define LINE_RIGHT             KI_LINE_RIGHT
#define LINE_RIGHTCENTER       KI_LINE_RIGHTCENTER
#define OVER_LINE              KI_OVER_LINE
#define LINE_CENTER            KI_LINE_CENTER
#define LINE_REAR              KI_LINE_CENTER
#define LINE_FRONT             KI_LINE_FRONT

#ifdef __cplusplus
extern "C"
{
#endif
// *** public functions ***********************************************
// High Level PBot Motor Control Functions
void setupPBot(uint8_t ui8Mode, bool_t blObstaclePolarity, bool_t blLinePolarity);
// mode 0: Sumo Robot
//      1: Line Tracking Robot
//      2: Micromouse Robot         (Future Option)
//      3: Remote Controlled Car    (Future Option)
//      4: 2 Wheel Balancing Robot  (Future Option)
//      5: Vacuum Cleaner           (Future Upgrade)
// polarity can be 0 - White Detection , 1 - Black Detection
void setupPBotUART(uint8_t ui8Mode, bool_t blObstaclePolarity, bool_t blLinePolarity, bool_t blEnableTelemetry, uint32_t ui32DBaudRate);

void moveForward(uint8_t ui8Speed);                              // ui8Speed is from 0 - 255
void moveBackward(uint8_t ui8Speed);                             // ui8Speed is from 0 - 255
void turnLeft(uint8_t ui8Speed);                                 // ui8Speed is from 0 - 255
void turnRight(uint8_t ui8Speed);                                // ui8Speed is from 0 - 255
void rotateLeft(uint8_t ui8Speed);                               // ui8Speed is from 0 - 255
void rotateRight(uint8_t ui8Speed);                              // ui8Speed is from 0 - 255
void stopMotors(void);

// Object / Wall Sensor Detection
uint8_t detectObstacle(void);

// Line Sensor Detection
uint8_t detectLine(void);

#ifdef __cplusplus
}
#endif

#endif
// *********************************************************************
// End of PBot.h
// *********************************************************************
