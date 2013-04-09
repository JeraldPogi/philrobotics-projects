/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Macro.c"               |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Main Macro File                 |
* |Revision:      | v01.01.00                                   |
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
* |v01.00.02    |20130321   |ESCII              |Disabled global interrupt on ISR and reenable before return|
* |v01.01.00    |20130408   |ESCII              |Added option for polling ADC on program loop or tmr1 interrupt|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_Macro.h"
#include "corelib_test.h"

/* Controller Setting */
#ifndef S_SPLINT_S                                          /* Suppress SPLint Parse Errors */  
    /* device configuration settings */
    #if defined(HI_TECH_C)
        #if (__PHR_CONTROLLER__==__MCU_PIC16__)
            /* Anito Rev0 */
            #if defined( _16F873A ) || defined( _16F874A ) || defined( _16F876A ) || defined( _16F877A )         
                __CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON & BOREN_OFF);
            #else
                #error Device not yet supported!!!
            #endif
        #elif (__PHR_CONTROLLER__==__MCU_PIC18__)
            /* Anito Rev1 */
            #if defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 )  
                #warning No Defined Fuses!!!
            /* Glutnix Variant */  
            #elif defined( _18F4620 ) 
                #warning No Defined Fuses!!!
            #else
                #error Device not yet supported!!!
            #endif
        #endif
    #endif
#endif

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
static void criticalTaskISR();
#endif
    
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
#if (__TEST_MODE__==__STACK_TEST__)
    initStack(0);
	incrementStack(0);
#endif

    /* Initialize GPIO default and direction */
    setupGpio();
    
    /* System Timebase */
    setupTimer();	        
    
	/* Vref at Vdd by default */
    setupADC(VDD);  

#if (__PHR_CONTROLLER__==__MCU_PIC18__)
    #warning Hello World	
    /* Use Timer 1 for ADC Polling */
    setup16BitTimer(TIMER1, criticalTaskISR);               // poll ADC on timer1 interrupt
    set16BitTimer(TIMER1, K16_CRITICALTASK_PERIOD);
#endif
    
	/* User defined initializations */
	init();
    
    /* global and peripheral interrupts enabled */
    enableGlobalInt();      
    set_gblInitialized_FlagValue();    
	
	while(true)
    {
#if (__PHR_CONTROLLER__==__MCU_PIC16__)    
        adcCycle();                                         // poll ADC on program loop
#endif
		program();	
	}	

#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();
#endif	
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
#if (__TEST_MODE__==__STACK_TEST__)
	incrementStack(1);                                      // int vector
    incrementStack(1);                                      // isr 
#endif

    disableGlobalInt();

    timerISR();
    timer16BitISR();

    timer8BitISR();
    serialRxISR();
    userIntISR();
    serialTxISR();
    adcISR();

    enableGlobalInt();
    
#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();                                       // int vector
    decrementStack();                                       // isr 
#endif
}

/* Private Functions */
/*******************************************************************************//**
* \brief Realtime critical task to be executed periodically
*
* > This function contains calls to realtime critical task that are needed to be 
* > executed on regular periodic manner.
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
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
static void criticalTaskISR()
{
#if (__TEST_MODE__==__STACK_TEST__)
	incrementStack(9);
#endif

    set16BitTimer(TIMER1, K16_CRITICALTASK_PERIOD); 		// cyclic
    adcCycle();
    
#if (__TEST_MODE__==__STACK_TEST__)
	decrementStack();
#endif
}
#endif

/* end of PhilRoboKit_CoreLib_Macro.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	