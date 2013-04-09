/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_GlobalDefs.c"          |
* |:----          |:----                                        |
* |Description:   | Global Variable Definitions                 |
* |Revision:      | v00.00.01                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_GlobalDefs.h"

/* Local Constants */
    /* none */

/* Global Variables */
static volatile	bool_t	    gblInitialized = false;

/* Function Prototypes */
    /* none */

/* Public Functions */
    /* A flag to indicate low level initialization has commenced and the global interrupts are alread enabled */
void set_gblInitialized_FlagValue(void)
{
#if (__TEST_MODE__==__STACK_TEST__)
	incrementStack(4);
#endif

	gblInitialized = true;
    
#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();
#endif    
}

bool_t get_gblInitialized_FlagValue(void)
{
#if (__TEST_MODE__==__STACK_TEST__)
	incrementStack(5);
#endif

#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();
#endif      
    return gblInitialized;  
}

/* Private Functions */
    /* none */
    
/* end of PhilRoboKit_CoreLib_GlobalDefs.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------