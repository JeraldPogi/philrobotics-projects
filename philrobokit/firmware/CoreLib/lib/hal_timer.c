/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_timer.c"                               |
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
* |v00.00.02    |201203xx   |Giancarlo A.       |XXXXXX                                     |
* |v00.00.03    |20130707   |ESCII              |Fixed Interrupt Handler                    |
* |             |           |                   |Set to Overflow every 100uS                |
* |v01.00.00    |201211xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
* |v01.00.01    |20130320   |ESCII              |Move Timebase to TMR0 freerunning timer    |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_timer.h"

/* Local Constants */
    /* none */

/* Local Variables */
extern volatile uint8_t ui8TimerUsMSB;
extern volatile uint16_t ui16TimerMs;

#ifdef __TIMER_SEC__
extern volatile uint16_t ui16TimerSec;
#endif

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Setup Base Timer
*
* > This function is called to initialize the base timer as freerunning timer which 
* > interrupts on overflow to increment timebases
*
* > <BR>
* > **Syntax:**<BR>
* >      setupTimer()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupTimer(void)
{
	/* Set Prescaler */
    hal_setTMR0Prescaler(TMR0_PRESCALE); 
    
    /* Timer Peripheral Init */
    hal_TMR0_Init();

    /* Additional Configuration for PIC 18 */
#if defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 ) || defined( _18F4620 )	
    hal_use8BitTMR0();
    
    /* Enable Timer Module */
    hal_enableBaseTimer();
#endif
    
	/* Enable Interrupt */
	hal_clrBaseTimerIntFlag();
	hal_enableBaseTimerInt();
}	

/*******************************************************************************//**
* \brief Timebase Interrupt Service Routine
*
* > This is an interrupt handler called periodically to manage system timebase
*
* > <BR>
* > **Syntax:**<BR>
* >      timerISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void timerISR(void)
{
    static uint16_t ui16UsCounter = 0;
    #ifdef __TIMER_SEC__
    static uint16_t ui16MsCounter = 0;
    #endif
    
    if(hal_getBaseTimerIntFlag() && hal_getBaseTimerIntEnableStatus())
    {
    	hal_clrBaseTimerIntFlag();
   
        ui8TimerUsMSB++;                        // increment uS Timer High Byte
    	ui16UsCounter += TMR0_US_INCREMENT;             
        
    	if(ui16UsCounter >= 1000)
    	{
    		ui16TimerMs++;
    		ui16UsCounter -= 1000;
            
            #ifdef __TIMER_SEC__
            ui16MsCounter++;
            #endif
			adcCycle();							// esc.comment, temporarily placed here
    	}	

        #ifdef __TIMER_SEC__
        if(ui16MsCounter >= 1000)
        {
            ui16TimerSec++;
            ui16MsCounter = 0;
        }
        #endif
    }
}	

/* Private Functions */
    /* none */
    
/* end of hal_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------