/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "sdcc_16f87xa.h"                                |
* |:----          |:----                                            |
* |Description:   | SDCC C PIC18F4520 Register Definitions          |
* |Revision:      | v00.02.00                                       |
* |Author:        | Efren Cruzat II                                 |
* |               |                                                 |
* |Dependencies:  |                                                 |
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
* |v00.01.04    |20130630   |ESCII              |Fixed SPLINT Errors                |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __SDCC_PIC18_H
#define __SDCC_PIC18_H
/* Include .h Library Files */
#include <delay.h>
#include "..\..\PhilRoboKit_CoreLib_GlobalDefs.h"

/* User Configuration Definitions */
/* none */

/* Global Constants */
/* Interrupt Controller */
#define REGISTER_INTCON     INTCON
#define BIT_INTCON_GIE      INTCONbits.GIE
#define BIT_INTCON_PEIE     INTCONbits.PEIE
#define BIT_INTCON_TMR0IE   INTCONbits.TMR0IE
#define BIT_INTCON_INTE     INTCONbits.INT0IE
#define BIT_INTCON_RBIE     INTCONbits.RBIE
#define BIT_INTCON_TMR0IF   INTCONbits.TMR0IF
#define BIT_INTCON_INTF     INTCONbits.INT0IF
#define BIT_INTCON_RBIF     INTCONbits.RBIF

#define REGISTER_INTCON2    INTCON2
#define DIS_PORTB_PULLUP    INTCON2bits.RBPU
#define INT0_EDGE           INTCON2bits.INTEDG0
#define INT1_EDGE           INTCON2bits.INTEDG1
#define INT2_EDGE           INTCON2bits.INTEDG2

#define REGISTER_INTCON3    INTCON3
#define BIT_INTCON_INT1E    INTCON3bits.INT1IE
#define BIT_INTCON_INT1F    INTCON3bits.INT1IF
#define BIT_INTCON_INT2E    INTCON3bits.INT2IE
#define BIT_INTCON_INT2F    INTCON3bits.INT2IF

#define REGISTER_PIR1       PIR1
#define BIT_PIR1_PSPIF      PIR1bits.PSPIF
#define BIT_PIR1_ADIF       PIR1bits.ADIF
#define BIT_PIR1_RCIF       PIR1bits.RCIF
#define BIT_PIR1_TXIF       PIR1bits.TXIF
#define BIT_PIR1_SSPIF      PIR1bits.SPIF
#define BIT_PIR1_CCP1IF     PIR1bits.CCP1IF
#define BIT_PIR1_TMR2IF     PIR1bits.TMR2IF
#define BIT_PIR1_TMR1IF     PIR1bits.TMR1IF

#define REGISTER_PIE1       PIE1
#define BIT_PIE1_PSPIE      PIE1bits.PSPIE
#define BIT_PIE1_ADIE       PIE1bits.ADIE
#define BIT_PIE1_RCIE       PIE1bits.RCIE
#define BIT_PIE1_TXIE       PIE1bits.TXIE
#define BIT_PIE1_SSPIE      PIE1bits.SSPIE
#define BIT_PIE1_CCP1IE     PIE1bits.CCP1IE
#define BIT_PIE1_TMR2IE     PIE1bits.TMR2IE
#define BIT_PIE1_TMR1IE     PIE1bits.TMR1IE

/* USART - Serial Communication Peripheral */
#define REGISTER_TXSTA      TXSTA
#define BIT_TXSTA_CSRC      TXSTAbits.CSRC
#define BIT_TXSTA_TX9       TXSTAbits.TX9
#define BIT_TXSTA_TXEN      TXSTAbits.TXEN
#define BIT_TXSTA_SYNC      TXSTAbits.SYNC
//#define BIT_TXSTA_RESERVED    TXSTA.3
#define BIT_TXSTA_BRGH      TXSTAbits.BRGH
#define BIT_TXSTA_TRMT      TXSTAbits.TRMT
#define BIT_TXSTA_TX9D      TXSTAbits.TX9D

#define REGISTER_RCSTA      RCSTA
#define BIT_RCSTA_SPEN      RCSTAbits.SPEN
#define BIT_RCSTA_RX9       RCSTAbits.RX9
#define BIT_RCSTA_SREN      RCSTAbits.SREN
#define BIT_RCSTA_CREN      RCSTAbits.CREN
#define BIT_RCSTA_ADDEN     RCSTAbits.ADDEN
#define BIT_RCSTA_FERR      RCSTAbits.FERR
#define BIT_RCSTA_OERR      RCSTAbits.OERR
#define BIT_RCSTA_RX9D      RCSTAbits.RX9D

#define REGISTER_BAUDCON    BAUDCON

#define REGISTER_TXREG      TXREG
#define REGISTER_RCREG      RCREG
#define REGISTER_SPBRG      SPBRG

/* TMR0 - 8/16Bit Timer Peripheral */
//#define REGISTER_T0CON    OPTION_REG				esc.comment PIC16
#define REGISTER_T0CON      T0CON
#define BIT_T0CON_TMR0ON    T0CONbits.TMR0ON
#define BIT_T0CON_T08BIT    T0CONbits.T08BIT
#define BIT_T0CON_T0CS      T0CONbits.T0CS
#define BIT_T0CON_T0SE      T0CONbits.T0SE
#define BIT_T0CON_PSA       T0CONbits.PSA
#define BIT_T0CON_PS2       T0CONbits.PS2
#define BIT_T0CON_PS1       T0CONbits.PS1
#define BIT_T0CON_PS0       T0CONbits.PS0

#define TMR0_PRESCALE_MASK  0x07            // Bit 0 to Bit 2

/* TMR1 - 16Bit Timer Peripheral */
#define REGISTER_T1CON      T1CON
#define BIT_T1CON_RD16      T1CONbits.RD16
#define BIT_T1CON_T1RUN     T1CONbits.T1RUN
#define BIT_T1CON_T1CKPS1   T1CONbits.T1CKPS1
#define BIT_T1CON_T1CKPS0   T1CONbits.T1CKPS0
#define BIT_T1CON_T1OSCEN   T1CONbits.T1OSCEN
#define BIT_T1CON_T1SYNC    T1CONbits.T1SYNC
#define BIT_T1CON_TMR1CS    T1CONbits.TMR1CS
#define BIT_T1CON_TMR1ON    T1CONbits.TMR1ON

#define TMR1_PRESCALE_MASK  0x30            // Bit 4 to Bit 5

/* ADC - Analog to Digital Converter Peripheral */
#define REGISTER_ADCON0     ADCON0
//#define BIT_ADCON0_RESERVED   ADCON.7
//#define BIT_ADCON0_RESERVED   ADCON.6
#define BIT_ADCON0_CHS3     ADCON0bits.CHS3
#define BIT_ADCON0_CHS2     ADCON0bits.CHS2
#define BIT_ADCON0_CHS1     ADCON0bits.CHS1
#define BIT_ADCON0_CHS0     ADCON0bits.CHS0
#define BIT_ADCON0_GO_DONE  ADCON0bits.GO_DONE
#define BIT_ADCON0_ADON     ADCON0bits.ADON

#define ADC_CHANSEL_MASK    0x3C            // Bit 2 to 5

#define REGISTER_ADCON1     ADCON1
//#define BIT_ADCON1_RESERVED   ADCON.7
//#define BIT_ADCON1_RESERVED   ADCON.6
#define BIT_ADCON1_VCFG1    ADCON1bits.VCFG1
#define BIT_ADCON1_VCFG0    ADCON1bits.VCFG0
#define BIT_ADCON1_PCFG3    ADCON1bits.PCFG3
#define BIT_ADCON1_PCFG2    ADCON1bits.PCFG2
#define BIT_ADCON1_PCFG1    ADCON1bits.PCFG1
#define BIT_ADCON1_PCFG0    ADCON1bits.PCFG0

#define ADC_CONFIG_MASK     0x3F            // Bit 0 to 5

#define REGISTER_ADCON2     ADCON2
#define BIT_ADCON2_ADFM     ADCON2bits.ADFM
//#define BIT_ADCON2_RESERVED   ADCON.6
#define BIT_ADCON2_ACQT2    ADCON2bits.ACQT2
#define BIT_ADCON2_ACQT1    ADCON2bits.ACQT1
#define BIT_ADCON2_ACQT0    ADCON2bits.ACQT0
#define BIT_ADCON2_ADCS2    ADCON2bits.ADCS2
#define BIT_ADCON2_ADCS1    ADCON2bits.ADCS1
#define BIT_ADCON2_ADCS0    ADCON2bits.ADCS0

#define ADC_CONVCLOCK_MASK  0x03            // Bit 0 to 2
#define ADC_TAD_MASK        0x38            // Bit 3 to 5

/* TMRx - 8Bit Timer Peripheral */
#define REGISTER_PR2        PR2
//define REGISTER_PR4       PR4
//#define REGISTER_PR6      PR6

#define REGISTER_T2CON      T2CON
//#define REGISTER_T4CON    T4CON
//#define REGISTER_T6CON    T6CON

//#define BIT_TxCON_RESERVED    T2CON.7
#define BIT_T2CON_TOUTPS3   T2CONbits.TOUTPS3
#define BIT_T2CON_TOUTPS2   T2CONbits.TOUTPS2
#define BIT_T2CON_TOUTPS1   T2CONbits.TOUTPS1
#define BIT_T2CON_TOUTPS0   T2CONbits.TOUTPS0
#define BIT_T2CON_TMR2ON    T2CONbits.TMR2ON
#define BIT_T2CON_T2CKPS1   T2CONbits.T2CKPS1
#define BIT_T2CON_T2CKPS0   T2CONbits.T2CKPS0

#define TMR_POSTSCALE_MASK  0x78            // Bit 3 to Bit 6    
#define TMR_PRESCALE_MASK   0x03            // Bit 0 to Bit 1       

/* CCPx - Capture-Compare/PWM Peripheral */
#define REGISTER_CCP1CON    CCP1CON
#define REGISTER_CCP2CON    CCP2CON
//#define REG_CCP3CON           CCP3CON
//#define REG_CCP4CON           CCP4CON

#define MASK_PxM1           0x80            // Bit 7 (For ECCP Only)
#define MASK_PxM0           0x40            // Bit 6 (For ECCP Only)
#define MASK_DCxB1          0x20            // Bit 5
#define MASK_DCxB0          0x10            // Bit 4
#define MASK_CCPxM3         0x08            // Bit 3
#define MASK_CCPxM2         0x04            // Bit 2
#define MASK_CCPxM1         0x02            // Bit 1
#define MASK_CCPxM0         0x01            // Bit 0

#define ECCP_CONFIG_MASK    0xC0            // Bit 6 to 7 (For ECCP Only)
#define PWM_DC_LSB_MASK     0x30            // Bit 4 to 5
#define CCP_MODE_MASK       0x0F            // Bit 0 to 3

#define REGISTER_CCPR1L     CCPR1L
#define REGISTER_CCPR2L     CCPR2L
//#define REG_CCPR3L            CCPR3L
//#define REG_CCPR4L            CCPR4L

#if 0 // not for PIC16F877A
#define REGISTER_CCPTMRS    CCPTMRS
#define MASK_C4TSEL1        0x80            // Bit 7 
#define MASK_C4TSEL0        0x40            // Bit 6 
#define MASK_C3TSEL1        0x20            // Bit 5
#define MASK_C3TSEL0        0x10            // Bit 4
#define MASK_C2TSEL1        0x08            // Bit 3
#define MASK_C2TSEL0        0x04            // Bit 2
#define MASK_C1TSEL1        0x02            // Bit 1
#define MASK_C1TSEL0        0x01            // Bit 0

#define C4_TIMERSEL_MASK    0xC0            // Bit 6 to 7
#define C3_TIMERSEL_MASK    0x30            // Bit 4 to 5
#define C2_TIMERSEL_MASK    0x0C            // Bit 2 to 3
#define C1_TIMERSEL_MASK    0x03            // Bit 0 to 1
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

#define REGISTER_LATA       LATA
#define REGISTER_LATB       LATB
#define REGISTER_LATC       LATC
#define REGISTER_LATD       LATD
#define REGISTER_LATE       LATE

#define REGISTER_TMR0H      TMR0H
#define REGISTER_TMR0L      TMR0L

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
    __asm nop __endasm;                             \
    enableGlobalInt()                               // semi-collon intentionally omitted

/*@notfunction@*/
#define delayMs(x)                                  \
    while((false == getGlobalIntEnableStatus()) && (true == get_gblInitialized_FlagValue())){};   \
    disableGlobalInt();                             \
    delay1mtcy((8*x));                              \
    enableGlobalInt()                               // semi-collon intentionally omitted

/* Public Function Prototypes */
/* none */

#endif/* end of htc_16f87xa.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
