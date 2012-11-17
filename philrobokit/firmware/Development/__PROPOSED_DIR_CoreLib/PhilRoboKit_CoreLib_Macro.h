//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum 
// http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_Macro.h - PhilRobokit Macro File
// Description:	
// Revision:    v01.00.00
// Author:      Giancarlo Acelajado
//
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//***********************************************************************************
// FW Version      	Date        	Author         	Description
// v00.01.01       	201112xx    Giancarlo A.   	- Library Initial Release
// v00.01.02       	201202xx   Giancarlo A.   	- Modify LowLevel Configuration of Pins	
// v00.01.03       	20120711    ESCII		- Added User Int, 8Bit Timer, and PWM Modules	
// v00.01.04       	20120712    ESCII		-  Modified library include links
// v00.01.05       	20120713    ESCII		-  Added includes for DataTypes.h
//***********************************************************************************

#ifndef __PHILROBOKIT_MACRO_H__
#define __PHILROBOKIT_MACRO_H__

#include "PhilRoboKit_CoreLib_Header.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* PhilRobokit Specific Prototypes */

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Definitions */

/* see hal_Anito_gpio.h */
/* consider hal_common_gpio.h */
//#define	makeInput(x)			configPin(x, INPUT)
//#define	makeOutput(x)			configPin(x, OUTPUT)

//#define	setPin(x)   			setPinState(x,HIGH)
//#define	clrPin(x)			    setPinState(x,LOW)
//#define	togglePin(x)			togglePin(x)
//#define   getPinState(x)			checkPinState(x)

/* End of Global PhilRobokit Definitions */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Structures */

/* End of Global PhilRobokit Structures */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

// ==========================================================================================================================================
// Function Prototypes
// ==========================================================================================================================================
void userInterruptHandler(void);

void init(void);
void program(void);

void philrobokit_init(void);


/* End of PhilRoboKit_CoreLib_Macro.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif
