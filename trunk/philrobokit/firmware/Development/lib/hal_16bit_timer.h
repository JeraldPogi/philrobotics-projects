/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_16bit_timer.h"                         |
* |:----          |:----                                        |
* |Description:   | This is a header file of the driver for micrcochip 16bit timer (TMR1) |
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
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.01    |20130323   |ESCII              |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_16BIT_TIMER_H__
#define __HAL_16BIT_TIMER_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
   
/* Global Constants */    
enum Tmr1PreScale_et
{
    TMR1_PRE_DIV1
    ,TMR1_PRE_DIV2
    ,TMR1_PRE_DIV4
    ,TMR1_PRE_DIV8
};

/* User Configuration Definitions */
#define TIMER_16BIT_ENABLED	                        TRUE
	#define TIMER1_ENABLED	                        TRUE
    
#if (_XTAL_FREQ == 20000000)
    #define TMR1_PRESCALE                           TMR1_PRE_DIV1           // 0.2uS resolution @ 20Mhz
#elif (_XTAL_FREQ == 8000000)
    #define TMR1_PRESCALE                           TMR1_PRE_DIV1           // 0.5uS resolution @ 8Mhz
#else
    #warning Clock Frequency Not Defined
#endif
   
/* Macro and Configuration Definitions */
#if(TIMER_16BIT_ENABLED == TRUE)
    /* TMR1 */
	/*@notfunction@*/
	#define hal_enableTMR1Int()           			(BIT_PIE1_TMR1IE = 1)
	/*@notfunction@*/
	#define hal_disableTMR1Int()          			(BIT_PIE1_TMR1IE = 0)
    /*@notfunction@*/
    #define hal_getTMR1IntEnableStatus()           	((BIT_PIE1_TMR1IE) ? true : false)
    
	/*@notfunction@*/
	#define hal_clrTMR1IntFlag()         			(BIT_PIR1_TMR1IF = 0)
    /*@notfunction@*/
    #define hal_getTMR1IntFlag()                    ((BIT_PIR1_TMR1IF) ? true : false)

	/*@notfunction@*/
	#define hal_enableTMR1()                 		(BIT_T1CON_TMR1ON = 1)
	/*@notfunction@*/
	#define hal_disableTMR1()                		(BIT_T1CON_TMR1ON = 0)

	/*@notfunction@*/
	#define hal_setTMR1Prescaler(a)          		\
    	REGISTER_T1CON &=~TMR1_PRESCALE_MASK;       \
    	REGISTER_T1CON |= (a<<4)&TMR1_PRESCALE_MASK // semi-collon intentionally omitted 

	/*@notfunction@*/
	#define hal_setTMR1Postscaler(a)         		asm("nop")
    
    // Timer1 oscillator disabled
    // Timer1 external clock do not synchronize
    // Timer1 clock source select, internal clock (FOSC/4)
    /*@notfunction@*/
    #define hal_initTMR1()                          \
        BIT_T1CON_T1OSCEN = 0; 		                \
        BIT_T1CON_T1SYNC = 1; 	                    \
        BIT_T1CON_TMR1CS = 0                        // semi-collon intentionally omitted 		
        
    /*@notfunction@*/
    #define hal_setTMR1Value(a)                     \
    	a = 65535-a;							    \
        REGISTER_TMR1L = (uint8_t)(a);            	\
        REGISTER_TMR1H = (uint8_t)(a>>8)       		// semi-collon intentionally omitted   
#endif

/* Public Function Prototypes */	
#if(TIMER_16BIT_ENABLED == TRUE)
    void null16BitTMRFunction();
    
    void (*pt2TMR1ISR)() = &null16BitTMRFunction;   // interrupt function pointer
#endif

#endif /* end of hal_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	