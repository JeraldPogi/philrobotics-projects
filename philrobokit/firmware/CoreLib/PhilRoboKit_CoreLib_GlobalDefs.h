/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_GlobalDefs.h"          |
* |:----          |:----                                        |
* |Description:   | Global Variable Definitions                 |
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
* |v00.00.01    |20120713   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130514   |ESCII              |Code Formatted                     |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __ANITO_GLOBALS_C__
#define __ANITO_GLOBALS_C__

/* Include .h Library Files */
#include "PhilRoboKit_CoreLib_Header.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"

/* User Configuration Definitions */
/* none */

/* Global Constants */
/* none */

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void set_gblInitialized_FlagValue(void);
bool_t get_gblInitialized_FlagValue(void);

void set_gblISRLocked_FlagValue(void);
void clr_gblISRLocked_FlagValue(void);
bool_t get_gblISRLocked_FlagValue(void);

//void inc_gui16TimerUsMSB_Value(uint16_t ui16Value);
//uint16_t get_gui16TimerUsMSB_Value(void);
//uint16_t getBaseTimerValue(void);

void inc_gui16TimerMs_Value(void);
uint16_t get_gui16TimerMs_Value(void);

void inc_gui16TimerSec_Value(void);
uint16_t get_gui16TimerSec_Value(void);

#endif/* end of PhilRoboKit_CoreLib_GlobalDefs.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
