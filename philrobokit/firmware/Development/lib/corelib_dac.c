/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_dac.c"                             |
* |:----          |:----                                        |
* |Description:   | This is a |
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
* |v00.01.00    |20130204   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_dac.h"

/*******************************************************************************//**
* \brief Setup the 8Bit Timer Peripheral to count every 10uS
*
* > This initializes the 8Bit timer peripheral prescaler and poscaler 
* > to count every 10uS. The time to interrupt is set by the "setTimerValue"
* > function.
*
* > <BR>
* > **Syntax:**<BR>
* >      setup8BitTimerDef(module, &callback)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6
* >     callback - function address timer ISR callback
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setAnalogOut(enum ePWMModules eDAC_Module, uint16_t ui16Value) 
{
	uint16_t ui16DutyCycle;
	
	/* 0 - 1023 : 0 - 1000  */
	ui16DutyCycle = (uint16_t)(((uint24_t)976 * ui16Value) / 1000);
	
	setupPWM(eDAC_Module, 122, ui16DutyCycle);	// 1.22kHz Default Frequency
}

/*******************************************************************************//**
* \brief Setup the 8Bit Timer Peripheral to count every 10uS
*
* > This initializes the 8Bit timer peripheral prescaler and poscaler 
* > to count every 10uS. The time to interrupt is set by the "setTimerValue"
* > function.
*
* > <BR>
* > **Syntax:**<BR>
* >      setup8BitTimerDef(module, &callback)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6
* >     callback - function address timer ISR callback
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void removeAnalogOut(enum ePWMModules eDAC_Module)
{
	removePWM(eDAC_Module);
}

/* end of corelib_dac.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------