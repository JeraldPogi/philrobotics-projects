/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_user_interrupt.h"                      |
* |:----          |:----                                        |
* |Description:   | This is a header file of the external pin interrupt driver |
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
* |v00.00.01    |20130207   |ESCII              |Library Initial Release            |
* |v00.00.02    |20130402   |ESCII              |Changed PORTB_BUFFER,PORTB_DIR type from int to uint8_t |
* |v00.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_EXT_INTERRUPT_H__
#define __HAL_EXT_INTERRUPT_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "hal_user_interrupt_test_stub.h"
#else
#include "PhilRoboKit_CoreLib_Macro.h"
#include "hal_gpio.h"
#endif

/* User Configuration Definitions */
#define EXTINTENABLED       TRUE

#if (__PHR_CONTROLLER__==__MCU_PIC18__)
#define EXTINT1ENABLED      TRUE
#define EXTINT2ENABLED      TRUE
#endif

#define RBINTENABLED        TRUE

/* Global Constants */
/* Interrupt Modes */
enum InterruptModes_et
{
    LOWSTATE,                                   // Trigger if Int Pin is Low (Currently Not Supported)
    CHANGE,                                     // Trigger if there is a change on interrupt pin state
    RISING,                                     // Trigger on rising edge
    FALLING                                     // Trigger on falling edge
};

/* PORTB  Pinmask */
#define RB6_MASK                                0x40
#define RB7_MASK                                0x80

/* Macro and Configuration Definitions */
#define hal_enableEXTInt()                      (BIT_INTCON_INTE = 1)
#define hal_disableEXTInt()                     (BIT_INTCON_INTE = 0)
#define hal_getEXTIntEnableStatus()             ((BIT_INTCON_INTE) ? true : false)

#define hal_clrEXTIntFlag()                     (BIT_INTCON_INTF = 0)
#define hal_getEXTIntFlag()                     ((BIT_INTCON_INTF) ? true : false)

#if (EXTINT1ENABLED == TRUE)
#define hal_enableEXTInt1()                     (BIT_INTCON_INT1E = 1)
#define hal_disableEXTInt1()                    (BIT_INTCON_INT1E = 0)
#define hal_getEXTInt1EnableStatus()            ((BIT_INTCON_INT1E) ? true : false)

#define hal_clrEXTInt1Flag()                    (BIT_INTCON_INT1F = 0)
#define hal_getEXTInt1Flag()                    ((BIT_INTCON_INT1F) ? true : false)
#endif

#if (EXTINT2ENABLED == TRUE)
#define hal_enableEXTInt2()                     (BIT_INTCON_INT2E = 1)
#define hal_disableEXTInt2()                    (BIT_INTCON_INT2E = 0)
#define hal_getEXTInt2EnableStatus()            ((BIT_INTCON_INT2E) ? true : false)

#define hal_clrEXTInt2Flag()                    (BIT_INTCON_INT2F = 0)
#define hal_getEXTInt2Flag()                    ((BIT_INTCON_INT2F) ? true : false)
#endif

#define hal_enableRBInt()                       (BIT_INTCON_RBIE = 1)
#define hal_disableRBInt()                      (BIT_INTCON_RBIE = 0)
#define hal_getRBIntEnableStatus()              ((BIT_INTCON_RBIE) ? true : false)

#define hal_clrRBIntFlag()                      (BIT_INTCON_RBIF = 0)
#define hal_getRBIntFlag()                      ((BIT_INTCON_RBIF) ? true : false)

#define K_INT_PORTB_REG                         (REGISTER_PORTB)
#define K_INT0_EDGE_BIT                         (INT0_EDGE)
#define K_INT1_EDGE_BIT                         (INT1_EDGE)
#define K_INT2_EDGE_BIT                         (INT2_EDGE)

/* Public Function Prototypes */
//#if(EXTINTENABLED == TRUE)
//enum InterruptModes_et eMod0_Mode, eMod1_Mode, eMod2_Mode, eMod3_Mode;
//#endif
//
//#if(RBINTENABLED == TRUE)
//enum InterruptModes_et eMod4_Mode, eMod5_Mode, eMod6_Mode, eMod7_Mode;
//#endif

void nullIntFunction();

#if(EXTINTENABLED == TRUE)
void extIntISR(void);
void extInt1ISR(void);
void extInt2ISR(void);
//void (*pt2INT0)() = &nullIntFunction;       // interrupt function pointer
//void (*pt2INT1)() = &nullIntFunction;       // interrupt function pointer
//void (*pt2INT2)() = &nullIntFunction;       // interrupt function pointer
//void (*pt2INT3)() = &nullIntFunction;     // interrupt function pointer
#endif

#if(RBINTENABLED == TRUE)
void rbIntISR(void);
//void (*pt2INT4)() = &nullIntFunction;       // interrupt function pointer
//void (*pt2INT5)() = &nullIntFunction;       // interrupt function pointer
//void (*pt2INT6)() = &nullIntFunction;       // interrupt function pointer
//void (*pt2INT7)() = &nullIntFunction;       // interrupt function pointer
#endif

#endif /* end of hal_user_interrupt.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
