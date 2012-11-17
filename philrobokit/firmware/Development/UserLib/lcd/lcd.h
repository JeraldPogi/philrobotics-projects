//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	drv_Anito_lcd.h - LCD Header File
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
// v01.00.00       201112xx    Giancarlo A.   Library Initial Release
// 
//***********************************************************************************

#ifndef __ANITO_LCD_H__
#define __ANITO_LCD_H__

#include "PhilRoboKit_CoreLib_Header.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"

#define K8_LCD_8BIT_PIN_COUNT        (11)
#define K8_LCD_4BIT_PIN_COUNT        (7)
#define K8_LCD_4BIT_OFFSET           (4)
#define K8_LCD_INTERFACE_PIN_COUNT   (K8_LCD_4BIT_PIN_COUNT)

#define K8_LCD_PIN_RS_INDEX     (0)
#define K8_LCD_PIN_RW_INDEX     (1)
#define K8_LCD_PIN_EN_INDEX     (2)

#define K8_LCD_DATA_PIN_INDEX   (K8_LCD_PIN_D0_INDEX)
#define K8_LCD_PIN_D0_INDEX     (3)
#define K8_LCD_PIN_D1_INDEX     (4)
#define K8_LCD_PIN_D2_INDEX     (5)
#define K8_LCD_PIN_D3_INDEX     (6)
#define K8_LCD_PIN_D4_INDEX     (7)
#define K8_LCD_PIN_D5_INDEX     (8)
#define K8_LCD_PIN_D6_INDEX     (9)
#define K8_LCD_PIN_D7_INDEX     (10)

#define K8_LCD_CONFIG_4BIT      (0x01)
#define K8_LCD_CONFIG_8BIT      (0x02)
#define K8_LCD_CONFIG_2x16      (0x10)
#define K8_LCD_CONFIG_4x20      (0x20)

/*-- LCD_Instructions HD44780 Instructions */
#define LCD_CMD_CLS 0x01

#define LCD_CMD_RETURN_HOME 0x02

/*-- LCD_Instruction_EMS Entry Mode Set */
#define LCD_CMD_ENTRY_MODE_SET(ucConfig) (0x04 | ucConfig )

//-- Specifies cursor move direction
#define LCD_ENTRY_MODE_SET_ID 0x02

//-- Cursor move direction : Increment
#define LCD_ENTRY_MODE_SET_ID_INC 0x02

//-- Cursor move direction : Decrement
#define LCD_ENTRY_MODE_SET_ID_DEC 0x00

//-- Display shift.
#define LCD_ENTRY_MODE_SET_S 0x01

//-- LCD_Instruction_DS Display On/Off Control
#define LCD_CMD_DISPLAY_CTRL(ucConfig) (0x08 | ucConfig)

//-- Display  on/off 
#define LCD_DISPLAY_CTRL_ON_OFF 0x04

//-- Cursor on/off 
#define LCD_DISPLAY_CTRL_CURSOR 0x02

//-- Blinking of cursor position character 
#define LCD_DISPLAY_CTRL_BLINK 0x01

/* LCD_Instruction_CDS Cursor or Display Shift */
/* Moves cursor and shifts display without changing DDRAM contents.*/
#define LCD_CMD_CURSOR_DISPLAY_SHIFT(ucConfig) (0x10 | ucConfig)

//-- Speicifies if display shift or cursor move
#define LCD_CURSOR_DISPLAY_SHIFT_SC 0x08

//-- Display shift
#define LCD_CURSOR_DISPLAY_SHIFT_SC_S 0x08

//-- Cursor move
#define LCD_CURSOR_DISPLAY_SHIFT_SC_C 0x00

//-- Specifies shift direction
#define LCD_CURSOR_DISPLAY_SHIFT_RL 0x04

//-- Shift to the right
#define LCD_CURSOR_DISPLAY_SHIFT_RIGHT 0x04

//-- Shift to the left

#define LCD_CURSOR_DISPLAY_SHIFT_LEFT 0x00

/*-- LCD_Instruction_FS Function Set */
/*-- Sets interface data length (DL), number of display lines (N), and character font (F). */
#define LCD_CMD_FUNCTION_SET(ucConfig) (0x20 | ucConfig)

//-- Line Addresses
#define LCD_LCD_LINE_1_ADDRESS 0x00
#define LCD_LCD_LINE_2_ADDRESS 0x40
#define LCD_LCD_LINE_3_ADDRESS 0x14
#define LCD_LCD_LINE_4_ADDRESS 0x54

//-- Display lines
#define LCD_FUNCTION_SET_N_1 0x00
#define LCD_FUNCTION_SET_N_2 0x08

/*--  LCD_Instruction_CGRAM_ADDR Set CGRAM Address */
/*-- Sets CGRAM address. CGRAM data is sent and received after this setting. */
#define LCD_CMD_CGRAM_ADDR_SET(ucAddr) (0x40 | ucAddr)

/*-- LCD_Instruction_DDRAM_ADDR Set DDRAM Address */
/*-- Sets DDRAM address. DDRAM data is sent and received after this setting. */
#define LCD_CMD_DDRAM_ADDR_SET(ucAddr) (0x80 | ucAddr)

//-- LCD_Instruction_RD_State Read Busy Flag & Address
#define LCD_READ_STATE_BUSY 0x80

#define LCD_READ_STATE_AC_M 0x4F
#define LCD_READ_STATE_AC_S 0

//-- LCD_Instruction_WR_DATA Write Data to CGRAM or DDRAM
#define LCD_CMD_WRITE_DATA(ucData) (ucData)


//-- LCD_Instruction_RD_Data Read Data from CGRAM or DDRAM
#define LCD_READ_DATA_M 0xFF
#define LCD_READ_DATA_S 0


/* HD44780 Setup LCD ------------------------------------------------------------------*/
#define LCD_EN_DISABLE 0
#define LCD_EN_ENABLE 1

#define LCD_RS_COMMAND 0
#define LCD_RS_DATA 1

#define LCD_RW_WRITE 0
#define LCD_RW_READ 1

/* HD44780 Cursor Direction ------------------------------------------------------------------*/
#define LCD_MOVE_DIRECTION_INC 0x02
#define LCD_MOVE_DIRECTION_DEC 0x00

/* HD44780 Character Font ------------------------------------------------------------------*/
//5x10
#define LCD_CHARACTER_FONT_5X10 0x04
//5x8
#define LCD_CHARACTER_FONT_5X8 0x00

/* HD44780 Interface ------------------------------------------------------------------*/
//8bit (D0-D7)
#define LCD_INTERFACE_8_BIT	0x10
//4bit (D4-D7)
#define LCD_INTERFACE_4_BIT	0x00

enum LCD_HD47780{
	LEFT,
	RIGHT,
	ON,
	OFF,
    BLINK
};

/* HD44780 Configure LCD Character ------------------------------------------------------------------*/
// *1 - 1 Row
// *2 - 2 Rows
// *3 - 3 Rows
// *4 - 4 Rows
#ifndef LCD_DISPLAY_LINE
    #define LCD_DISPLAY_LINE 2
#endif
 
/* HD44780 Configure LCD Character ------------------------------------------------------------------*/
// *8 - 8 Columns
// *16 - 16 Columns
// *20 - 20 Columns
// *40 - 40 Columns
// *80 - 80 Columns
#ifndef LCD_DISPLAY_CHARACTER
    #define LCD_DISPLAY_CHARACTER 16
#endif


/* HD44780 Configure Character Font ------------------------------------------------------------------*/
// *LCD_CHARACTER_FONT_5X8	- 5x8  Font
// *LCD_CHARACTER_FONT_5X10	- 5x10 Font
#define LCD_CHARACTER_FONT LCD_CHARACTER_FONT_5X8

/* HD44780 Configure Interface ------------------------------------------------------------------*/
// *LCD_INTERFACE_8_BIT	- 8bit interface (D0-D7)
// *LCD_INTERFACE_4_BIT	- 4bit interface (D4-D7)
#define LCD_INTERFACE	LCD_INTERFACE_4_BIT

/* Variable Declarations ------------------------------------------------------------------*/
struct T_StrLCDSettings{
    uint8_t ui8LCDConfiguration;
    
    uint8_t ui8LCDPins[K8_LCD_8BIT_PIN_COUNT];
}T_StrLCDSettings;

struct T_StrLCDSettings strLCDSettings;

#define ui8LCDConfig 	strLCDSettings.ui8LCDConfiguration

#define aui8LCDPins     strLCDSettings.ui8LCDPins

#define ui8LCDPinRS     strLCDSettings.ui8LCDPins[K8_LCD_PIN_RS_INDEX]
#define ui8LCDPinRW     strLCDSettings.ui8LCDPins[K8_LCD_PIN_RW_INDEX]
#define ui8LCDPinEN     strLCDSettings.ui8LCDPins[K8_LCD_PIN_EN_INDEX]

#define ui8LCDPinD0     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D0_INDEX]
#define ui8LCDPinD1     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D1_INDEX]
#define ui8LCDPinD2     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D2_INDEX]
#define ui8LCDPinD3     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D3_INDEX]

#define ui8LCDPinD4     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D4_INDEX]
#define ui8LCDPinD5     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D5_INDEX]
#define ui8LCDPinD6     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D6_INDEX]
#define ui8LCDPinD7     strLCDSettings.ui8LCDPins[K8_LCD_PIN_D7_INDEX]

/* LCD Function Prototypes ------------------------------------------------------------------*/
void setupLCD(uint8_t ui8LCDConfigSetup, uint8_t *ui8LCDPins);

void LCDGotoXY(uint8_t ui8X, uint8_t ui8Y);
void LCDHome(void);
void LCDDisplayClear(void);

void LCDDisplay(uint8_t* pui8String);

void LCDDisplayOnOff(uint8_t ui8DisplayOnOff);
void LCDDisplayShift(bool blDirection, uint8_t ui8Count);
void LCDCursorOn(uint8_t ui8Blink);
void LCDCursorOff(void);
void LCDCursorMove(bool blDirection, uint8_t ui8Count);

//void LCDEntryModeSet(uint8_t ui8CursorMoveDirection, uint8_t ui8DisplayShift);
void LCDWrite(bool blRS, uint8_t ui8Instruction);
void LCDWriteData(uint8_t ui8Data);
void LCDWriteCommand(uint8_t ui8Command);
		
#endif/* end of drv_Anito_uart.h */