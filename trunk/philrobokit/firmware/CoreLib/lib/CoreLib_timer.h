//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	CoreLib_timer.h - Timer Hardware Delay Header File
// Description:	
// Revision:    v00.00.03
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
// FW Version      Date        Author         Description
// v00.00.01       201202xx    Giancarlo A.   Library Initial Release(internal)
// v00.00.02       201203xx    Giancarlo A.   Fix CONST8_TIMER values(for 20MHz)
// v00.00.03	   20130707	   ESCII		  Set Overflow to Every 40uS
// 
//***********************************************************************************
#ifndef __PH_TIMER_H
#define __PH_TIMER_H

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "htc_16f87xa.h"
	#endif
#endif

/* Hardware Delay Routine*/
	#define	setupTimer()		timerInit()

	#define CONST8_TIMER_10US				(65530) 	//(65536 - ((0.00001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define CONST8_TIMER_40US				(65511) 	//(65536 - ((0.00004)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define CONST8_TIMER_100US				(65473) 	//(65536 - ((0.0001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define CONST8_TIMER_1000US				(64911) 	//(65536 - ((0.001)*PROCESSOR_CLOCK_FREQ)/4*8)

	#define	CONST16_TIMER	CONST8_TIMER_100US 
	
	#if (CONST16_TIMER == CONST8_TIMER_40US) 
		#define CONST16_TIMER_INCREMENT		40
	#elif (CONST16_TIMER == CONST8_TIMER_10US) 
		#define CONST16_TIMER_INCREMENT		10
	#elif (CONST16_TIMER == CONST8_TIMER_100US) 
		#define CONST16_TIMER_INCREMENT		100
	#elif (CONST16_TIMER == CONST8_TIMER_1000US) 
		#define CONST16_TIMER_INCREMENT		1000	
	#endif

	void timerInterruptHandler(void);

	void timerInit(void);
	unsigned int getElapsedTimeMs(unsigned int uiTimeMs);
	unsigned int getTimeMs(void);
	unsigned int getElapsedTimeUs(unsigned int uiTimeUs);
	unsigned int getTimeUs(void);
	
#endif