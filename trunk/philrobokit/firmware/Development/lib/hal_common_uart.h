//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_common_uart.h - UART Common Header File
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

#ifndef __HAL_COMMON_UART_H__
#define __HAL_COMMON_UART_H__

#include "PhilRoboKit_CoreLib_DataTypes.h"

#ifndef NULL
    #define NULL				'\0'
#endif

	void setupSerial(uint16_t ui16Baudrate);
	void serialSendChar(uint8_t ui8TxData);
	void serialSendString(uint8_t *pui8StrTxData);
	uint8_t serialRead(void);
	bool isSerialDataAvailable(void);
	void serialFlushData(void);
	void serialRxInterruptHandler(void);	
	void serialTxInterruptHandler(void);
	
#endif/* end of hal_common_uart.h */