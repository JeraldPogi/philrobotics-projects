/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "htc_16f87xa.h"                             |
* |:----          |:----                                        |
* |Description:   | Hi-Tech C PIC16F877A Register Definitions   |
* |Revision:      | v00.02.00                                   |
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
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.01.00    |201112xx   |Giancarlo A.       |Library Initial Release            |
* |v00.01.01    |20120711   |ESCII              |Added defines for PWM and Timers   |
* |v00.01.02    |20130307   |ESCII              |Added macro for enabling and disabling global interrupts |
* |v00.01.03    |20130320   |ESCII              |Added definitions for TMR0 registers, delay macro moved here |
* |v00.02.00    |20130514   |ESCII              |Code Formatted                     |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HTC_16F87XA_H
#define __HTC_16F87XA_H

/* Include .h Library Files */
#include <htc.h>
#include "PhilRoboKit_CoreLib_GlobalDefs.h"

/* User Configuration Definitions */
/* none */

/* Global Constants */
/* Interrupt Controller */
#define REGISTER_INTCON     INTCON
#define BIT_INTCON_GIE      GIE
#define BIT_INTCON_PEIE     PEIE
#define BIT_INTCON_TMR0IE   TMR0IE
#define BIT_INTCON_INTE     INTE
#define BIT_INTCON_RBIE     RBIE
#define BIT_INTCON_TMR0IF   TMR0IF
#define BIT_INTCON_INTF     INTF
#define BIT_INTCON_RBIF     RBIF

#define REGISTER_PIR1       PIR1
#define BIT_PIR1_PSPIF      PSPIF
#define BIT_PIR1_ADIF       ADIF
#define BIT_PIR1_RCIF       RCIF
#define BIT_PIR1_TXIF       TXIF
#define BIT_PIR1_SSPIF      SPIF
#define BIT_PIR1_CCP1IF     CCP1IF
#define BIT_PIR1_TMR2IF     TMR2IF
#define BIT_PIR1_TMR1IF     TMR1IF

#define REGISTER_PIE1       PIE1
#define BIT_PIE1_PSPIE      PSPIE
#define BIT_PIE1_ADIE       ADIE
#define BIT_PIE1_RCIE       RCIE
#define BIT_PIE1_TXIE       TXIE
#define BIT_PIE1_SSPIE      SSPIE
#define BIT_PIE1_CCP1IE     CCP1IE
#define BIT_PIE1_TMR2IE     TMR2IE
#define BIT_PIE1_TMR1IE     TMR1IE

/* USART - Serial Communication Peripheral */
#define REGISTER_TXSTA      TXSTA
#define BIT_TXSTA_CSRC      CSRC
#define BIT_TXSTA_TX9       TX9
#define BIT_TXSTA_TXEN      TXEN
#define BIT_TXSTA_SYNC      SYNC
//#define BIT_TXSTA_RESERVED    TXSTA.3
#define BIT_TXSTA_BRGH      BRGH
#define BIT_TXSTA_TRMT      TRMT
#define BIT_TXSTA_TX9D      TX9D

#define REGISTER_RCSTA      RCSTA
#define BIT_RCSTA_SPEN      SPEN
#define BIT_RCSTA_RX9       RX9
#define BIT_RCSTA_SREN      SREN
#define BIT_RCSTA_CREN      CREN
#define BIT_RCSTA_ADDEN     ADDEN
#define BIT_RCSTA_FERR      FERR
#define BIT_RCSTA_OERR      OERR
#define BIT_RCSTA_RX9D      RX9D

#define REGISTER_TXREG      TXREG
#define REGISTER_RCREG      RCREG
#define REGISTER_SPBRG      SPBRG

/* TMR0 - 8/16Bit Timer Peripheral */
#define REGISTER_T0CON      OPTION_REG
//#define REGISTER_T0CON        T0CON
//#define BIT_T0CON_TMR0ON       TMR0ON
//#define BIT_T0CON_T08BIT       T08BIT
#define BIT_T0CON_T0CS      T0CS
#define BIT_T0CON_T0SE      T0SE
#define BIT_T0CON_PSA       PSA
#define BIT_T0CON_PS2       PS2
#define BIT_T0CON_PS1       PS1
#define BIT_T0CON_PS0       PS0

#define TMR0_PRESCALE_MASK  0x07            // Bit 0 to Bit 2

/* TMR1 - 16Bit Timer Peripheral */
#define REGISTER_T1CON      T1CON
//#define BIT_T1CON_RESERVED    T1CON.7
//#define BIT_T1CON_RESERVED    T1CON.6
#define BIT_T1CON_T1CKPS1   T1CKPS1
#define BIT_T1CON_T1CKPS0   T1CKPS0
#define BIT_T1CON_T1OSCEN   T1OSCEN
#define BIT_T1CON_T1SYNC    T1SYNC
#define BIT_T1CON_TMR1CS    TMR1CS
#define BIT_T1CON_TMR1ON    TMR1ON

#define TMR1_PRESCALE_MASK  0x30            // Bit 4 to Bit 5

/* ADC - Analog to Digital Converter Peripheral */
#define REGISTER_ADCON0     ADCON0
#define BIT_ADCON0_ADCS1    ADCS1
#define BIT_ADCON0_ADCS0    ADCS0
#define BIT_ADCON0_CHS2     CHS2
#define BIT_ADCON0_CHS1     CHS1
#define BIT_ADCON0_CHS0     CHS0
#define BIT_ADCON0_GO_DONE  GO_DONE
//#define BIT_ADCON0_RESERVED   ADCON.1
#define BIT_ADCON0_ADON     ADON

#define ADC_CONVCLOCK_MASK  0xC0            // Bit 6 to 7
#define ADC_CHANSEL_MASK    0x38            // Bit 3 to 5

#define REGISTER_ADCON1     ADCON1
#define BIT_ADCON1_ADFM     ADFM
#define BIT_ADCON1_ADCS2    ADCS2
//#define BIT_ADCON1_RESERVED   ADCON.5
//#define BIT_ADCON1_RESERVED   ADCON.4
#define BIT_ADCON1_PCFG3    PCFG3
#define BIT_ADCON1_PCFG2    PCFG2
#define BIT_ADCON1_PCFG1    PCFG1
#define BIT_ADCON1_PCFG0    PCFG0

#define ADC_CONFIG_MASK     0x0F            // Bit 0 to 3

/* TMRx - 8Bit Timer Peripheral */
#define REGISTER_PR2        PR2
//define REGISTER_PR4           PR4
//#define REGISTER_PR6          PR6

#define REGISTER_T2CON      T2CON
//#define REGISTER_T4CON        T4CON
//#define REGISTER_T6CON        T6CON

//#define BIT_TxCON_RESERVED    T2CON.7
#define BIT_T2CON_TOUTPS3   TOUTPS3
#define BIT_T2CON_TOUTPS2   TOUTPS2
#define BIT_T2CON_TOUTPS1   TOUTPS1
#define BIT_T2CON_TOUTPS0   TOUTPS0
#define BIT_T2CON_TMR2ON    TMR2ON
#define BIT_T2CON_T2CKPS1   T2CKPS1
#define BIT_T2CON_T2CKPS0   T2CKPS0

#define TMR_POSTSCALE_MASK      0x78        // Bit 3 to Bit 6    
#define TMR_PRESCALE_MASK       0x03        // Bit 0 to Bit 1       

/* CCPx - Capture-Compare/PWM Peripheral */
#define REGISTER_CCP1CON    CCP1CON
#define REGISTER_CCP2CON    CCP2CON
//#define REG_CCP3CON           CCP3CON
//#define REG_CCP4CON           CCP4CON

#define MASK_PxM1           0x80        // Bit 7 (For ECCP Only)
#define MASK_PxM0           0x40        // Bit 6 (For ECCP Only)
#define MASK_DCxB1          0x20        // Bit 5
#define MASK_DCxB0          0x10        // Bit 4
#define MASK_CCPxM3         0x08        // Bit 3
#define MASK_CCPxM2         0x04        // Bit 2
#define MASK_CCPxM1         0x02        // Bit 1
#define MASK_CCPxM0         0x01        // Bit 0

#define ECCP_CONFIG_MASK    0xC0        // Bit 6 to 7 (For ECCP Only)
#define PWM_DC_LSB_MASK     0x30        // Bit 4 to 5
#define CCP_MODE_MASK       0x0F        // Bit 0 to 3

#define REGISTER_CCPR1L     CCPR1L
#define REGISTER_CCPR2L     CCPR2L
//#define REG_CCPR3L            CCPR3L
//#define REG_CCPR4L            CCPR4L

#if 0 // not for PIC16F877A
#define REGISTER_CCPTMRS    CCPTMRS
#define MASK_C4TSEL1        0x80        // Bit 7 
#define MASK_C4TSEL0        0x40        // Bit 6 
#define MASK_C3TSEL1        0x20        // Bit 5
#define MASK_C3TSEL0        0x10        // Bit 4
#define MASK_C2TSEL1        0x08        // Bit 3
#define MASK_C2TSEL0        0x04        // Bit 2
#define MASK_C1TSEL1        0x02        // Bit 1
#define MASK_C1TSEL0        0x01        // Bit 0

#define C4_TIMERSEL_MASK    0xC0        // Bit 6 to 7
#define C3_TIMERSEL_MASK    0x30        // Bit 4 to 5
#define C2_TIMERSEL_MASK    0x0C        // Bit 2 to 3
#define C1_TIMERSEL_MASK    0x03        // Bit 0 to 1
#endif

#define REGISTER_TRISA      TRISA
#define REGISTER_TRISB      TRISB
#define REGISTER_TRISC      TRISC
#define REGISTER_TRISD      TRISD
#define REGISTER_TRISE      TRISE

#define REGISTER_PORTA      PORTA
#define REGISTER_PORTB      PORTB
#define REGISTER_PORTC      PORTC
#define REGISTER_PORTD      PORTD
#define REGISTER_PORTE      PORTE

#if 0
#define REGISTER_LATA       LATA
#define REGISTER_LATB       LATB
#define REGISTER_LATC       LATC
#define REGISTER_LATD       LATD
#define REGISTER_LATE       LATE
#endif

#if defined( _16F873A ) || defined( _16F874A ) || defined( _16F876A ) || defined( _16F877A )
#define REGISTER_TMR0L      TMR0
#else
#define REGISTER_TMR0H      TMR0H
#define REGISTER_TMR0L      TMR0L
#endif

#define REGISTER_TMR1H      TMR1H
#define REGISTER_TMR1L      TMR1L

#define REGISTER_TMR2H      TMR2H
#define REGISTER_TMR2L      TMR2L

#define REGISTER_ADRESH     ADRESH
#define REGISTER_ADRESL     ADRESL

/* Macro and Configuration Definitions */
/* Global Interrupts Disable/Enable */
/*@notfunction@*/
#define enableGlobalInt()                           \
    BIT_INTCON_GIE = 1;                             \
    BIT_INTCON_PEIE = 1                             // semi-collon intentionally omitted

/*@notfunction@*/
#define disableGlobalInt()                          \
    BIT_INTCON_GIE = 0;                             \
    BIT_INTCON_PEIE = 0                             // semi-collon intentionally omitted

/*@notfunction@*/
#define getGlobalIntEnableStatus()                  ((BIT_INTCON_GIE) ? true : false)

/* Timer Delay Functions, Note: These are blocking functions, do not call inside ISR!!! */
/*@notfunction@*/
#define delayUs(x)                                  \
    while((false == getGlobalIntEnableStatus()) && (true == get_gblInitialized_FlagValue())){};   \
    disableGlobalInt();                             \
    __delay_us(x);                                  \
    enableGlobalInt()                               // semi-collon intentionally omitted

/*@notfunction@*/
#define delayMs(x)                                  \
    while((false == getGlobalIntEnableStatus()) && (true == get_gblInitialized_FlagValue())){};   \
    disableGlobalInt();                             \
    __delay_ms(x);                                  \
    enableGlobalInt()                               // semi-collon intentionally omitted

/* Public Function Prototypes */
/* none */

#endif/* end of htc_16f87xa.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
