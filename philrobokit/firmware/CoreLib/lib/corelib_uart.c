//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	corelib_uart.c - UART File
// Description:	
// Revision:    v00.01.01
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
// 
//***********************************************************************************
#include "corelib_uart.h"
#include "string.h"

	void setupSerial(unsigned int iBaudrate)
	{	
		//UART_REGISTER |= UART_RX_MASK; UART_REGISTER &= ~UART_TX_MASK;
			
		TXFiFo.iIn = TXFiFo.iOut = RXFiFo.iIn = RXFiFo.iOut = 0;
		
		//#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  
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
		//#endif	
	}	

	unsigned char isSerialBufferFull(void)
	{
		return (((TXFiFo.iIn+1) & (BUFFER_SIZE-1)) == TXFiFo.iOut);	
	}

	void serialSendChar(unsigned char ucTxData)
	{
		while (isSerialBufferFull())
			continue;
	
		BIT_INTCON_GIE = 0; //Disable Interrupt
		
		TXFiFo.ucBuffer[TXFiFo.iIn++] = ucTxData;
	
		TXFiFo.iIn &= (BUFFER_SIZE-1);
		
	
		BIT_PIE1_TXIE = 1; //Enable Transmit Interrupt
		BIT_INTCON_GIE = 1; //Enable Global Interrupt	
	}			

	void serialSendString(unsigned char *ucStrTxData)
	{
		while(*ucStrTxData){
			serialSendChar(*ucStrTxData++);		
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
	
	unsigned char serialRead(void)
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
	
	void serialFlushData(void)
    {
       RXFiFo.iOut = 0;
       TXFiFo.iOut = 0;
       RXFiFo.iIn = 0;
       TXFiFo.iIn = 0;

       memset(TXFiFo.ucBuffer, '\0', sizeof(TXFiFo.ucBuffer));
       memset(RXFiFo.ucBuffer, '\0', sizeof(RXFiFo.ucBuffer));
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
	
/* end of corelib_uart.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		