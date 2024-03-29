/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Macro.c"               |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Main Macro File                 |
* |Revision:      | v01.02.00                                   |
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
* |v01.02.00    |20130514   |ESCII              |Code Formatted, added PIC18F2550 Configuration|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_Macro.h"

/* Controller Setting */
#ifndef S_SPLINT_S /* Suppress SPLint Parse Errors */

/* device configuration settings */
#if defined(HI_TECH_C)

#if (__PHR_CONTROLLER__==__MCU_PIC16__)
/* Anito Rev0 */
#if defined( _16F873A ) || defined( _16F874A ) || defined( _16F876A ) || defined( _16F877A )
__CONFIG(WDTE_OFF& FOSC_HS& LVP_OFF& PWRTE_ON& BOREN_OFF);

#else
#error Device not yet supported!!!
#endif

#elif (__PHR_CONTROLLER__==__MCU_PIC18__)
/* Anito Rev1 */
#if defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 )
#pragma config OSC=HSPLL            // 8Mhz Crystal x 4 PLL
#pragma config LVP=OFF
#pragma config PWRT=ON
#pragma config BOREN=OFF
#pragma config MCLRE=ON
#pragma config IESO=OFF
#pragma config FCMEN=OFF
#pragma config WDT=OFF
#pragma config WDTPS=1
#pragma config PBADEN=OFF
#else
#error Device not yet supported!!!
#endif

#else
#error Device not yet supported!!!
#endif

#elif defined(SDCC)

#if (__PHR_CONTROLLER__==__MCU_PIC16__)
/* Anito Rev0 */
#if defined(__SDCC_PIC16F877A) || defined(__SDCC_PIC16F877)
typedef unsigned int config;
config __at (0x2007) __CONFIG = _WDT_OFF & _HS_OSC & _LVP_OFF & _PWRTE_ON & _BODEN_OFF;

#else
#error Device not yet supported!!!
#endif

#elif (__PHR_CONTROLLER__==__MCU_PIC18__)
/* Anito Rev1 */
#if defined(__SDCC_PIC18F4520)
#pragma config OSC=HSPLL            // 8Mhz Crystal x 4 PLL
#pragma config LVP=OFF
#pragma config PWRT=ON
#pragma config BOREN=OFF
#pragma config MCLRE=ON
#pragma config IESO=OFF
#pragma config FCMEN=OFF
#pragma config WDT=OFF
#pragma config WDTPS=1
#pragma config PBADEN=OFF

#else
#error Device not yet supported!!!
#endif

#else
#error Device not yet supported!!!
#endif

#else
#error Compiler not yet supported!!!
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
    /* Initialize GPIO default and direction */
    setupGpio();
    /* System Timebase */
    setupTimer();
#if defined (USE_ADC)
    /* Vref at Vdd by default */
    setupADC(VDD);
#endif

    /* global and peripheral interrupts enabled */
    enableGlobalInt();
    set_gblInitialized_FlagValue();
    /* User defined initializations */
    init();

    while(TRUE)
    {
        cycle();
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
* >     isr(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void
#if defined(HI_TECH_C)
interrupt
#endif
isr(void)
#if defined(SDCC)
__interrupt (1)
#endif
{
    disableGlobalInt();
    set_gblISRLocked_FlagValue();
    timerISR();

#if defined (USE_8BIT_TIMER)
    timer8BitISR();
#endif

#if defined (USE_16BIT_TIMER)
    timer16BitISR();
#endif
	
#if defined (USE_UART)
    serialRxISR();
#endif

#if defined (USE_INTERRUPT)
    userIntISR();
#endif

#if defined (USE_UART)	
    serialTxISR();
#endif

#if defined (USE_ADC)
    adcISR();
#endif

    clr_gblISRLocked_FlagValue();
    enableGlobalInt();
}

#if (__PHR_CONTROLLER__==__MCU_PIC18__)
void
#if defined(HI_TECH_C)
interrupt low_priority
#endif
low_isr(void)
#if defined(SDCC)
__interrupt (2)
#endif
{
    disableGlobalInt();
    set_gblISRLocked_FlagValue();
    clr_gblISRLocked_FlagValue();
    enableGlobalInt();
}
#endif

/* Private Functions */
/* none */

/* end of PhilRoboKit_CoreLib_Macro.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
