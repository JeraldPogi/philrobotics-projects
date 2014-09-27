/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "Config_Global.h"                                                   |
* |:----          |:----                                                                |
* |Description:   | Mobot Library Global Configuration File                             |
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
* |v00.02.01    |2013xxxx   |ESCII              |Initial Library Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef Config_Global_h
#define Config_Global_h

/* Global Constants */
#ifndef TRUE
#define FALSE                               (0==1)
#define TRUE                                (1==1)
#endif

#ifndef HIGH
#define LOW                                 (0)
#define HIGH                                (1)
#endif

//#define AUTO_CONFIG_ON                                            // ### Comment out to disable auto detection of mobile platform, will use default configuration if enabled (e-gizmo PBot R2)

/* Select Motors */
#define USE_DC_FIX_SPEED                    (0)                     // digital output
#define USE_DC_VAR_SPEED                    (1)                     // pwm output
#define USE_SERVO                           (2)                     // servo signal - for servo modified for continuous rotation

#define MOTOR_TYPE                          USE_DC_FIX_SPEED        // ###

/* Select Driver */
#define DRIVER_HBRIDGE						(0)
#define DRIVER_NORMAL						(1)

#define DRIVER_TYPE							DRIVER_HBRIDGE				

/* Predefined Motor Speeds */
#if(MOTOR_TYPE == USE_SERVO)
#define KB_MAXSPEED                         255                     // ###

#define KB_FULLSPEED                        255                     // ###
#define KB_HIGHSPEED                        200                     // ###
#define KB_MIDSPEED                         150                     // ###
#define KB_LOWSPEED                         75                      // ###

#define KB_OFFSPEED                         0                       // ###

#else /* (default) */
#define KB_MAXSPEED                         255                     // ###

#define KB_FULLSPEED                        255                     // ###
#define KB_HIGHSPEED                        200                     // ###
#define KB_MIDSPEED                         150                     // ###
#define KB_LOWSPEED                         75                      // ###

#define KB_OFFSPEED                         0                       // ###
#endif

/* Motor Direction Control */
#define KBL_FORWARD_DIR                     LOW                     // ###
#define KBL_REVERSE_DIR                     HIGH                    // ###

/* Select Mobot Platform */
#define USE_PHILROBOKIT                     (0)
#define USE_ARDUINO                         (1)
#define USE_PINGUINO                        (2)
#define USE_CUSTOM                          (3)

#if defined(AUTO_CONFIG_ON)
#if defined(__ARDUINO__)
#define MOBOT_PLATFORM                      USE_ARDUINO
#elif defined(__PINGUINO__)
#define MOBOT_PLATFORM                      USE_PINGUINO
#elif defined(__PKIT__)
#define MOBOT_PLATFORM                      USE_PHILROBOKIT
#elif defined(__CUSTOM__)
#define MOBOT_PLATFORM                      USE_CUSTOM
#else
#warning No defined MCU Platform, will use Arduino as default
#define MOBOT_PLATFORM                      USE_ARDUINO
#endif
#else
#define MOBOT_PLATFORM                      USE_PHILROBOKIT        	// ### Change if "AUTO_CONFIG_ON" is not defined
#endif

/* Include Platform Specific Configuration File */
#if (MOBOT_PLATFORM == USE_PHILROBOKIT)
#include "Config_PhilRobokit.h"
#elif (MOBOT_PLATFORM == USE_ARDUINO)
#include "Config_Arduino_DataTypes.h"
#include "Config_Arduino.h"
#elif (MOBOT_PLATFORM == USE_PINGUINO)
#include "Config_Pinguino_DataTypes.h"
#include "Config_Pinguino.h"
#else
#include "Config_Custom.h"
#endif

/* Line/Wall Sensor Polarity */
#define KBL_WHITE                           FALSE                   // ###
#define KBL_BLACK                           TRUE                    // ###

/* Tachometer Configuration */
#define KUL_TACHOPOLLTIMEOUT                (3000)                  // ### : Timeout if 3secs(3000mS) no Tacho Signal

/* Mobot Feature Configuration */
#define CONFIG_DISABLE_TELEMETRY            1                       // ###
#define CONFIG_DISABLE_REMOTE_CONTROL       1                       // ###

#endif