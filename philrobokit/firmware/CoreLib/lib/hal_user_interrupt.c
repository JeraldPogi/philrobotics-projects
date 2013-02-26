/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_user_interrupt.c"                      |
* |:----          |:----                                        |
* |Description:   | This is a driver for using the external pin interrupt |
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
* |v00.00.01    |20130207   |ESCII              |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_user_interrupt.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
   
/* Public Functions */
/*******************************************************************************//**
* \brief Initialize external pin interrupt function pointer with null function
*
* > This function basically does nothing and is used to initialize external pin
* > interrupt function pointer.
*
* > <BR>
* > **Syntax:**<BR>
* >     nullINTFunction()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void nullIntFunction(void)
{
	;/* NULL */
}

/*******************************************************************************//**
* \brief INT0 interrupt service routine
*
* >  This is an interrupt handler called when there is a change on INT0 pin state
*
* > <BR>
* > **Syntax:**<BR>
* >      extIntISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
#if(EXTINTENABLED == TRUE)	
void extIntISR()
{
	if(CHANGE == mode0)
	{
		K_INT_EDGE_BIT = ~K_INT_EDGE_BIT;   // toggle Int0 edge to trigger on next interrupt edge
	}
	
	/* Call User Function */
	pt2INT0();
}
#endif	

/*******************************************************************************//**
* \brief PORTB interrupt service routine
*
* >  This is an interrupt handler called when there is a change on PORTB interrupt
* >  pin state
*
* > <BR>
* > **Syntax:**<BR>
* >      rbIntISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
#if(RBINTENABLED == TRUE)	
void rbIntISR(void)
{
	int PORTCHANGE_BUFFER; 

	/* Capture Pin Changes */
	PORTCHANGE_BUFFER = PORTB_BUFFER ^ (REGISTER_PORTB & PORTB_DIR);	// Ignore Outputs
	
	if(RB4_MASK == (PORTCHANGE_BUFFER&RB4_MASK))
	{
		if((RISING == mode1) && (LOW == getPinState(D12)))
		{
			/* Ignore and wait for the next interrupt */
		}	
		else if((FALLING == mode1) && (HIGH == getPinState(D12)))
		{
			/* Ignore and wait for the next interrupt */
		}
		else // CHANGE == mode1 or coincide of correct mode and pin state
		{
			/* Call User Function */
			pt2INT1();
		}
		PORTB_BUFFER &= ~RB4_MASK;					// clear buffered RB4
		PORTB_BUFFER |= REGISTER_PORTB & RB4_MASK;	// store new RB4
	}
	
	if(RB5_MASK == (PORTCHANGE_BUFFER&RB5_MASK))
	{
		if((RISING == mode2) && (LOW == getPinState(D13)))
		{
			/* Ignore and wait for the next interrupt */
		}	
		else if((FALLING == mode3) && (HIGH == getPinState(D13)))
		{
			/* Ignore and wait for the next interrupt */
		}
		else // CHANGE == mode1 or coincide of correct mode and pin state
		{
			/* Call User Function */
			pt2INT2();
		}
		PORTB_BUFFER &= ~RB5_MASK;					// clear buffered RB5
		PORTB_BUFFER |= REGISTER_PORTB & RB5_MASK;	// store new RB5	
	}
	
	if(RB6_MASK == (PORTCHANGE_BUFFER&RB6_MASK))
	{
		if((RISING == mode3) && !(REGISTER_PORTB & RB6_MASK))
		{
			/* Ignore and wait for the next interrupt */
		}	
		else if((FALLING == mode3) && (REGISTER_PORTB & RB6_MASK))
		{
			/* Ignore and wait for the next interrupt */
		}
		else // CHANGE == mode1 or coincide of correct mode and pin state
		{
			/* Call User Function */
			pt2INT3();
		}
		PORTB_BUFFER &= ~RB6_MASK;					// clear buffered RB6
		PORTB_BUFFER |= REGISTER_PORTB & RB6_MASK;	// store new RB6
	}
	
	if(RB7_MASK == (PORTCHANGE_BUFFER&RB7_MASK))
	{
		if((RISING == mode4) && !(REGISTER_PORTB & RB7_MASK))
		{
			/* Ignore and wait for the next interrupt */
		}	
		else if((FALLING == mode4) && (REGISTER_PORTB & RB7_MASK))
		{
			/* Ignore and wait for the next interrupt */
		}
		else // CHANGE == mode1 or coincide of correct mode and pin state
		{
			/* Call User Function */
			pt2INT4();
		}
		PORTB_BUFFER &= ~RB7_MASK;					// clear buffered RB7
		PORTB_BUFFER |= REGISTER_PORTB & RB7_MASK;	// store new RB7	
	}
	
	PORTB_BUFFER &= PORTB_DIR; 						// Ensure only inputs are stored
}
#endif	

/* Private Functions */
    /* none */
    
/* end of hal_user_interrupt.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------