//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	i2c.c - I2C File
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

//Based from Regulus Berdin I2C routines for PIC Microcontroller
//http://www.electronicslab.ph/forum/index.php?topic=4679.msg76635#msg76635

#include "i2c.h"

	//--- Private Functions ------------------------------	
	void i2cSendAck(unsigned char ucSDAPin, unsigned char ucSCLPin, char blAcknowledge)
	{
		setPinLow(ucSCLPin); //Set SCL Pin to Low
		//Optional Delay Here
	
		if(blAcknowledge){
			setPinLow(ucSDAPin); //Set SDA Pin to Low
		}
		else{
			setPinHigh(ucSDAPin); //Set SDA Pin to High
		}

		//Optional Delay Here
		setPinHigh(ucSCLPin); //Set SCL Pin to High
		//Optional Delay Here
		setPinLow(ucSCLPin); //Set SCL Pin to Low
		//Optional Delay Here
	
		if(blAcknowledge){
			setPinHigh(ucSDAPin); //Set SDA Pin to High
		}
	}
	
	//--- End of Private Functions ------------------------------
	void i2cStart(unsigned char ucSDAPin, unsigned char ucSCLPin)
	{
		setPinHigh(ucSCLPin); //Set SCL Pin to High
		//Optional Delay Here
		setPinHigh(ucSDAPin); //Set SDA Pin to High
		//Optional Delay Here
		setPinLow(ucSDAPin); //Set SDA Pin to Low		
		//Optional Delay Here
		setPinLow(ucSCLPin); //Set SCL Pin to Low
		//Optional Delay Here
	}
	
	void i2cStop(unsigned char ucSDAPin, unsigned char ucSCLPin)
	{
		setPinLow(ucSDAPin); //Set SDA Pin to Low		
		//Optional Delay Here
		setPinHigh(ucSCLPin); //Set SCL Pin to High
		//Optional Delay Here
		setPinHigh(ucSDAPin); //Set SDA Pin to High
		//Optional Delay Here
	}
	
	void setupI2C(unsigned char ucSDAPin, unsigned char ucSCLPin)
	{
		setPinOutput(ucSDAPin); //Config SDA Pin as Output
		setPinOutput(ucSCLPin); //Config SCL Pin as Output
		
		setPinHigh(ucSCLPin); //Set SCL Pin to High
		setPinHigh(ucSDAPin); //Set SDA Pin to High
	}
	
	void i2cWrite(unsigned char ucSDAPin, unsigned char ucSCLPin, unsigned char i2cData)
	{
		int i = 8;		
		
		setPinLow(ucSCLPin); //Set SCL Pin to Low    
		setPinOutput(ucSDAPin); //Config SDA Pin as Output
    
		do {
			if (i2cData & 0x80) {
				setPinHigh(ucSDAPin); //Set SDA Pin to High
			} 
			else {
				setPinLow(ucSDAPin); //Set SDA Pin to Low
			}
        
			//Optional Delay Here
			setPinHigh(ucSCLPin); //Set SCL Pin to High
			//Optional Delay Here
			setPinLow(ucSCLPin); //Set SCL Pin to Low
			//Optional Delay Here
			i2cData<<=1; //Shift Data
		} while (--i);

		//get acknowledge
		setPinHigh(ucSDAPin); //Set SDA Pin to High
		setPinHigh(ucSCLPin); //Set SCL Pin to High
		//Optional Delay here
		
		if (isPinHigh(ucSDAPin)) {
			//SDA remains high, not acknowledged
			//Optional Delay Here
			setPinLow(ucSCLPin); //Set SCL Pin to Low
			//Optional Delay Here
			return I2C_ERROR_NO_ACK;
		}
		
		//Optional Delay Here
		setPinLow(ucSCLPin); //Set SCL Pin to Low
		//Optional Delay Here
		
		return I2C_NO_ERROR;	
	}
	
	unsigned char i2cRead(unsigned char ucSDAPin, unsigned char ucSCLPin, char blAcknowledge)
	{
		int i = 8;	
		unsigned char i2cData = 0;
		
		setPinLow(ucSCLPin); //Set SCL Pin to Low
		//Optional Delay Here
		setPinHigh(ucSDAPin); //Set SDA Pin to High
		
		do {
			i2cData<<=1;
			setPinHigh(ucSCLPin); //Set SCL Pin to High
			//Optional Delay Here
			
			if (isPinHigh(ucSDAPin)) {
				i2cData |= 1;
			}
			
			//Optional Delay Here
			setPinLow(ucSCLPin); //Set SCL Pin to Low
			//Optional Delay Here
		} while (--i);
		
		i2cSendAck(ucSDAPin, ucSCLPin, blAcknowledge); //Send Acknowledge Routine
		
		return i2cData;
	}
	
	
