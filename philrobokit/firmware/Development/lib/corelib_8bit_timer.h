/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_8bit_timer.h"                      |
* |:----          |:----                                        |
* |Description:   | This is a  |
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
* |v00.00.01    |20121127   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER_

#ifndef __PH_8BIT_TIMER_H__
#define __PH_8BIT_TIMER_H__

#if defined(HI_TECH_C)
	#ifndef S_SPLINT_S 	        // Suppress SPLint Unrecognized ID Errors
		#include "htc_common.h"
	#else
		#include "htc_common_SPLint.h"
	#endif
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#ifndef S_SPLINT_S 	    // Suppress SPLint Unrecognized ID Errors
			#include "htc_16f87xa.h"
		#else
			#include "htc_16f87xa_SPLint.h"
		#endif
	#endif
#endif

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
#include "hal_8bit_timer.h"

/* Macro and Configuration Definitions */
    /* CoreLib Functions */
    /*@notfunction@*/
#define setTimer(module, value)                 setTimerValue(module, value)

    /* ISR */
    /*@notfunction@*/
#define timer8bitISR()                          timer8bitInterruptHandler()

/* Global Constants */
    /* none */
    
/* Public Function Prototypes */
	void setupTimer(enum eTmrModules tmrModule, void(*callback)());

#endif /* end of corelib_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	