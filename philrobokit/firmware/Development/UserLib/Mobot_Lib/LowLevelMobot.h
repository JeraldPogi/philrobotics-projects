/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "LowLevelMobot.h"                                                   |
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
* |v00.01.00    |20101216   |ESCII              |Library Initial Release            |
* |v00.01.01    |20120116   |ESCII              |Last known working port(Pinguino)  |
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef LowLevelMobot_h
#define LowLevelMobot_h

#include "Mobot_Lib.h"

// Obstacle Input States
enum
{
    KI_NO_OBSTACLE
    ,KI_OBJECT_LEFT
    ,KI_OBJECT_LEFTCENTER
    ,KI_OBJECT_RIGHT
    ,KI_OBJECT_RIGHTCENTER
    ,KI_OBJECT_FARFRONT
    ,KI_OBJECT_NEARFRONT
    ,KI_OBJECT_BOTHSIDES
};
// Line Input States
enum
{
    KI_NO_LINE
    ,KI_LINE_LEFT
    ,KI_LINE_LEFTCENTER
    ,KI_LINE_RIGHT
    ,KI_LINE_RIGHTCENTER
    ,KI_OVER_LINE
    ,KI_LINE_CENTER
    ,KI_LINE_FRONT
};

#ifdef __cplusplus
extern "C"
{
#endif
// *** public functions ***********************************************
// Low Level Motor Control Functions
void runRightMotor(uint8_t ui8Speed, bool_t blDirection);          // ui8Speed is from 0 - 255
// blDirection can be forward-0, reverse-1
void runLeftMotor(uint8_t ui8Speed, bool_t blDirection);           // ui8Speed is from 0 - 255
// blDirection can be forward-0, reverse-1
void stopRightMotor(void);
void stopLeftMotor(void);

// Low Level Input Polling
uint32_t  getRightTachoPeriod(bool_t blActiveEdge);
uint32_t  getLeftTachoPeriod(bool_t blActiveEdge);

void pollWallSensors(bool_t* blObstacleSensorPolarity);
void pollLineSensors(bool_t* blLineSensorPolarity);

#ifdef __cplusplus
}
#endif

#endif
// *********************************************************************
// End of LowLevelMobot.h
// *********************************************************************
