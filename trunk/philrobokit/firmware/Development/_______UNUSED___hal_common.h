//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum 
// http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_common.h - PhilRobokit Common Hardware Abstraction Layer File
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
// v00.00.01       201209xx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#ifndef __HAL_COMMON_H__
#define __HAL_COMMON_H__

    #include "PhilRoboKit_CoreLib_DataTypes.h"
    
    /* Bit Masking */
    #define MASK_BIT_0      (0x0001)
    #define MASK_BIT_1      (0x0002)
    #define MASK_BIT_2      (0x0004)
    #define MASK_BIT_3      (0x0008)
    #define MASK_BIT_4      (0x0010)
    #define MASK_BIT_5      (0x0020)
    #define MASK_BIT_6      (0x0040)
    #define MASK_BIT_7      (0x0080)
    
    #define MASK_BIT_8      (0x0100)
    #define MASK_BIT_9      (0x0200)
    #define MASK_BIT_10     (0x0400)
    #define MASK_BIT_11     (0x0800)
    #define MASK_BIT_12     (0x1000)
    #define MASK_BIT_13     (0x2000)
    #define MASK_BIT_14     (0x4000)
    #define MASK_BIT_15     (0x8000)
    
    #define MASK_BYTE_LSB   (0x00FF)
    #define MASK_BYTE_MSB   (0xFF00)
    
    #define MASK_WORD       (0xFFFF)
    
    bool_t setupRegister(unsigned int16_t *ui16_Register, unsigned int16_t ui16_Data);
    bool_t setRegBit(unsigned int16_t *ui16_Register, unsigned int16_t ui16_DataBit);
    bool_t clrRegBit(unsigned int16_t *ui16_Register, unsigned int16_t ui16_DataBit);
    bool_t toggleRegBit(unsigned int16_t *ui16_Register, unsigned int16_t ui16_DataBit);
    
/* End of hal_common.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif