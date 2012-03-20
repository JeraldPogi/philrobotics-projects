//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	uart.h - UART Header File
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

#ifndef __PH_UART_H__
#define __PH_UART_H__

#if defined(HI_TECH_C)
	#include "htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "htc_16f87xa.h"
	#endif
#endif


#define NULL				'\0'

//extern unsigned int uiFreqOSC;

/* Serial FIFO Routine*/
// Based on Regulus Berdin's(zer0w1ng) Serial FIFO Routine - http://www.electronicslab.ph/forum/index.php?topic=3270.0

	//extern unsigned int uiBaudRate;

	/*
	#define	CONST_BAUDRATE_2400		2400
	#define	CONST_BAUDRATE_4800		4800
	#define	CONST_BAUDRATE_9600		9600
	#define	CONST_BAUDRATE_19200	19200
	#define	CONST_BAUDRATE_38400	38400
	#define	CONST_BAUDRATE_57600	57600
	#define	CONST_BAUDRATE_115200	115200
	*/

	#define BAUDRATE(x) 		((20000000 /*uiFreqOSC*/ / x)/16) -1
	#define BUFFER_SIZE			16

	struct{
		unsigned char ucBuffer[BUFFER_SIZE];
		unsigned int iIn;
		unsigned int iOut;
	}TXFiFo, RXFiFo;

	void setupSerial(unsigned int iBaudrate);
	void serialSendChar(unsigned char ucTxData);
	void serialSendString(unsigned char *ucStrTxData);
	unsigned char serialRead(void);
	unsigned char isSerialDataAvailable(void);
	void serialFlushData(void);
	void serialRxInterruptHandler(void);	
	void serialTxInterruptHandler(void);
	
#endif