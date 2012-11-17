//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_common_soft_uart.h - Software UART Common Header File
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
// 
//***********************************************************************************

#ifndef __HAL_COMMON_SOFT_UART_H__
#define __HAL_COMMON_SOFT_UART_H__

#include "PhilRoboKit_CoreLib_DataTypes.h"


    typedef struct Tag_StrSoftSerial{
        void (*setupBaudrate)(uint16_t ui16BaudRate);
        void (*setupTXPin)(uint8_t ui8TXPin);
        void (*setupRXPin)(uint8_t ui8RXPin);
    };
    
	void setupSoftSerial(uint16_t ui16Baudrate);
	void serialSendChar(uint8_t ui8TxData);
	void serialSendString(uint8_t *pui8StrTxData);
	uint8_t serialRead(void);
	bool isSerialDataAvailable(void);
	void serialFlushData(void);
	void serialRxInterruptHandler(void);	
	void serialTxInterruptHandler(void);
	
#endif/* end of hal_common_uart.h */