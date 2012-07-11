//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRobokit_CoreLib_user_interrupt.c - External Interrupt
// Description:	
// Revision:    v00.00.03
// Author:      Efren S. Cruzat II
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
// FW Version      Date        Author         Description
// v00.00.01		20120608	ESCII			- Library Initial Release
// v00.00.02		20120624	ESCII			- Reorganized for Clarity
//												- Have more strick policy on scope of
//													variables and functions
// v00.00.03		20120711	ESCII			- Code Cleanup
//										- Removed void type on function pointers
//										- Enumerated interrupt modes and sources
//***********************************************************************************
#include "lib\PhilRobokit_CoreLib_user_interrupt.h"

/* Local Variables */
static int PORTB_BUFFER,PORTB_DIR;

#if(EXTINTENABLED == TRUE)
static enum etInterruptModes mode0;
#endif
	
#if(RBINTENABLED == TRUE)
static enum etInterruptModes mode1, mode2, mode3, mode4, mode5;
#endif

/* Private Function Prototypes */
static 	void nullIntFunction();

#if(EXTINTENABLED == TRUE)
static 	void extInterruptHandler(void);
static 	void (*pt2INT0)() = &nullIntFunction;  		// interrupt function pointer	
#endif

#if(RBINTENABLED == TRUE)
static 	void rbInterruptHandler(void);
static 	void (*pt2INT1)() = &nullIntFunction;  	// interrupt function pointer
static 	void (*pt2INT2)() = &nullIntFunction;  	// interrupt function pointer
static 	void (*pt2INT3)() = &nullIntFunction;  	// interrupt function pointer
static 	void (*pt2INT4)() = &nullIntFunction;  	// interrupt function pointer
#endif

/* Public Functions */
//***********************************************************************************
// intSource: Interrupt Pin Assignment
// 	INT0 - D8: External Interrupt (RB0)
// 	INT1 - D12: Interrupt on Pin Change (RB4)
// 	INT2 - D13: Interrupt on Pin Change (RB5)
// 	INT3 - PGC: Interrupt on Pin Change (RB6)
// 	INT4 - PGD: Interrupt on Pin Change (RB7)
//***********************************************************************************
// function: name of the function ISR to call when interrupt occured, 
// 	this function must take no parameters and does not return anything
//***********************************************************************************
// mode: Defines how the interrupt should be triggered
// 	LOW - Trigger if Int Pin is Low (Currently Not Supported)
// 	CHANGE -  Trigger if there is a change on interrupt pin state
// 	RISING - Trigger on rising edge
// 	FALLING - Trigger on falling edge
//***********************************************************************************
void setupUserInterrupt(enum etInterruptSources eIntSource, void(*function)(), enum etInterruptModes eIntMode) 
{
	/* External Interrupt */
	if(INT0 == eIntSource)
	{
	#if(EXTINTENABLED == TRUE)	
		/* Set Int Pin to Input */
		setPinInput(D8);
		
		if(RISING == eIntMode)
		{
			INTEDG = 1;								// Start detecting at rising edge
		}
		else if(FALLING == eIntMode)
		{
			INTEDG = 0;								// Start detecting at falling edge
		}
		else if(CHANGE == eIntMode)
		{
			/* Set the Inverse  of Current Pin State*/
			if(isPinHigh(D8))
			{
				INTEDG 	= 0;
			}
			else
			{
				INTEDG 	= 1;
			}
		}
		else
		{
			/* Do Nothing */
		}

		mode0 = eIntMode;
		pt2INT0 = function;							// assign INT0 Function Pointer
		BIT_INTCON_INTF = 0;
		BIT_INTCON_INTE = 1;
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
		    setPinInput(D12);
			PORTB_DIR |= RB4_MASK;
			mode1 = eIntMode;
			pt2INT1 = function;						// assign INT1 Function Pointer
		}
		/* RB5 Interrupt on Change */
		else if(INT2 == eIntSource)
		{
			/* Set Int Pin to Input */
		    setPinInput(D13);
			PORTB_DIR |= RB5_MASK;
			mode2 = eIntMode;
			pt2INT2 = function;						// assign INT2 Function Pointer			
		}
		/* RB6 Interrupt on Change */
		else if(INT3 == eIntSource)
		{
			/* Set Int Pin to Input */
		    REGISTER_TRISB |= RB6_MASK;
			PORTB_DIR |= RB6_MASK;
			mode3 = eIntMode;
			pt2INT3 = function;						// assign INT3 Function Pointer			
		}		
		/* RB7 Interrupt on Change */
		else if(INT4 == eIntSource)
		{
			/* Set Int Pin to Input */
		    REGISTER_TRISB |= RB7_MASK;
			PORTB_DIR |= RB7_MASK;
			mode4 = eIntMode;
			pt2INT4 = function;						// assign INT4 Function Pointer			
		}
		else
		{
			/* Do Nothing */
		}
		
		/* PORTB States Reference */
		PORTB_BUFFER = REGISTER_PORTB & PORTB_DIR;	// Ignore Outputs
		
		BIT_INTCON_RBIF = 0;
		BIT_INTCON_RBIE = 1;
	#endif		
	}
}

void userInterruptHandler(void)
{
	/*  Check External Interrupt */
	if(BIT_INTCON_INTF&&BIT_INTCON_INTE)
	{
		BIT_INTCON_INTE = 0;						// Temporary Disable Interrupt
#if(EXTINTENABLED == TRUE)	
		extInterruptHandler();
#endif		
		BIT_INTCON_INTF = 0;
		BIT_INTCON_INTE = 1;						// Reenable Interrupt
	}

	/* Check Interrupt on PortB Change */
	if(BIT_INTCON_RBIF&&BIT_INTCON_RBIE)
	{
		BIT_INTCON_RBIE = 0;						// Temporary Disable Interrupt
#if(RBINTENABLED == TRUE)	
		rbInterruptHandler();
#endif	
		BIT_INTCON_RBIF = 0;
		BIT_INTCON_RBIE = 1;						// Reenable Interrupt
	}
}

/* Private Functions */
static 	void nullIntFunction(void)
{
	;/* NULL */
}

#if(EXTINTENABLED == TRUE)	
static 	void extInterruptHandler()
{
	if(CHANGE == mode0)
	{
		INTEDG = ~INTEDG;							// toggle Int0 edge to trigger on next interrupt edge
	}
	
	/* Call User Function */
	pt2INT0();
}
#endif	

#if(RBINTENABLED == TRUE)	
static 	void rbInterruptHandler(void)
{
	int PORTCHANGE_BUFFER; 

	/* Capture Pin Changes */
	PORTCHANGE_BUFFER = PORTB_BUFFER ^ (REGISTER_PORTB & PORTB_DIR);	// Ignore Outputs
	
	if(RB4_MASK == (PORTCHANGE_BUFFER&RB4_MASK))
	{
		if((RISING == mode1) && isPinLow(D12))
		{
			/* Ignore and wait for the next interrupt */
		}	
		else if((FALLING == mode1) && isPinHigh(D12))
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
		if((RISING == mode2) && isPinLow(D13))
		{
			/* Ignore and wait for the next interrupt */
		}	
		else if((FALLING == mode3) && isPinHigh(D13))
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

/* end of PhilRobokit_CoreLib_user_interrupt.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	





