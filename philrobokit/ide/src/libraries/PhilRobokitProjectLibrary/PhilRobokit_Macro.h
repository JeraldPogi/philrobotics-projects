//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRobokit_Macro.h - PhilRobokit Macro File
// Description:	
// Revision:    v00.01.00
// Author:      Giancarlo Acelajado
//             	
// Vendor:      Microchip Technology
// Family:      PIC16F8X7A
// Processor:   PIC16F877A
// Compiler:    Hitech C 9.82
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
// v00.00.01       20110xxx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#include "PhilRobokit_Header.h"

#define	setupLEDs()				LED_REGISTER_A &= ~LED_MASK_PORTC;	LED_REGISTER_B &= ~LED_MASK_PORTD;	
	#define	clearLED(x)			setPinLow(x) 
	#define	setLED(x)			setPinHigh(x)
	#define	toggleLED(x)		x ^= 1

#define setupBuzzer()			BUZZER_REGISTER &= ~BUZZER_MASK
	#define	setBuzzer()			BUZZER = 1;
	#define	clearBuzzer()		BUZZER = 0;
	
#define setupServo()			SERVO_REGISTER &= ~SERVO_MASK
	#define	setServo()


#define setupSwitches()			SWITCH_REGISTER_A |= SWITCH_MASK_PORTC;		SWITCH_REGISTER_B |= SWITCH_MASK_PORTD;
	#define	isButtonPressed(x)	isPinLow(x)
	
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global Definitions */
#define NULL				'\0'	

/* End of Global Definitions */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		
#define	setPinHigh(x) 			x = 1
#define	setPinLow(x)			x = 0

#define	isPinHigh(x)			(x?1:0)
#define	isPinLow(x)				(x?0:1)

/*
#define elapsedTime()
#define getTime()
*/

#define delayUs(x)	__delay_us(x);
#define delayMs(x)	__delay_ms(x);

//--------------------------------------------------------------------------------------------------------------------------------------------
/* Serial FIFO Routine*/
// Based on Regulus Berdin's(zer0w1ng) Serial FIFO Routine - http://www.electronicslab.ph/forum/index.php?topic=3270.0

#define	setupSerial(kbaud) 	UART_REGISTER |= UART_RX_MASK; UART_REGISTER &= ~UART_TX_MASK; serialInit(kbaud)

	#define	FOSC_FREQ 	_XTAL_FREQ 

	/*
	#define	CONST_BAUDRATE_2400		2400
	#define	CONST_BAUDRATE_4800		4800
	#define	CONST_BAUDRATE_9600		9600
	#define	CONST_BAUDRATE_19200	19200
	#define	CONST_BAUDRATE_38400	38400
	#define	CONST_BAUDRATE_57600	57600
	#define	CONST_BAUDRATE_115200	115200
	*/
	#define BAUDRATE(x) 		((FOSC_FREQ / x)/16) -1

	#define	serialSendChar(x)	serialPutC(x)
	#define	serialSend(x)		serialPutS(x)
	#define	serialRead()		serialGet()
	#define	isSerialAvailable()	isSerialDataAvailable()

	#define BUFFER_SIZE			16


	struct{
		unsigned char ucBuffer[BUFFER_SIZE];
		unsigned int iIn;
		unsigned int iOut;
	}TXFiFo, RXFiFo;


	void serialInit(unsigned int iBaudrate)
	{
	
		TXFiFo.iIn = TXFiFo.iOut = RXFiFo.iIn = RXFiFo.iOut = 0;
		
		#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  
			BIT_TXSTA_TX9 = 0;	//8-bit
			BIT_TXSTA_TXEN = 1; //Enable Transmit
			BIT_TXSTA_SYNC = 0; //Asyncronous Mode
			BIT_TXSTA_BRGH = 1; //High Speed Asyncronous
			//BIT_TXSTA_TRMT = 1; //TSR is empty

			BIT_RCSTA_SPEN = 1; //Enable Serial Port
			BIT_RCSTA_RX9 = 0; //8-bit
			BIT_RCSTA_CREN = 1; //Enable Continuous receive	
		
		
			BIT_PIE1_TXIE = 0; //Transmit Interrupt Disable
			BIT_PIR1_TXIF = 0; //Clear Transmit Interrupt Flag	
			
			BIT_PIE1_RCIE = 1; //Receive Interrupt Enable
			BIT_PIR1_RCIF = 0; //Clear Receive Interrupt Flag
			
			BIT_INTCON_PEIE = 1; //Enable Peripheral Interrupt
			BIT_INTCON_GIE = 1;	 //Enable Global Interrupt
				
			REGISTER_SPBRG = BAUDRATE(iBaudrate);
		#endif	
	}	

	unsigned char isSerialBufferFull(void)
	{
		return (((TXFiFo.iIn+1) & (BUFFER_SIZE-1)) == TXFiFo.iOut);	
	}

	void serialPutC(unsigned char ucTxData)
	{
		while (isSerialBufferFull())
			continue;
	
		BIT_INTCON_GIE = 0; //Disable Interrupt
		
		TXFiFo.ucBuffer[TXFiFo.iIn++] = ucTxData;
	
		TXFiFo.iIn &= (BUFFER_SIZE-1);
		
	
		BIT_PIE1_TXIE = 1; //Enable Transmit Interrupt
		BIT_INTCON_GIE = 1; //Enable Global Interrupt	
	}			

	void serialPutS(unsigned char *ucStrTxData)
	{
		while(*ucStrTxData){
			serialPutC(*ucStrTxData++);		
		}	
	}	
	
	unsigned char isSerialDataAvailable(void)
	{	
		if(BIT_RCSTA_OERR){		//Error in Reception
			BIT_RCSTA_CREN = 0;	//Restart Continuous Reception
			BIT_RCSTA_CREN = 1;
			
			return 0;
		}				
		
		return (RXFiFo.iIn != RXFiFo.iOut);		
	}
	
	unsigned char serialGet(void)
	{
		unsigned char serialData;
		//int timeout = 7500; //1.5ms @20Mhz
				
		while(!isSerialDataAvailable()/* && (--timeout)*/)
			continue;
			
		if(isSerialDataAvailable()){
			BIT_INTCON_GIE = 0;			//Disable Global Interrupt.
	    
	    	serialData = RXFiFo.ucBuffer[RXFiFo.iOut++];	//Get Data from Buffer
		
			RXFiFo.iOut &= (BUFFER_SIZE-1);
	    	
	    	BIT_INTCON_GIE = 1;		//Enable Global Interrupt
		
	    	return serialData;	
	 	}   
	 	
	 	return NULL;
	}			
	
	void serialRxInterruptHandler(void)
	{
		int iTempIn;
		
		if (BIT_PIR1_RCIF){
			
			RXFiFo.ucBuffer[RXFiFo.iIn] = REGISTER_RCREG;
			iTempIn = ((RXFiFo.iIn+1) & (BUFFER_SIZE-1));

			if (iTempIn != RXFiFo.iOut)
				RXFiFo.iIn = iTempIn;
				
			BIT_PIR1_RCIF = 0; //Clear Receive Interrupt Flag
		}
	}	

	void serialTxInterruptHandler(void)
	{
		if (BIT_PIR1_TXIF && BIT_PIE1_TXIE){
			
			REGISTER_TXREG = TXFiFo.ucBuffer[TXFiFo.iOut++];
			
			TXFiFo.iOut &= (BUFFER_SIZE-1);	

			if (TXFiFo.iOut == TXFiFo.iIn)
				BIT_PIE1_TXIE = 0;
				
			BIT_PIR1_TXIF = 0; //Clear Transmit Interrupt Flag
		}
	}	
/* End of Serial FIFO Routine */
//--------------------------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------------------------------------
/* SPI Routine*/

//#define	setupSPI(SDO, SDI, SCK)	spiInit(&##SDO, &##SDI, &##SCK)
#define	spiSend(x)	spiPut(x)
#define	spiRead()	spiGet()
#define	spiSlaveSelect(x)	setPinLow(x)

/*void spiInit(register int &pinSDO, register int &pinSDI, register int &pinSCK)
{
	#define	spiSDO	pinSDO
}*/	

/* End of SPI Routine */
//--------------------------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------------------------------------------------------
/* I2C Routine*/

#define	setupI2C()
#define	i2cSend()
#define	i2cRead()	


// ==========================================================================================================================================
// Function Prototypes
// ==========================================================================================================================================
void init(void);
void program(void);

//Main Program Routine
int main(void)
{
	init();
	
	while(1){
		program();	
	}	
	
	return 0;
}	

// ==========================================================================================================================================
// Interrupt Service Routine
// ==========================================================================================================================================
void interrupt isr(void)
{
	serialRxInterruptHandler();	
	serialTxInterruptHandler();			
}