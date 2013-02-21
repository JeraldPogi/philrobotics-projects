/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_timer.h"                               |
* |:----          |:----                                        |
* |Description:   | Anito Base Timer Low Level                  |
* |Revision:      | v01.00.00                                   |
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
* |FW Version   |Date       |Author             |Description                                |
* |:----        |:----      |:----              |:----                                      |
* |v00.00.01    |201202xx   |Giancarlo A.       |Library Initial Release                    |
* |v00.00.02    |201203xx   |Giancarlo A.       |Fix CONST8_TIMER values(for 20MHz)         |
* |v00.00.03    |20130707   |ESCII              |Fixed Interrupt Handler                    |
* |             |           |                   |Set to Overflow every 100uS                |
* |v01.00.00    |201211xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __ANITO_TIMER_H__
#define __ANITO_TIMER_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Header.h>

/* User Configuration Definitions */
	#define K16_TIMER_10US				(65530) 	//(65536 - ((0.00001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define K16_TIMER_40US				(65511) 	//(65536 - ((0.00004)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define K16_TIMER_100US				(65473) 	//(65536 - ((0.0001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define K16_TIMER_1000US			(64911) 	//(65536 - ((0.001)*PROCESSOR_CLOCK_FREQ)/4*8)

	#define	K16_TIMER	                K16_TIMER_40US 

/* Global Constants */	
	#if (K16_TIMER == K16_TIMER_10US) 
		#define K16_TIMER_INCREMENT		(10)
	#elif (K16_TIMER == K16_TIMER_40US) 
		#define K16_TIMER_INCREMENT		(40)
	#elif (K16_TIMER == K16_TIMER_100US) 
		#define K16_TIMER_INCREMENT		(100)
	#elif (K16_TIMER == K16_TIMER_1000US) 
		#define K16_TIMER_INCREMENT		(1000)	
	#endif
/* Macro and Configuration Definitions */
    /* none */

/* Public Function Prototypes */
	void setupTimer(void);
	void timerISR(void);
    
#endif/* end of hal_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	