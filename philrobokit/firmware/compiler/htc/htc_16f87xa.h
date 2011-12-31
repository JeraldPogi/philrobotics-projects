//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	htc_16f87xa.h - Hitech C PIC16F87XA Header File
// Description:	
// Revision:    v00.01.00
// Author:      Giancarlo Acelajado
//
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
// v00.00.01       201112xx    Giancarlo A.   Library Initial Release
// 
//***********************************************************************************
	
#ifndef __HTC_16F87XA_H
#define __HTC_16F87XA_H

	#define	REGISTER_TXSTA		TXSTA
		#define	BIT_TXSTA_CSRC		CSRC
		#define	BIT_TXSTA_TX9		TX9
		#define	BIT_TXSTA_TXEN		TXEN
		#define	BIT_TXSTA_SYNC		SYNC
		//#define	BIT_TXSTA_RESERVED		TXSTA.3
		#define	BIT_TXSTA_BRGH		BRGH
		#define	BIT_TXSTA_TRMT		TRMT
		#define	BIT_TXSTA_TX9D		TX9D
		
	#define REGISTER_RCSTA		RCSTA
		#define	BIT_RCSTA_SPEN		SPEN
		#define	BIT_RCSTA_RX9		RX9
		#define	BIT_RCSTA_SREN		SREN
		#define	BIT_RCSTA_CREN		CREN
		#define	BIT_RCSTA_ADDEN		ADDEN
		#define	BIT_RCSTA_FERR		FERR
		#define	BIT_RCSTA_OERR		OERR
		#define	BIT_RCSTA_RX9D		RX9D		
	
	#define	REGISTER_INTCON		INTCON
		#define BIT_INTCON_GIE		GIE
		#define BIT_INTCON_PEIE		PEIE
		#define BIT_INTCON_TMR0IE	TMR0IE
		#define BIT_INTCON_INTE		INTE
		#define BIT_INTCON_RBIE		RBIE
		#define BIT_INTCON_TMR0IF	TMR0IF	
		#define BIT_INTCON_INTF		INTF
		#define BIT_INTCON_RBIF		RBIF
				
	#define	REGISTER_PIR1		PIR1
		#define BIT_PIR1_PSPIF		PSPIF
		#define BIT_PIR1_ADIF		ADIF
		#define BIT_PIR1_RCIF		RCIF
		#define BIT_PIR1_TXIF		TXIF
		#define BIT_PIR1_SSPIF		SPIF
		#define BIT_PIR1_CCP1IF		CCP1IF
		#define BIT_PIR1_TMR2IF		TMR2IF
		#define BIT_PIR1_TMR1IF		TMR1IF
		
	#define	REGISTER_PIE1		PIE1
		#define BIT_PIE1_PSPIE		PSPIE
		#define BIT_PIE1_ADIE		ADIE
		#define BIT_PIE1_RCIE		RCIE
		#define BIT_PIE1_TXIE		TXIE
		#define BIT_PIE1_SSPIE		SSPIE
		#define BIT_PIE1_CCP1IE		CCP1IE	
		#define BIT_PIE1_TMR2IE		TMR2IE
		#define BIT_PIE1_TMR1IE		TMR1IE
		
	#define	REGISTER_T1CON		T1CON
		//#define BIT_T1CON_RESERVED	T1CON.7
		//#define BIT_T1CON_RESERVED	T1CON.6
		#define BIT_T1CON_T1CKPS1	T1CKPS1
		#define BIT_T1CON_T1CKPS0	T1CKPS0
		#define BIT_T1CON_T1OSCEN	T1OSCEN
		#define BIT_T1CON_T1SYNC	T1SYNC
		#define BIT_T1CON_TMR1CS	TMR1CS
		#define BIT_T1CON_TMR1ON	TMR1ON
		
	#define	REGISTER_ADCON0		ADCON0
		#define BIT_ADCON0_ADCS1	ADCS1
		#define BIT_ADCON0_ADCS0	ADCS0
		#define BIT_ADCON0_CHS2		CHS2
		#define BIT_ADCON0_CHS1		CHS1
		#define BIT_ADCON0_CHS0		CHS0
		#define BIT_ADCON0_GO_DONE	GO_DONE
		//#define BIT_ADCON0_RESERVED	ADCON.1	
		#define BIT_ADCON0_ADON		ADON
		
	#define	REGISTER_ADCON1		ADCON1
		#define BIT_ADCON1_ADFM		ADFM
		#define BIT_ADCON1_ADCS2	ADCS2
		//#define BIT_ADCON1_RESERVED	ADCON.5
		//#define BIT_ADCON1_RESERVED	ADCON.4	
		#define BIT_ADCON1_PCFG3	PCFG3
		#define BIT_ADCON1_PCFG2	PCFG2	
		#define BIT_ADCON1_PCFG1	PCFG1	
		#define BIT_ADCON1_PCFG0	PCFG0
		
#endif