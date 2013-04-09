/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_8bit_timer.c"                          |
* |:----          |:----                                        |
* |Description:   | This is a driver for micrcochip 8bit timer (TMR2, TMR4, TMR6) |
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
* |v00.00.01    |20120620   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130205   |ESCII              |Modified For Layered Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_8bit_timer.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */

/* Public Functions */
/*******************************************************************************//**
* \brief Initialize 8bit timer interrupt function pointer with null function
*
* > This function basically does nothing and is used to initialize 8bit timer 
* > interrupt function pointer.
*
* > <BR>
* > **Syntax:**<BR>
* >     nullTMRFunction()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void nullTMRFunction()
{
#if (__TEST_MODE__==__STACK_TEST__)
	incrementStack(50);
#endif

	;/* NULL */
    
#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();
#endif
}

/* Private Functions */
    /* none */

/* end of hal_8bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	