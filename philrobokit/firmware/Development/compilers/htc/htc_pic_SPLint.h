/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "htc_pic_SPLint.h"                       |
* |:----          |:----                                        |
* |Description:   | (Dummy) Hi-Tech C Compiler Register Definitions|
* |Revision:      | v00.00.01                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifdef S_SPLINT_S 			// Suppress SPLint Unrecognized ID Errors
/* Include .h Library Files */
    /* none */

/* User Configuration Definitions */
    /* none */
    
/* Global Constants */
    /* Interrupt Controler */
#define	REGISTER_INTCON		0x55
    #define BIT_INTCON_GIE		0x00
    #define BIT_INTCON_PEIE		0x00
    #define BIT_INTCON_TMR0IE	0x00
    #define BIT_INTCON_INTE		0x00
    #define BIT_INTCON_RBIE		0x00
    #define BIT_INTCON_TMR0IF	0x00	
    #define BIT_INTCON_INTF		0x00
    #define BIT_INTCON_RBIF		0x00
            
#define	REGISTER_PIR1		0x55
    #define BIT_PIR1_PSPIF		0x00
    #define BIT_PIR1_ADIF		0x00
    #define BIT_PIR1_RCIF		0x00
    #define BIT_PIR1_TXIF		0x00
    #define BIT_PIR1_SSPIF		0x00
    #define BIT_PIR1_CCP1IF		0x00
    #define BIT_PIR1_TMR2IF		0x00
    #define BIT_PIR1_TMR1IF		0x00

#define	REGISTER_PIE1		0x55
    #define BIT_PIE1_PSPIE		0x00
    #define BIT_PIE1_ADIE		0x00
    #define BIT_PIE1_RCIE		0x00
    #define BIT_PIE1_TXIE		0x00
    #define BIT_PIE1_SSPIE		0x00
    #define BIT_PIE1_CCP1IE		0x00	
    #define BIT_PIE1_TMR2IE		0x00
    #define BIT_PIE1_TMR1IE		0x00
        
    /* USART - Serial Communication Peripheral */
#define	REGISTER_TXSTA		0x55
    #define	BIT_TXSTA_CSRC		0x00
    #define	BIT_TXSTA_TX9		0x00
    #define	BIT_TXSTA_TXEN		0x00
    #define	BIT_TXSTA_SYNC		0x00
    //#define BIT_TXSTA_RESERVED	TXSTA.3
    #define	BIT_TXSTA_BRGH		0x00
    #define	BIT_TXSTA_TRMT		0x00
    #define	BIT_TXSTA_TX9D		0x00
    
#define REGISTER_RCSTA		0x55
    #define	BIT_RCSTA_SPEN		0x00
    #define	BIT_RCSTA_RX9		0x00
    #define	BIT_RCSTA_SREN		0x00
    #define	BIT_RCSTA_CREN		0x00
    #define	BIT_RCSTA_ADDEN		0x00
    #define	BIT_RCSTA_FERR		0x00
    #define	BIT_RCSTA_OERR		0x00
    #define	BIT_RCSTA_RX9D		0x00		
	
    /* TMR0 - 8/16Bit Timer Peripheral */
#define REGISTER_T0CON      0x55
#define REGISTER_T0CON      0x55
    #define BIT_T0CON_TMR0ON 	0x00
    #define BIT_T0CON_T08BIT 	0x00
    #define BIT_T0CON_T0CS 	    0x00
    #define BIT_T0CON_T0SE 	    0x00
    #define BIT_T0CON_PSA 	    0x00
    #define BIT_T0CON_PS2 	    0x00
    #define BIT_T0CON_PS1 	    0x00
    #define BIT_T0CON_PS0 	    0x00
        
#define PRESCALER_MASK  0x07                // Bit 0 to Bit 2
    
    /* TMR1 - 16Bit Timer Peripheral */
#define	REGISTER_T1CON		0x55
    //#define BIT_T1CON_RESERVED	T1CON.7
    //#define BIT_T1CON_RESERVED	T1CON.6
    #define BIT_T1CON_T1CKPS1	0x00
    #define BIT_T1CON_T1CKPS0	0x00
    #define BIT_T1CON_T1OSCEN	0x00
    #define BIT_T1CON_T1SYNC	0x00
    #define BIT_T1CON_TMR1CS	0x00
    #define BIT_T1CON_TMR1ON	0x00
		
    /* ADC - Analog to Digital Converter Peripheral */		
#define	REGISTER_ADCON0		0x55
    #define BIT_ADCON0_ADCS1	0x00
    #define BIT_ADCON0_ADCS0	0x00
    #define BIT_ADCON0_CHS2		0x00
    #define BIT_ADCON0_CHS1		0x00
    #define BIT_ADCON0_CHS0		0x00
    #define BIT_ADCON0_GO_DONE	0x00
    //#define BIT_ADCON0_RESERVED	ADCON.1	
    #define BIT_ADCON0_ADON		0x00
    
#define ADC_CONVCLOCK_MASK 	0xC0		    // Bit 6 to 7
#define ADC_CHANSEL_MASK 	0x38		    // Bit 3 to 5
    
#define	REGISTER_ADCON1		0x55
    #define BIT_ADCON1_ADFM		0x00
    #define BIT_ADCON1_ADCS2	0x00
    //#define BIT_ADCON1_RESERVED	ADCON.5
    //#define BIT_ADCON1_RESERVED	ADCON.4	
    #define BIT_ADCON1_PCFG3	0x00
    #define BIT_ADCON1_PCFG2	0x00	
    #define BIT_ADCON1_PCFG1	0x00	
    #define BIT_ADCON1_PCFG0	0x00
    
#define ADC_CONFIG_MASK 	0x0F		    // Bit 0 to 3
		
    /* TMRx - 8Bit Timer Peripheral */
#define REGISTER_PR2        0x55
#define REGISTER_PR4        0x55
#define REGISTER_PR6        0x55

#define REGISTER_T2CON      0x55     
#define REGISTER_T4CON      0x55 
#define REGISTER_T6CON      0x55 

    //#define BIT_TxCON_RESERVED	T2CON.7	
    #define BIT_T2CON_TOUTPS3 	0x00
    #define BIT_T2CON_TOUTPS2   0x00
    #define BIT_T2CON_TOUTPS1   0x00
    #define BIT_T2CON_TOUTPS0   0x00
    #define BIT_T2CON_TMR2ON    0x00
    #define BIT_T2CON_T2CKPS1   0x00
    #define BIT_T2CON_T2CKPS0	0x00

#define TMR_POSTSCALE_MASK  	0x78		// Bit 3 to Bit 6    
#define TMR_PRESCALE_MASK   	0x03		// Bit 0 to Bit 1 		
	
    /* CCPx - Capture-Compare/PWM Peripheral */
#define REGISTER_CCP1CON	0x55  
#define REGISTER_CCP2CON	0x55
#define REG_CCP3CON			0x55
#define REG_CCP4CON			0x55
        
    #define MASK_PxM1       	0x80		// Bit 7 (For ECCP Only)
    #define MASK_PxM0       	0x40		// Bit 6 (For ECCP Only)
    #define MASK_DCxB1      	0x20		// Bit 5
    #define MASK_DCxB0      	0x10		// Bit 4
    #define MASK_CCPxM3     	0x08		// Bit 3
    #define MASK_CCPxM2     	0x04		// Bit 2
    #define MASK_CCPxM1     	0x02		// Bit 1
    #define MASK_CCPxM0     	0x01		// Bit 0
    
    #define ECCP_CONFIG_MASK    0xC0        // Bit 6 to 7 (For ECCP Only)
    #define PWM_DC_LSB_MASK     0x30        // Bit 4 to 5
    #define CCP_MODE_MASK       0x0F        // Bit 0 to 3

#define REGISTER_CCPR1L		0x55
#define REGISTER_CCPR2L		0x55
//#define REG_CCPR3L			CCPR3L
//#define REG_CCPR4L			CCPR4L


#define REGISTER_CCPTMRS	0x55
    #define MASK_C4TSEL1     	0x80		// Bit 7 
    #define MASK_C4TSEL0     	0x40		// Bit 6 
    #define MASK_C3TSEL1     	0x20		// Bit 5
    #define MASK_C3TSEL0     	0x10		// Bit 4
    #define MASK_C2TSEL1     	0x08		// Bit 3
    #define MASK_C2TSEL0     	0x04		// Bit 2
    #define MASK_C1TSEL1     	0x02		// Bit 1
    #define MASK_C1TSEL0     	0x01		// Bit 0
    
    #define C4_TIMERSEL_MASK 	0xC0		// Bit 6 to 7
    #define C3_TIMERSEL_MASK 	0x30		// Bit 4 to 5
    #define C2_TIMERSEL_MASK 	0x0C		// Bit 2 to 3
    #define C1_TIMERSEL_MASK 	0x03		// Bit 0 to 1

    
#define	REGISTER_TRISA		0x55		
#define	REGISTER_TRISB		0x55
#define	REGISTER_TRISC		0x55
#define	REGISTER_TRISD		0x55
#define	REGISTER_TRISE		0x55

#define	REGISTER_PORTA		0x55
    #define REGISTER_PORTA_0	0x00
    #define REGISTER_PORTA_1	0x00
    #define REGISTER_PORTA_2	0x00
    #define REGISTER_PORTA_3	0x00
    #define REGISTER_PORTA_4	0x00
    #define REGISTER_PORTA_5	0x00
    #define REGISTER_PORTA_6	0x00
    #define REGISTER_PORTA_7	0x00	
            
#define	REGISTER_PORTB		0x55
    #define REGISTER_PORTB_0	0x00
    #define REGISTER_PORTB_1	0x00
    #define REGISTER_PORTB_2	0x00
    #define REGISTER_PORTB_3	0x00
    #define REGISTER_PORTB_4	0x00
    #define REGISTER_PORTB_5	0x00
    #define REGISTER_PORTB_6	0x00
    #define REGISTER_PORTB_7	0x00

#define	REGISTER_PORTC		0x55
    #define REGISTER_PORTC_0	0x00
    #define REGISTER_PORTC_1	0x00
    #define REGISTER_PORTC_2	0x00
    #define REGISTER_PORTC_3	0x00
    #define REGISTER_PORTC_4	0x00
    #define REGISTER_PORTC_5	0x00
    #define REGISTER_PORTC_6	0x00
    #define REGISTER_PORTC_7	0x00

#define	REGISTER_PORTD		0x55
    #define REGISTER_PORTD_0	0x00
    #define REGISTER_PORTD_1	0x00
    #define REGISTER_PORTD_2	0x00
    #define REGISTER_PORTD_3	0x00
    #define REGISTER_PORTD_4	0x00
    #define REGISTER_PORTD_5	0x00
    #define REGISTER_PORTD_6	0x00
    #define REGISTER_PORTD_7	0x00

#define	REGISTER_PORTE		0x55
    #define REGISTER_PORTE_0	0x00
    #define REGISTER_PORTE_1	0x00
    #define REGISTER_PORTE_2	0x00
    #define REGISTER_PORTE_3	0x00
    #define REGISTER_PORTE_4	0x00
    #define REGISTER_PORTE_5	0x00
    #define REGISTER_PORTE_6	0x00
    #define REGISTER_PORTE_7	0x00

#define	REGISTER_TXREG		0x55
#define	REGISTER_RCREG		0x55
#define	REGISTER_SPBRG		0x55

#define	REGISTER_TMR0H		0x55	
#define	REGISTER_TMR0L		0x55

#define	REGISTER_TMR1H		0x55
#define	REGISTER_TMR1L		0x55

#define	REGISTER_TMR2H		0x55	
#define	REGISTER_TMR2L		0x55

#define	REGISTER_ADRESH		0x55
#define	REGISTER_ADRESL		0x55

/* Macro and Configuration Definitions */
	/*@notfunction@*/
	#define enableGlobalInt()               \
    BIT_INTCON_GIE = 1;                     \
    BIT_INTCON_PEIE = 1                     // semi-collon intentionally omitted 
    
	/*@notfunction@*/
	#define disableGlobalInt()              \
    BIT_INTCON_GIE = 0;                     \
    BIT_INTCON_PEIE = 0                     // semi-collon intentionally omitted 
    
    /*@notfunction@*/
    #define getGlobalIntEnableStatus()      ((BIT_INTCON_GIE) ? true : false)

/* Public Function Prototypes */ 
    /* none */
	
#endif/* end of htc_pic_SPLint.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	