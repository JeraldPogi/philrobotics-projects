//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_Anito_timer.h - Timer Hardware Delay Header File
// Description:	
// Revision:    v01.00.00
// Author:      Giancarlo Acelajado
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
// FW Version      	Date        	Author         	Description
// v00.00.01       	201202xx    	Giancarlo A.   	- Library Initial Release(internal)
// v00.00.02       	201203xx    	Giancarlo A.   	- Fix CONST8_TIMER values(for 20MHz)
// v00.00.03		20130707	 	ESCII			- Set Overflow to Every 100uS
// v01.00.00        2012110xx    Giancarlo A.   Leverage Library to Standard Architecture
//***********************************************************************************
#ifndef __ANITO_TIMER_H__
#define __ANITO_TIMER_H__

#include "PhilRoboKit_CoreLib_Header.h"
#include "app_common_timer.h"

	#define K16_TIMER_10US				(65530) 	//(65536 - ((0.00001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define K16_TIMER_40US				(65511) 	//(65536 - ((0.00004)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define K16_TIMER_100US				(65473) 	//(65536 - ((0.0001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define K16_TIMER_1000US			(64911) 	//(65536 - ((0.001)*PROCESSOR_CLOCK_FREQ)/4*8)

	#define	K16_TIMER	                K16_TIMER_40US 
	
	#if (K16_TIMER == K16_TIMER_10US) 
		#define K16_TIMER_INCREMENT		(10)
	#elif (K16_TIMER == K16_TIMER_40US) 
		#define K16_TIMER_INCREMENT		(40)
	#elif (K16_TIMER == K16_TIMER_100US) 
		#define K16_TIMER_INCREMENT		(100)
	#elif (K16_TIMER == K16_TIMER_1000US) 
		#define K16_TIMER_INCREMENT		(1000)	
	#endif
	
#endif/* end of hal_Anito_timer.h */