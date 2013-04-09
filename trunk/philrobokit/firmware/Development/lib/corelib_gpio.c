/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_gpio.c"                            |
* |:----          |:----                                        |
* |Description:   | General Purpose Input/Output Hardware Abstraction Layer Header File for PIC |
* |Revision:      | v01.00.01                                   |
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
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130405   |ESCII              |Separated module to HAL and Corelib|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_gpio.h"

/* Local Constants */
    /* none */
    
/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Initialize Pin default state and data direction
*
* > This function is called to initialize pin default state and data direction
*
* > <BR>
* > **Syntax:**<BR>
* >      setupGpio()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupGpio(void)
{
    /* Port Value and Direction */
#ifdef PORTA_ACTIVE
	PORTA_OUT = PORTA_OUT_DEF;			
	PORTA_DIR = PORTA_DIR_DEF;	
#endif

#ifdef PORTB_ACTIVE
	PORTB_OUT = PORTB_OUT_DEF;				
	PORTB_DIR = PORTB_DIR_DEF;	
#endif

#ifdef PORTC_ACTIVE	
	PORTC_OUT = PORTC_OUT_DEF;				
	PORTC_DIR = PORTC_DIR_DEF; 
#endif

#ifdef PORTD_ACTIVE	
	PORTD_OUT = PORTD_OUT_DEF;				
	PORTD_DIR = PORTD_DIR_DEF;
#endif

#ifdef PORTE_ACTIVE	
	PORTE_OUT = PORTE_OUT_DEF;				
	PORTE_DIR = PORTE_DIR_DEF;	
#endif
}

/* Private Functions */
    /* none */
    
/* end of corelib_gpio.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------