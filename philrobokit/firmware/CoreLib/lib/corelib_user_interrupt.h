//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	CoreLib_user_interrupt.h - External Interrupt Header File
// Description:	
// Revision:    v00.00.03
// Author:      Efren S. Cruzat II
//
// Dependencies:
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
// FW Version      Date        Author         Description
// v00.00.01		20120608	ESCII			- Library Initial Release
// v00.00.02		20120624	ESCII			- Reorganized for Clarity
//												- Have more strick policy on scope of
//													variables and functions
// v00.00.03		20120711	ESCII			- Code Cleanup
//										- Removed void type on function pointers
//										- Enumerated interrupt modes and sources
//***********************************************************************************
#ifndef __PH_EXT_INTERRUPT_H__
#define __PH_EXT_INTERRUPT_H__

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "htc_16f87xa.h"
	#endif
#endif

#include "PhilRoboKit_CoreLib_Macro.h"

/* User Configuration Definitions */
#define EXTINTENABLED		TRUE
#define RBINTENABLED 		TRUE

	/* Interrupts Sources */
enum etInterruptSources
{
	INT0
	,INT1
	,INT2
	,INT3
	,INT4
};

	/* Interrupt Modes */
enum etInterruptModes
{
	LOWSTATE					// not available on PIC
	,CHANGE
	,RISING
	,FALLING
};
	
	/* PORTB  Pinmask */
#define RB4_MASK	0x10
#define RB5_MASK	0x20
#define RB6_MASK	0x40
#define RB7_MASK	0x80

/* Public Function Prototypes */
void setupUserInterrupt(enum etInterruptSources eIntSource, void(*function)(), enum etInterruptModes eIntMode);
void userInterruptHandler(void);

#endif/* end of CoreLib_user_interrupt.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	