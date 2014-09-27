/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Telemetry.h"                                                       |
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
* |v00.02.00    |20120118   |ESCII              |Last known working port(Pinguino)  |
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef PBotTelemetry_h
#define PBotTelemetry_h

#include "Mobot_Lib.h"

#define KUL_DPROTOCOL_TIMEOUT    100  // 1ms resolution

#ifdef __cplusplus
extern "C"
{
#endif

void setupTelemetry(uint32_t ui32DBaudRate);
void setupTelemetryID(uint32_t ui32DBaudRate, uint8_t strDProtID[4]);

void pollSensors(uint16_t ui16PollingInterval);

void pollWallSensorsTelemetry(void);
void pollLineSensorsTelemetry(void);

void reportWallSensors(uint8_t ui8ObstacleLocation);
void reportLineSensors(uint8_t ui8LineLocation);

void printD(uint8_t strDHeader[4], uint8_t strDCommandCode[5], uint8_t strDParam1[7], uint8_t strDParam2[7]);

#ifdef __cplusplus
}
#endif

#endif
// *********************************************************************
// End of Telemetry.h
// *********************************************************************




