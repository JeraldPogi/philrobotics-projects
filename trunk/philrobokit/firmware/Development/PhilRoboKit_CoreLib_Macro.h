/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Macro.h"               |
* |:----          |:----                                        |
* |Description:   | Header file for the PhilRobokit Main Macro File|
* |Revision:      | v01.00.00                                   |
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
* |FW Version   |Date       |Author             |Description                                |
* |:----        |:----      |:----              |:----                                      |
* |v00.01.01    |201112xx   |Giancarlo A.       |Library Initial Release                    |
* |v00.01.02    |201202xx   |Giancarlo A.       |Modify LowLevel Configuration of Pins      |
* |v00.01.03    |20120711   |ESCII              |Added User Int, 8Bit Timer, and PWM Modules|
* |v00.01.04    |20120712   |ESCII              |Modified library include links             |
* |v00.01.05    |20120713   |ESCII              |Added includes for DataTypes.h             |
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_MACRO_H__
#define __PHILROBOKIT_MACRO_H__

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
void init(void);
void program(void);

#endif/* end of PhilRoboKit_CoreLib_Macro.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
