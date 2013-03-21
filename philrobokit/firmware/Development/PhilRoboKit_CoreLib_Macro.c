/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Macro.c"               |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Main Macro File                 |
* |Revision:      | v01.00.01                                   |
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
* |v00.01.01    |201112xx   |Giancarlo A.       |Library Initial Release                    |
* |v00.01.02    |201202xx   |Giancarlo A.       |Modify LowLevel Configuration of Pins      |
* |v00.01.03    |20120711   |ESCII              |Changed Interrupt Priorities               |
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
* |v01.00.01    |20130307   |ESCII              |philrobokit_init moved to setupAnito.c to save 1 stack level|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_Macro.h"

/* Controller Setting */
#ifndef S_SPLINT_S                              /* Suppress SPLint Parse Errors */  
#if (__PHR_CONTROLLER__==__MCU_PIC__)
    /* device configuration settings */
    #if defined(HI_TECH_C)
        /* Anito Rev0 */
        #if defined( _16F873A ) || defined( _16F874A ) || defined( _16F876A ) || defined( _16F877A )         
            __CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON & BOREN_OFF);
        /* Anito Rev1 */
        #elif defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 )  
        
        /* Glutnix Variant */  
        #elif defined( _18F4620 ) 
        
        #else
        /* Warning: no defined fuses!!! */
        #endif
    #endif
#endif
#endif

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Main C Function
*
* > This is the first part of the code to be executed
*
* > <BR>
* > **Syntax:**<BR>
* >      main()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
int main(void)
{
	philrobokit_init();         //Configure Defaults		
	
	init();
	
	while(true){
		program();	
        adcCycle();
	}	
	
	return 0;
}	

/*******************************************************************************//**
* \brief Central Interrupt Service Routine
*
* > This is the Central Interrupt Service Routine
*
* > <BR>
* > **Syntax:**<BR>
* >      isr(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void 
#ifndef S_SPLINT_S // Suppress SPLint Parse Errors
interrupt 
#endif
isr(void)
{
    disableGlobalInt();
    
    timerISR();
    
    timer8BitISR();
	serialRxISR();
    userIntISR();
	serialTxISR();
	adcISR();
    
    enableGlobalInt();
}

/* Private Functions */
    /* none */

/* end of PhilRoboKit_CoreLib_Macro.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	