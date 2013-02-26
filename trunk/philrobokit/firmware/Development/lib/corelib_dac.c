/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_dac.c"                             |
* |:----          |:----                                        |
* |Description:   | This is a library for using the DAC functions |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |v00.00.01    |20130205   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_dac.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Set DAC value
*
* > This function is called for setting the DAC value.
* > The DAC value can be set between 0 to 1023.
*
* > <BR>
* > **Syntax:**<BR>
* >      setDAC(module, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, DAC0, DAC1                          <BR>
* >     value - a value between 0 to 1023
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setDAC(/*enum ePWMModules*/uint8_t eDAC_Module, uint16_t ui16Value) 
{
	uint16_t ui16DutyCycle;
	
	/* 0 - 1023 : 0 - 1000  */
	ui16DutyCycle = (uint16_t)(((uint24_t)976 * ui16Value) / 1000);
	
	setupPWM(eDAC_Module, K_DAC_DEFAULT_FREQ, ui16DutyCycle);	
}

/*******************************************************************************//**
* \brief Remove the DAC module
*
* > This function is called for disabling the DAC module
*
* > <BR>
* > **Syntax:**<BR>
* >      removeDAC(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - PWM module assignment, DAC0, DAC1
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void removeDAC(/*enum ePWMModules*/uint8_t eDAC_Module)
{
	removePWM(eDAC_Module);
}
/* Private Functions */
    /* none */
    
/* end of corelib_dac.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------