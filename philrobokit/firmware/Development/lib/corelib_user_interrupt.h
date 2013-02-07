/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_user_interrupt.h"                  |
* |:----          |:----                                        |
* |Description:   | This is a header file of the external pin interrupt library |
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
* |v00.00.01    |20120608   |ESCII              |Library Initial Release            |
* |v00.00.02    |20120624   |ESCII              |Reorganized for Clarity
*                                                - Have more strict policy on scope of
*                                                  variables and functions          |
* |v00.00.03    |20120711   |ESCII              |Code Cleanup
*                                                - Removed void type on function pointers
*                                                - Enumerated interrupt modes and sources   |
* |v00.01.00    |20130207   |ESCII              |Modified For Layered Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_EXT_INTERRUPT_H__
#define __PH_EXT_INTERRUPT_H__

#if defined(HI_TECH_C)
	#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
		#include "htc_common.h"
	#else
		#include "htc_common_SPLint.h"
	#endif
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
			#include "htc_16f87xa.h"
		#else
			#include "htc_16f87xa_SPLint.h"
		#endif
	#endif
#endif

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
#include "hal_user_interrupt.h"

/* User Configuration Definitions */
    /* none */
    
/* Global Constants */
    /* none */
    
/* Macro and Configuration Definitions */
    /* none */
    
/* Public Function Prototypes */
void setupUserInt(/*enum etInterruptSources*/uint8_t eIntSource, void(*callback)(), /*enum etInterruptModes*/uint8_t eIntMode);
void userIntISR(void);

#endif/* end of corelib_user_interrupt.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	