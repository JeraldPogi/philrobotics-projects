//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	app_common_timer.c - Common Timer Hardware Delay Application Layer File
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
// v01.00.00       	201211xx    	Giancarlo A.   	- Library Initial Release
// 
//***********************************************************************************

#include "corelib_basetimer.h"

	volatile uint16_t ui16TimerUs = 0;
	volatile uint16_t ui16TimerMs = 0;
    
    #ifdef __TIMER_SEC__
        volatile uint16_t ui16TimerSec = 0;
    #endif

    uint16_t getElapsedMs(uint16_t ui16TimeMs)
	{	
		return (ui16TimerMs - ui16TimeMs);
	}	

	uint16_t getMs(void)
	{	
		return ui16TimerMs;
	}

	uint16_t getElapsedUs(uint16_t ui16TimeUs)
	{	
		return (ui16TimerUs - ui16TimeUs);
	}	

	uint16_t getUs(void)
	{	
		return ui16TimerUs;
	}
    
    #ifdef __TIMER_SEC__
        uint16_t getElapsedSec(uint16_t ui16TimeSec)
        {	
            return (ui16TimerSec - ui16TimeSec);
        }	

        uint16_t getSec(void)
        {	
            return ui16TimerSec;
        }
    #endif

/* end of hal_common_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		