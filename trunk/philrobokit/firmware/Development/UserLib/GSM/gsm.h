//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// http://wiki.philrobotics.com | http://philrobotics.com/forum
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	gsm.h
// Description:	GSM Library Header File
// Revision:    v01.00.00
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
// v01.00.00       201209xx    Giancarlo A.   Leverage Library for PhilRotics Standard 
//                                            FW Guidelines; 
//***********************************************************************************

#ifndef __PHILROBOKIT_GSM_H__
#define __PHILROBOKIT_GSM_H__

#include "PhilRoboKit_CoreLib_Header.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

bool_t setupGSM(uint16_t ui16Baudrate);
bool_t sendGSMATCommand(uint8_t *ui8ATCommand);
bool_t sendGSMMessage(uint8_t *ui8Recipient, uint8_t *ui8Message);
bool_t getGSMMessage(uint8_t ui8Index, uint8_t *ui8MessageBuffer);
bool_t getGSMMessageInfo(uint8_t ui8Index, uint8_t *uiSender, uint8_t *ui8TimeStamp);
uint8_t getGSMMemoryIndex(void);
bool_t deleteGSMMessage(uint8_t ui8Index);

bool_t isGSMMessageReceived(uint8_t *ui8Index);

bool_t dialGSM(uint8_t *ui8Recipient);

/* End of GSM.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif