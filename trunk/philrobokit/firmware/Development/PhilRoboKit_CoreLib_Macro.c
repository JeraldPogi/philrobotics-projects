/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Macro.c"               |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Main Macro File                 |
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
* |v00.01.01    |201112xx   |Giancarlo A.       |Library Initial Release                    |
* |v00.01.02    |201202xx   |Giancarlo A.       |Modify LowLevel Configuration of Pins      |
* |v00.01.03    |20120711   |ESCII              |Changed Interrupt Priorities               |
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

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

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
static void philrobokit_init(void);
    
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
    timerISR();
    
    timer8BitISR();
	serialRxISR();
    userIntISR();
	serialTxISR();
	//adcInterruptHandler();
}

/* Private Functions */
/*******************************************************************************//**
* \brief Variant Initialization Routine
*
* > This function is calls the variant specific peripheral initializations
*
* > <BR>
* > **Syntax:**<BR>
* >      setupAnito()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void philrobokit_init(void)
{
#ifndef S_SPLINT_S // Suppress SPLint Parse Errors
    #if (__PHR_BOARD__==__HW_PHR_ANITO__)                   /* Anito Board */
        setupAnito();        
    #endif
#endif
}	

/* end of PhilRoboKit_CoreLib_Macro.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	