//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	spi.c - SPI File
// Description:	
// Revision:    v00.01.00
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
// v00.00.01       201202xx    Giancarlo A.   Library Initial Release
// 
//***********************************************************************************
#include "PhilRoboKit_CoreLib_Macro.h"
#include "spi.h"

	void setupSPI(unsigned char ucSDOPin, unsigned char ucSDIPin,unsigned char ucSCKPin, unsigned char ucCSPin)
	{
		setPinOutput(ucSDOPin); //Config SDO Pin as Output
		setPinInput(ucSDIPin); //Config SDI Pin as Input
		setPinOutput(ucSCKPin); //Config SCK Pin as Output
		setPinOutput(ucCSPin); //Config CS Pin as Output
	}

	void spiSend(unsigned char ucSDOPin, unsigned char ucSCKPin, unsigned char spiData)
	{
		int ictr;
			
		setPinOutput(ucSDOPin); //Config SDO Pin as Output
		setPinOutput(ucSCKPin); //Config SCK Pin as Output
		
		for(ictr=0; ictr<8; ictr++){			

			if(spiData & 0x01){
				setPinHigh(ucSDOPin); //SDO High
			}
			
			setPinHigh(ucSCKPin); //Clock High
			//Optional Delay here
			setPinLow(ucSCKPin); //Clock Low
			//Optional Delay here
			setPinLow(ucSDOPin); //SDO Low
			//Optional Delay here
			spiData >>= 1; //Shift Data
		}
	}	
	
	unsigned char spiRead(unsigned char ucSDIPin, unsigned char ucSCKPin)
	{
		unsigned char spiData = 0;
		int ictr;

		setPinInput(ucSDIPin); //Config SDI Pin as Input
		setPinOutput(ucSCKPin); //Config SCK Pin as Output

		
		for(ictr = 7; ictr > 0; ictr--){			
			spiData |= (isPinHigh(ucSDIPin)<<ictr);
			//Optional Delay here
			setPinLow(ucSCKPin); //Clock Low
			//Optional Delay here
			setPinHigh(ucSCKPin); //Clock High
			//Optional Delay here
		}
		
		return spiData;
	}
	
	void spiSlaveSelectHigh(unsigned char ucCSPin)
	{
		setPinOutput(ucCSPin); //Set Pin as Output
		setPinHigh(ucCSPin);
		//Optional Delay here
	}

	void spiSlaveSelectLow(unsigned char ucCSPin)
	{
		setPinOutput(ucCSPin); //Set Pin as Output
		setPinLow(ucCSPin);
		//Optional Delay here
	}