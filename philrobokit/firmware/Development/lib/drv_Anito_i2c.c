//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// http://wiki.philrobotics.com | http://philrobotics.com/forum
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	
// Description:	
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

#include "drv_Anito_i2c.h"

static bool blOperationMode = K1_MASTER_MODE;

void setupI2C(bool blOperation, uint8_t ui8Frequency)
{
	blOperationMode = blOperation;
	
	REGISTER_TRISC &= MASK_BIT_4 | MASK_BIT_3;
	REGISTER_PORTC &= MASK_BIT_4 | MASK_BIT_3;
	
	BIT_SSPSTAT_SMP = 1; /* Stantard Speed Mode */
	BIT_SSPSTAT_CKE = 0l /* Disable SMBus Specifics */
		
	BIT_SSPCON1_SSPEN = 1; /* Synchronous Serial Port Enable */
	
	BIT_SSPCON1_SSPM3 = 0; /* I2C Slave Mode, 7-bit Address */
	BIT_SSPCON1_SSPM2 = 1;
	BIT_SSPCON1_SSPM1 = 1;
	BIT_SSPCON1_SSPM0 = 0;
	
	BIT_SSPCON2_GCEN = 1; /* Enable General Call Bit */
	BIT_SSPCON2_ACKEN = 1; /* Enable Acknowledge Sequence Bit */
	
	BIT_SSPCON2_SEN = 1; /* Clock Stretching in both slave transmit and receive */
	
	BIT_PIE1_SSPIE = 1; /* Enable SSP Interrupt */
	BIT_PIR1_SSPIF = 0;	/* Clear SSP Interrupt Flag */
	
	BIT_INTCON_PEIE = 1; /* Enable Peripheral Interrupt */
	BIT_INTCON_GIE = 1;	 /* Enable Global Interrupt */
}	

void i2cRead(bool blAck)
{
	
}
	
void i2cWrite(uint8_t ui8Data)
{
	
}

bool isI2CBufferFull(void)
{
	return (((i2cTXFiFo.Head+1) & (BUFFER_SIZE-1)) == i2cTXFiFo.Tail);
}	

bool isI2CDataAvailable(void)
{
	return (i2cRXFiFo.Head != i2cRXFiFo.Tail);	
}	

void i2cInterruptHandler(void)
{
	if(BIT_PIR1_SSPIF){
		BIT_PIR1_SSPIF = 0; /* Clear SSP Interrupt Flag */
		
		i2cRxInterruptHandler();
		i2cTxInterruptHandler();
	}
}	

void i2cRxInterruptHandler(void)
{
	uint8_t ui8TempIn;
	
	if(BIT_SSPSTAT_RW && blOperationMode == K1_SLAVE_MODE){ /* Master Write, Slave Read Mode */
		
		if (BIT_PIR1_RCIF){
			
			i2cRXFiFo.Buffer[i2cRXFiFo.Head] = REGISTER_SSPBUF;
			ui8TempIn = ((i2cRXFiFo.Head+1) & (BUFFER_SIZE-1));

			if (ui8TempIn != i2cRXFiFo.Tail)
				i2cRXFiFo.Head = ui8TempIn;				
		}
	}	
}

void i2cTxInterruptHandler(void)
{
	if(!BIT_SSPSTAT_RW && blOperationMode == K1_SLAVE_MODE){ /* Master Read, Slave Write Mode */
		
	}
}