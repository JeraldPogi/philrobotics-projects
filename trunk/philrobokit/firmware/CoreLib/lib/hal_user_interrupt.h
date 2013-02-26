/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_user_interrupt.h"                      |
* |:----          |:----                                        |
* |Description:   | This is a header file of the external pin interrupt driver |
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

#ifndef __HAL_EXT_INTERRUPT_H__
#define __HAL_EXT_INTERRUPT_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>

/* User Configuration Definitions */
#define EXTINTENABLED		TRUE
#define RBINTENABLED 		TRUE
    
/* Global Constants */
	/* Interrupt Modes */
enum etInterruptModes
{
	LOWSTATE				// Trigger if Int Pin is Low (Currently Not Supported)
	,CHANGE                 // Trigger if there is a change on interrupt pin state
	,RISING                 // Trigger on rising edge
	,FALLING                // Trigger on falling edge
};

	/* PORTB  Pinmask */
#define RB4_MASK	0x10
#define RB5_MASK	0x20
#define RB6_MASK	0x40
#define RB7_MASK	0x80
  
/* Macro and Configuration Definitions */
	/*@notfunction@*/
	#define hal_enableEXTInt()           			(BIT_INTCON_INTE = 1)
	/*@notfunction@*/
	#define hal_disableEXTInt()          			(BIT_INTCON_INTE = 0)
    /*@notfunction@*/
    #define hal_getEXTIntEnableStatus()           	((BIT_INTCON_INTE) ? true : false)
    
	/*@notfunction@*/
	#define hal_clrEXTIntFlag()         			(BIT_INTCON_INTF = 0)
    /*@notfunction@*/
    #define hal_getEXTIntFlag()                     ((BIT_INTCON_INTF) ? true : false)
    
    /*@notfunction@*/
	#define hal_enableRBInt()           			(BIT_INTCON_RBIE = 1)
	/*@notfunction@*/
	#define hal_disableRBInt()          			(BIT_INTCON_RBIE = 0)
    /*@notfunction@*/
    #define hal_getRBIntEnableStatus()           	((BIT_INTCON_RBIE) ? true : false)
    
	/*@notfunction@*/
	#define hal_clrRBIntFlag()         			    (BIT_INTCON_RBIF = 0)
    /*@notfunction@*/
    #define hal_getRBIntFlag()                      ((BIT_INTCON_RBIF) ? true : false)
    
    #define K_INT_PORT_REG                          (REGISTER_PORTB)
    #define K_INT_EDGE_BIT                          (INTEDG)
    
/* Public Function Prototypes */
    /* Todo: Define at Global.. */
    int PORTB_BUFFER,PORTB_DIR;
    
#if(EXTINTENABLED == TRUE)
    enum etInterruptModes mode0;
#endif
	
#if(RBINTENABLED == TRUE)
    enum etInterruptModes mode1, mode2, mode3, mode4, mode5;
#endif

    void nullIntFunction();
    
#if(EXTINTENABLED == TRUE)
    void extIntISR(void);
    void (*pt2INT0)() = &nullIntFunction;  	// interrupt function pointer	
#endif

#if(RBINTENABLED == TRUE)
    void rbIntISR(void);
    void (*pt2INT1)() = &nullIntFunction;  	// interrupt function pointer
    void (*pt2INT2)() = &nullIntFunction;  	// interrupt function pointer
    void (*pt2INT3)() = &nullIntFunction;  	// interrupt function pointer
    void (*pt2INT4)() = &nullIntFunction;  	// interrupt function pointer
#endif

#endif /* end of hal_user_interrupt.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	