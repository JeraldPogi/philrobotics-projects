//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// http://wiki.philrobotics.com | http://philrobotics.com/forum
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_Macro.c - PhilRobokit Macro File
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
// FW Version      Date        Author         Description
// v00.01.01       201112xx    Giancarlo A.   Library Initial Release
// v00.01.02       201202xx    Giancarlo A.   Modify LowLevel Configuration of Pins
// v00.01.03       20120711    ESCII		  Changed Interrupt Priorities
// v01.00.00       201210xx    Giancarlo A.   Leverage Library to Standard Architecture
//***********************************************************************************

#include "PhilRoboKit_CoreLib_Macro.h"

/* Controller Setting */
#if (__PHR_CONTROLLER__==__MCU_PIC__)
    /* device configuration settings */
    #if defined(HI_TECH_C)
        #ifndef S_SPLINT_S // Suppress SPLint Parse Errors    
            __CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON & BOREN_OFF);
        #endif
    #endif
#endif

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Structures */

/* End of Global PhilRobokit Structures */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

// ==========================================================================================================================================
// Functions
// ==========================================================================================================================================
void philrobokit_init(void)
{
#ifndef S_SPLINT_S // Suppress SPLint Parse Errors
    #if (__PHR_BOARD__==__HW_PHR_ANITO__) /* Anito Board */
        setupAnito();        
    #endif
#endif
 
}	

//Main Program Routine
int main(void)
{
	philrobokit_init();	//Configure Defaults		
	
	init();
	
	while(1){
		program();	
	}	
	
	return 0;
}	

// ==========================================================================================================================================
// Interrupt Service Routine
// ==========================================================================================================================================
void 
#ifndef S_SPLINT_S // Suppress SPLint Parse Errors
interrupt 
#endif
isr(void)
{
    timer8BitISR();
	serialRxInterruptHandler();
    //user interrupt handler
	serialTxInterruptHandler();
	//adcInterruptHandler();
}

/* End of PhilRoboKit_CoreLib_Macro.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	