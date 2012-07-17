/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "[filename].h"                                      |
* |:----          |:----                                                |
* |Description:   | This is a coding standard template header file      |
* |Revision:      | vxx.xx.xx                                           |
* |Author:        | [author's name]                                     |
* |               |                                                     |
* |Dependencies:  |                                                     |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |vxx.xx.xx    |YYYYMMDD   |[author's name]    |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_[libname]_H__
#define __PH_[libname]_H__

#if defined(HI_TECH_C)
    #include "htc_common.h"

    #if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
        #include "htc_16f87xa.h"
    #endif
#endif

/* Configuration Definitions */
#define __BASICS
#define __BLOCKING_FUNCTION

/* Global Constants */

/* Public Function Prototypes */
void callPublicFunctions();
uint8_t showFormula(uint8_t ui8X_Value);
void showTables(uint16_t ui16Value);


#endif /* end of <filename>.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	