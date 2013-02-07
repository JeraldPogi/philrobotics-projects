/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_user_interrupt.c"                  |
* |:----          |:----                                        |
* |Description:   | This is a library for using the external pin interrupt |
* |Revision:      | v00.01.00                                   |
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
* |v00.00.01    |20120608   |ESCII              |Library Initial Release            |
* |v00.00.02    |20120624   |ESCII              |Reorganized for Clarity
*                                                - Have more strict policy on scope of
*                                                  variables and functions          |
* |v00.00.03    |20120711   |ESCII              |Code Cleanup
*                                                - Removed void type on function pointers
*                                                - Enumerated interrupt modes and sources   |
* |v00.01.00    |20130207   |ESCII              |Modified For Layered Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_user_interrupt.h"

/* Local Constants */
#define K_FALLING_EDGE          0
#define K_RISING_EDGE           1

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Setup the external pin interrupt
*
* > This function is called to initialize the external pin interrupt peripheral  
* > to interrupt on either, rising or falling edge, or change in pin states
*
* > <BR>
* > **Syntax:**<BR>
* >      setupUserInt(source, &callback, mode)
* > <BR><BR>
* > **Parameters:**<BR>
* >     source - external pin interrupt source, INT0, INT1, INT2, INT3, INT4
* >     callback - function address of the external pin ISR callback
* >     mode - defines how the interrupt should be triggered, CHANGE, RISING, FALLING
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupUserInt(/*enum etInterruptSources*/uint8_t eIntSource, void(*callback)(), /*enum etInterruptModes*/uint8_t eIntMode) 
{
	/* External Interrupt */
	if(INT0 == eIntSource)
	{
	#if(EXTINTENABLED == TRUE)	
		/* Set Int Pin to Input */
		makeInput(D8);
		
		if(RISING == eIntMode)
		{
			K_INT_EDGE_BIT = K_RISING_EDGE;         // Start detecting at rising edge
		}
		else if(FALLING == eIntMode)
		{
			K_INT_EDGE_BIT = K_FALLING_EDGE;        // Start detecting at falling edge
		}
		else if(CHANGE == eIntMode)
		{
			/* Set the Inverse of Current Pin State*/
			if(HIGH == getPinState(D8))
			{
				K_INT_EDGE_BIT 	= K_FALLING_EDGE;
			}
			else
			{
				K_INT_EDGE_BIT 	= K_RISING_EDGE;
			}
		}
		else
		{
			/* Do Nothing */
		}

		mode0 = eIntMode;
		pt2INT0 = callback;							// assign INT0 Function Pointer
		hal_clrEXTIntFlag();
		hal_enableEXTInt();
	#endif
	}
	/* Interrupt on PortB Change */
	else
	{
	#if(RBINTENABLED == TRUE)	
		PORTB_DIR = 0x00;
		
		/* RB4 Interrupt on Change */
		if(INT1 == eIntSource)
		{
			/* Set Int Pin to Input */
		    makeInput(D12);
			PORTB_DIR |= RB4_MASK;
			mode1 = eIntMode;
			pt2INT1 = callback;						// assign INT1 Function Pointer
		}
		/* RB5 Interrupt on Change */
		else if(INT2 == eIntSource)
		{
			/* Set Int Pin to Input */
		    makeInput(D13);
			PORTB_DIR |= RB5_MASK;
			mode2 = eIntMode;
			pt2INT2 = callback;						// assign INT2 Function Pointer			
		}
		/* RB6 Interrupt on Change */
		else if(INT3 == eIntSource)
		{
			/* Set Int Pin to Input */
		    REGISTER_TRISB |= RB6_MASK;
			PORTB_DIR |= RB6_MASK;
			mode3 = eIntMode;
			pt2INT3 = callback;						// assign INT3 Function Pointer			
		}		
		/* RB7 Interrupt on Change */
		else if(INT4 == eIntSource)
		{
			/* Set Int Pin to Input */
		    REGISTER_TRISB |= RB7_MASK;
			PORTB_DIR |= RB7_MASK;
			mode4 = eIntMode;
			pt2INT4 = callback;						// assign INT4 Function Pointer			
		}
		else
		{
			/* Do Nothing */
		}
		
		/* PORTB States Reference */
		PORTB_BUFFER = K_INT_PORT_REG & PORTB_DIR;	// Ignore Outputs
		
		hal_clrRBIntFlag();
		hal_enableRBInt();
	#endif		
	}
}

/*******************************************************************************//**
* \brief External pin interrupt service routine
*
* >  This is an interrupt handler called when there is a change on interrupt pin state
*
* > <BR>
* > **Syntax:**<BR>
* >      userIntISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void userIntISR(void)
{
	/*  Check External Interrupt */
	if(hal_getEXTIntEnableStatus() && hal_getEXTIntFlag())
	{
		hal_disableEXTInt();						// Temporary Disable Interrupt
#if(EXTINTENABLED == TRUE)	
		extIntISR();
#endif		
		hal_clrEXTIntFlag();
		hal_enableEXTInt();						    // Reenable Interrupt
	}

	/* Check Interrupt on PortB Change */
	if(hal_getRBIntEnableStatus() && hal_getRBIntFlag())
	{
		hal_disableRBInt();						    // Temporary Disable Interrupt
#if(RBINTENABLED == TRUE)	
		rbIntISR();
#endif	
		hal_clrRBIntFlag();
		hal_enableRBInt();						    // Reenable Interrupt
	}
}

/* Private Functions */
    /* none */

/* end of corelib_user_interrupt.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------




