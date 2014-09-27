/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_masterlib.h"                       |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Master Library Header           |
* |Revision:      | v00.01.00                                   |
* |Author:        | Efren S. Cruzat II                          |
* |               |                                             |
* |Dependencies:  |                                             |
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.01    |20130408   |ESC II             |Library Initial Release            |
* |v00.01.00    |20130514   |ESCII              |Code Formatted                     |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_MASTERLIB_H__
#define __PHILROBOKIT_MASTERLIB_H__

/* Include .h Library Files */
/* none */

/* Global Constants */
/* none */

/* User Configuration Definitions */
/* none */

/* Macro and Configuration Definitions */
/* Register Manipulation Macro */
#define setRegVal(Register, Value)                      (Register = Value)
#define getRegVal(Register)                             (Register)
#define setMaskedReg(Register, Value, Mask, Shift)      \
    Register &= ~Mask;                                  \
    Register |= (Value << Shift) & Mask                 // semi-colon intentionally omitted
#define getMaskedReg(Register, Mask, Shift)             ((Register & Mask) >> Shift)

#define setBit(Register, Bit)                           (Register |= (1 << Bit))
#define clrBit(Register, Bit)                           (Register &= ~(1 << Bit))
#define toggleBit(Register, Bit)                        (Register ^= (1 << Bit))
#define getBitStatus(Register, Bit)                     ((Register & (1 << Bit) > 0) ? true : false)

#define setRegBits(Register, Mask)                      (Register |= Mask)
#define clrRegBits(Register, Mask)                      (Register &= ~Mask)
#define toggleRegBits(Register, Mask)                   (Register ^= Mask)

/* Public Function Prototypes */
/* none */

#endif/* end of corelib_masterlib.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------