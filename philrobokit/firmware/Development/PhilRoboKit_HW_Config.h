/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_HW_Config.h"                   |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Hardware Header File            |
* |Revision:      | v00.02.00                                   |
* |Author:        | Giancarlo Acelajado                         |
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
* |v00.00.01    |201209xx   |Giancarlo A.       |Library Initial Release            |
* |v00.01.00    |20130408   |ESCII              |enumerations used instead of defines for configurations |
* |v01.01.00    |20130514   |ESCII              |Code Formatted                     |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_HW_CONFIG_H__
#define __PHILROBOKIT_HW_CONFIG_H__

/* Include .h Library Files */
/* none */

/* Global Constants */
/* PhilRoboKit Controller Selection */
#define __MCU_PIC16__               (0)
#define __MCU_PIC18__               (1)
#define __ARM_ST__                  (2)

/* PhilRoboKit Board Selection */
#define __HW_PHR_ANITO__            (0)
#define __HW_PHR_BATHALA__          (1)
#define __HW_eGIZMO_ePICPICMO__     (2)

/* User Configuration Definitions */
/* PhilRoboKit Hardware Configuration */
#if defined(_16F877A) || defined(__SDCC_PIC16F877A) || defined(__SDCC_PIC16F877)
#define __PHR_CONTROLLER__          (__MCU_PIC16__)

#elif defined(_18F4520) || defined(__SDCC_PIC18F4520)
#define __PHR_CONTROLLER__          (__MCU_PIC18__)

#else
#if defined (S_SPLINT_S)
/* do nothing */
#else
#error  Device not yet supported!!!

#endif  /* SPLINT Switch */

#endif  /* MCU Part Compile Switch */

#define __PHR_BOARD__               (__HW_PHR_ANITO__)

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
/* none */

#endif/* end of PhilRoboKit_HW_Config.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
