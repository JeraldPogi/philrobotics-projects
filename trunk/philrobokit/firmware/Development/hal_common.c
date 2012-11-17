//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum 
// http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_common.c - PhilRobokit Common Hardware Abstraction Layer File
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
// FW Version      Date        Author         Description
// v01.00.00       201209xx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#include "hal_common.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"
        
    bool_t setupRegister(unsigned int16_t *ui16_Register, unsigned int16_t ui16_Data)
    {
        *ui16_Register = ui16_Data;
        
        return TRUE; /* for future use -- Error indicator */
    }
    
    bool_t setRegBit(unsigned int16_t *ui16_Register, unsigned int16_t ui16_DataBit)
    {
        *u16_Register |= ui16_DataBit;
        
        return TRUE; /* for future use -- Error indicator */
    }
    
    bool_t clrRegBit(unsigned int16_t *ui16_Register, unsigned int16_t ui16_DataBit)
    {
        *u16_Register &= ~(ui16_DataBit);
        
        return TRUE; /* for future use -- Error indicator */
    }
    
    bool_t toggleRegBit(unsigned int16_t *ui16_Register, unsigned int16_t ui16_DataBit)
    {
        *u16_Register ^= ui16_DataBit;
        
        return TRUE; /* for future use -- Error indicator */
    }
    
/* End of hal_common.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
