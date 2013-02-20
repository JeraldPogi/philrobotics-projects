/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "setupAnito.c"                              |
* |:----          |:----                                        |
* |Description:   | Anito setup routines                        |
* |Revision:      | v00.00.01                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include  "setupAnito.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Setup Anito Peripherals
*
* > This function is called to initialize anito specific peripherals 
*
* > <BR>
* > **Syntax:**<BR>
* >      setupAnito()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupAnito(void)
{
    setupGpio();
    setupTimer();	        // Hardware Delay        
    setupADC();
    //setupSerial();
    
    BIT_INTCON_PEIE = 1;    // Enable Peripheral Interrupt  (esc.comment: to be updated)
    BIT_INTCON_GIE = 1;	    // Enable Global Interrupt      (esc.comment: to be updated)
}

/* Private Functions */
    /* none */
    
/* end of setupAnito.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------