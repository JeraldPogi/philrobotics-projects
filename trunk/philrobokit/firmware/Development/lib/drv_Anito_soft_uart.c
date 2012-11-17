//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	drv_Anito_uart.c - UART File
// Description:	
// Revision:    v01.00.00
// Author:      Giancarlo Acelajado
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
// v00.01.00       201112xx    Giancarlo A.   Library Initial Release
// v00.01.01       201201xx    Giancarlo A.   Add serialFlush Routine
// v01.00.00       201210xx    Giancarlo A.   Leverage Library to Standard Architecture
// 
//***********************************************************************************
#include "drv_Anito_uart.h"

	void setupSerial(uint16_t ui16Baudrate)
	{			
		TXFiFo.iIn = TXFiFo.iOut = RXFiFo.iIn = RXFiFo.iOut = 0;
		
		BIT_TXSTA_TX9 = 0;	//8-bit
		BIT_TXSTA_TXEN = 1; //Enable Transmit
		BIT_TXSTA_SYNC = 0; //Asyncronous Mode
		//BIT_TXSTA_TRMT = 1; //TSR is empty
		
		BIT_TXSTA_BRGH = 1; //High Speed Asyncronous // SPBRG = FOSC/(16*baud) - 1
		if(ui16Baudrate < 4883) // @20MHz clk
			BIT_TXSTA_BRGH = 0; // Low Speed Asyncronous // SPBRG = FOSC/(64*baud) - 1
		
		switch(ui16Baudrate){ // FOSC = 20MHz
		case 1200:
			REGISTER_SPBRG = 255 /*259*/; // 1220.7
			break;
		case 4800:
		case 19200:
			REGISTER_SPBRG = 64; // 4807.7 or 19230.8
			break;
		case 38400:
			REGISTER_SPBRG = 32; // 39062.5
			break;
		case 57600:
			REGISTER_SPBRG = 21; // 56818.2
			break;
		case 115200:
			REGISTER_SPBRG = 10; // 113636.4
			break;
		case 230400:
			REGISTER_SPBRG = 4; // 250000.0 (8.5% error!)
			break;
		case 2400:
		case 9600:
		default: // baud defaults
			REGISTER_SPBRG = 129; // 2403.8 or 9615.4
			break;
		}
		
		BIT_RCSTA_SPEN = 1; //Enable Serial Port
		BIT_RCSTA_RX9 = 0; //8-bit
		BIT_RCSTA_CREN = 1; //Enable Continuous receive	

		BIT_PIE1_TXIE = 0; //Transmit Interrupt Disable
		BIT_PIR1_TXIF = 0; //Clear Transmit Interrupt Flag
		
		BIT_PIE1_RCIE = 1; //Receive Interrupt Enable
		BIT_PIR1_RCIF = 0; //Clear Receive Interrupt Flag
		
		BIT_INTCON_PEIE = 1; //Enable Peripheral Interrupt
		BIT_INTCON_GIE = 1;  //Enable Global Interrupt
    }

	uint8_t isSerialBufferFull(void)
	{
		return (((uartTXFiFo.uartHead+1) & (BUFFER_SIZE-1)) == uartTXFiFo.uartTail);	
	}

	void serialSendChar(uint8_t ui8TxData)
	{
		while (isSerialBufferFull())
			continue;
	
		BIT_INTCON_GIE = 0; //Disable Interrupt
		
		uartTXFiFo.uartBuffer[uartTXFiFo.uartHead++] = ui8TxData;
	
		uartTXFiFo.uartHead &= (BUFFER_SIZE-1);
		
	
		BIT_PIE1_TXIE = 1; //Enable Transmit Interrupt
		BIT_INTCON_GIE = 1; //Enable Global Interrupt	
	}			

	void serialSendString(uint8_t *pui8StrTxData)
	{
		while(*pui8StrTxData){
			serialSendChar(*pui8StrTxData++);		
		}	
	}	
	
	bool isSerialDataAvailable(void)
	{	
		if(BIT_RCSTA_OERR){		//Error in Reception
			BIT_RCSTA_CREN = 0;	//Restart Continuous Reception
			BIT_RCSTA_CREN = 1;
			
			return 0;
		}				
		
		return (uartRXFiFo.uartHead != uartRXFiFo.uartTail);		
	}
	
	uint8_t serialRead(void)
	{
		uint8_t ui8serialData;
		//int timeout = 7500; //1.5ms @20Mhz
				
		while(!isSerialDataAvailable()/* && (--timeout)*/)
			continue;
			
		if(isSerialDataAvailable()){
			BIT_INTCON_GIE = 0;			//Disable Global Interrupt.
	    
	    	ui8serialData = uartRXFiFo.uartBuffer[uartRXFiFo.uartTail++];	//Get Data from Buffer
		
			uartRXFiFo.uartTail &= (BUFFER_SIZE-1);
	    	
	    	BIT_INTCON_GIE = 1;		//Enable Global Interrupt
		
	    	return ui8serialData;	
	 	}   
	 	
	 	return NULL;
	}	
	
	void serialFlushData(void)
    {
       RXFiFo.iOut = 0;
       TXFiFo.iOut = 0;
       RXFiFo.iIn = 0;
       TXFiFo.iIn = 0;

       memset(uartTXFiFo.uartBuffer, NULL, sizeof(uartTXFiFo.uartBuffer));
       memset(uartRXFiFo.uartBuffer, NULL, sizeof(uartRXFiFo.uartBuffer));
    } 		
	
	void serialRxInterruptHandler(void)
	{
		uint8_t ui8TempIn;
		
		if (BIT_PIR1_RCIF){
			
			uartRXFiFo.uartBuffer[uartRXFiFo.uartHead] = REGISTER_RCREG;
			ui8TempIn = ((uartRXFiFo.uartHead+1) & (BUFFER_SIZE-1));

			if (ui8TempIn != uartRXFiFo.uartTail){
				uartRXFiFo.uartHead = ui8TempIn;
            }
				
			BIT_PIR1_RCIF = 0; //Clear Receive Interrupt Flag
		}
	}	

	void serialTxInterruptHandler(void)
	{
		if (BIT_PIR1_TXIF && BIT_PIE1_TXIE){
			
			REGISTER_TXREG = uartTXFiFo.uartBuffer[uartTXFiFo.uartTail++];
			
			uartTXFiFo.uartTail &= (BUFFER_SIZE-1);	

			if (uartTXFiFo.uartTail == uartTXFiFo.uartHead){
				BIT_PIE1_TXIE = 0;
            }
				
			BIT_PIR1_TXIF = 0; //Clear Transmit Interrupt Flag
		}
	}
	
/* end of drv_Anito_uart.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		