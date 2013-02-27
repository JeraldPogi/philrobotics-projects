/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_8bit_timer.h"                      |
* |:----          |:----                                        |
* |Description:   | This is a header file of the 8 bit timer library |
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

#ifndef __PH_8BIT_TIMER_H__
#define __PH_8BIT_TIMER_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
#include "hal_8bit_timer.h"

/* User Configuration Definitions */
    /* none */
    
/* Global Constants */
    /* Timers */
enum tmrModules_e
{
	TIMER2		= 2
	,TIMER4		= 4
	,TIMER6		= 6
};
    
/* Macro and Configuration Definitions */
    /* none */
    
/* Public Function Prototypes */
    void setup8BitTimerFull(enum tmrModules_e eTmrModule, void(*callback)(), uint8_t ui8Prescaler, uint8_t ui8Postscaler);
	void setup8BitTimer(enum tmrModules_e eTmrModule, void(*callback)());
	void setTimer(enum tmrModules_e eTmrModule, uint8_t ui8Value);
    void timer8BitISR(void);
    
#endif /* end of corelib_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	