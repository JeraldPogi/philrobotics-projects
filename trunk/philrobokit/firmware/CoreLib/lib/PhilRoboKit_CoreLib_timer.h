//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_timer.h - Timer Hardware Delay Header File
// Description:	
// Revision:    v00.00.02
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
// FW Version      Date        Author         Description
// v00.00.01       201202xx    Giancarlo A.   Library Initial Release(internal)
// v00.00.02       201203xx    Giancarlo A.   Fix CONST8_TIMER values(for 20MHz)
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

	#define CONST8_TIMER_10US	(65530) //(65536 - ((0.00001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define CONST8_TIMER_100US	(65473) //(65536 - ((0.0001)*PROCESSOR_CLOCK_FREQ)/4*8)
	#define CONST8_TIMER_1000US	(64911) //(65536 - ((0.001)*PROCESSOR_CLOCK_FREQ)/4*8)

	#define	CONST16_TIMER	CONST8_TIMER_100US // 65536 - Period*FOSC / 4 * Prescaler

	void timerInterruptHandler(void);

	void timerInit(void);
	unsigned int getElapsedTimeMs(unsigned int uiTimeMs);
	unsigned int getTimeMs(void);
	unsigned int getElapsedTimeUs(unsigned int uiTimeUs);
	unsigned int getTimeUs(void);
	
#endif