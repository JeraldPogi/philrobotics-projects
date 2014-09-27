/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PBotGlobals.h"                                                     |
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
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef PBotGlobals_h
#define PBotGlobals_h

#include "Config_Global.h"

#ifndef true
#define false                   (0==1)
#define true                    (1==1)
#endif

#ifndef TRUE
#define FALSE                   (0==1)
#define TRUE                    (1==1)
#endif

#ifndef HIGH
#define LOW                     0
#define HIGH                    1
#endif

// *** Low Level Sensor States ***********************************************
extern bool_t blWallDetectedonLeft;
extern bool_t blWallDetectedonCenter;
extern bool_t blWallDetectedonRight;

extern bool_t blLineDetectedonLeft;
extern bool_t blLineDetectedonCenter;
extern bool_t blLineDetectedonRight;

// *** D-Protocol variables ***********************************************
// Working Buffer
extern uint8_t strDProtocolID[];
extern uint8_t strCommandCode[];
extern uint8_t strParam1[];
extern uint8_t strParam2[];

extern uint8_t ui8ObstacleLocation;
extern uint8_t ui8LineLocation;

extern bool_t blDPacketReady;
extern bool_t blDPacketAvailable;
extern bool_t blBufferOverflow;
extern bool_t blTerminationError;

extern bool_t blObstacleSensorPolarity;                           // 0 detect white, 1 detect white
extern bool_t blLineSensorPolarity;                               // 0 detect white, 1 detect white

//uint8_t strDProtocolID[4];
#endif