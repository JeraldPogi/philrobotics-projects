/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "PhilRoboKit_CoreLib_Header.h"              |
* |:----          |:----                                        |
* |Description:   | Header for Anito setup routines             |
* |Revision:      | v01.00.01                                   |
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
* |FW Version   |Date       |Author             |Description                                                |
* |:----        |:----      |:----              |:----                                                      |
* |v00.00.01    |201112xx   |Giancarlo A.       |Library Initial Release                                    |
* |v00.00.02    |201204xx   |Giancarlo A.       |Modify CONST_DEFAULT_CONFIG_PORTA                          |
* |v00.00.03    |20120708   |ESCII              |Modified delayUs and delayMs to disable timer 1 peripheral |
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture                  |
* |v01.00.01    |20130321   |ESC II             |Moved delay macro to compiler specific header              |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_HEADER_H__
#define __PHILROBOKIT_HEADER_H__

/* Include .h Library Files */    
#include "PhiRoboKit_HW_Config.h"

#if (__PHR_BOARD__==__HW_PHR_ANITO__)
    #include "setupAnito.h"
#endif

#if defined(HI_TECH_C)  
    #ifndef S_SPLINT_S 	                        /* Suppress SPLint Unrecognized ID Errors */
        #include "compilers\htc\htc_common.h"
    #else
        #include "compilers\htc\htc_pic_SPLint.h"
    #endif
#endif

/* User Configuration Definitions */  
#if (__PHR_CONTROLLER__==__MCU_PIC__)   
    #if defined(HI_TECH_C)  
        /* Anito Rev0 */
        #if defined( _16F873A ) || defined( _16F874A ) || defined( _16F876A ) || defined( _16F877A )  	
            #include "compilers\htc\htc_16f87xa.h"
                    
            #ifndef _XTAL_FREQ
                #define _XTAL_FREQ 20000000	    /* 20MHz Crystal */
            #endif
        /* Anito Rev1 */
        #elif defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 )  		
            #include "compilers\htc\htc_18fxx20.h"
            
            #ifndef _XTAL_FREQ
                #define _XTAL_FREQ 8000000	    /* 8MHz Internal Crystal */
            #endif
        /* Glutnix Variant */    
        #elif defined( _18F4620 )               
            #include "compilers\htc\htc_18fxx20.h"
            
            #ifndef _XTAL_FREQ
                #define _XTAL_FREQ 8000000	    /* 8MHz Internal Crystal */
            #endif 
        #else
        #endif
    #endif
#endif

/* Global Constants */
#define	INPUT					(1)
#define	OUTPUT					(0)
#define	ANALOG					(1)

#define	HIGH					(1)
#define	LOW						(0)

#ifndef TRUE
    #define	TRUE				(1)
    #define	FALSE				(0)
#endif

#ifndef NULL
    #define NULL                ('\0')
#endif
    
/* Macro and Configuration Definitions */
#if 0 

#define setRegVal(Register, Value)                  (Register = Value)
#define getRegVal(Register)                         (Register)
#define setMaskedReg(Register, Value, Mask, Shift)  \
Register &= ~Mask;                                  \
Register |= (Value << Shift) & Mask                 // semi-collon intentionally omitted
#define getMaskedReg(Register, Mask, Shift)         ((Register & Mask) >> Shift)

#define setBit(Register, Bit)                       (Register |= (1 << Bit))
#define clrBit(Register, Bit)                       (Register &= ~(1 << Bit))
#define toggleBit(Register, Bit)                    (Register ^= (1 << Bit))
#define getBitStatus(Register, Bit)                 ((Register & (1 << Bit) > 0) ? true : false)

#define setRegBits(Register, Mask)                  (Register |= Mask)
#define clrRegBits(Register, Mask)                  (Register &= ~Mask)

#endif

/* Public Function Prototypes */ 
    /* none */ 
    
#endif/* end of PhilRoboKit_CoreLib_Header.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
    