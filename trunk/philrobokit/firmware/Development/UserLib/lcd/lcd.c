//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	lcd.c - LCD File
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
#include "drv_Anito_lcd.h"

	void setupLCD(uint8_t ui8LCDConfigSetup, uint8_t *ui8LCDPinSetup)
	{			
        uint8_t ui8Temp = 0;
        
        // LCD Power Up Delay
        delayMs(500);
        
        //ui8LCDPinRW = NULL; /* Initialized as NULL */
                       
        ui8LCDConfig = ui8LCDConfigSetup;
        
        if(ui8LCDConfig & K8_LCD_CONFIG_4x20){
            /* Override Default Settings */
            #undef  LCD_DISPLAY_CHARACTER
                #define LCD_DISPLAY_CHARACTER   (20)

            #undef LCD_DISPLAY_LINE
                #define LCD_DISPLAY_LINE    (4)            
        }
        
		/* Assign Pins */       
        if(ui8LCDConfig * K8_LCD_CONFIG_8BIT){   
            /* Override Default Settings */
            #undef LCD_INTERFACE
                #define LCD_INTERFACE   (LCD_INTERFACE_8_BIT)
            
            #undef K8_LCD_INTERFACE_PIN_COUNT
                #define K8_LCD_INTERFACE_PIN_COUNT  (K8_LCD_8BIT_PIN_COUNT)
        }
        
        /* Conditional Compile to avoid large memory consumption */
        #if(LCD_INTERFACE == LCD_INTERFACE_8_BIT)
            ui8LCDPinRS = ui8LCDPinSetup[K8_LCD_PIN_RS_INDEX];
            ui8LCDPinRW = ui8LCDPinSetup[K8_LCD_PIN_RW_INDEX];
            ui8LCDPinEN = ui8LCDPinSetup[K8_LCD_PIN_EN_INDEX];
            
            ui8LCDPinD0 = ui8LCDPinSetup[K8_LCD_PIN_D0_INDEX];
            ui8LCDPinD1 = ui8LCDPinSetup[K8_LCD_PIN_D1_INDEX];
            ui8LCDPinD2 = ui8LCDPinSetup[K8_LCD_PIN_D2_INDEX];
            ui8LCDPinD3 = ui8LCDPinSetup[K8_LCD_PIN_D3_INDEX];
            
            ui8LCDPinD4 = ui8LCDPinSetup[K8_LCD_PIN_D4_INDEX];
            ui8LCDPinD5 = ui8LCDPinSetup[K8_LCD_PIN_D5_INDEX];
            ui8LCDPinD6 = ui8LCDPinSetup[K8_LCD_PIN_D6_INDEX];
            ui8LCDPinD7 = ui8LCDPinSetup[K8_LCD_PIN_D7_INDEX];    

            /* Configure Pins as Output */
            for(ui8Temp = 0; ui8Temp<=(K8_LCD_INTERFACE_PIN_COUNT-1); ui8Temp++){
                makeOutput(aui8LCDPins[ui8Temp]);
            } 
        #else /* Default is 4Bit Mode */
            ui8LCDPinRS = ui8LCDPinSetup[K8_LCD_PIN_RS_INDEX];
            ui8LCDPinRW = ui8LCDPinSetup[K8_LCD_PIN_RW_INDEX];
            ui8LCDPinEN = ui8LCDPinSetup[K8_LCD_PIN_EN_INDEX];
            
            ui8LCDPinD4 = ui8LCDPinSetup[K8_LCD_PIN_D0_INDEX];
            ui8LCDPinD5 = ui8LCDPinSetup[K8_LCD_PIN_D1_INDEX];
            ui8LCDPinD6 = ui8LCDPinSetup[K8_LCD_PIN_D2_INDEX];
            ui8LCDPinD7 = ui8LCDPinSetup[K8_LCD_PIN_D3_INDEX];
            
            /* Configure Pins as Output */
            for(ui8Temp = 0; ui8Temp<=(K8_LCD_INTERFACE_PIN_COUNT-1); ui8Temp++){
                if(ui8Temp <= 2){
                    makeOutput(aui8LCDPins[ui8Temp]);
                }
                else{
                    makeOutput(aui8LCDPins[ui8Temp+K8_LCD_4BIT_OFFSET]);
                }
            } 
        #endif        
               
        clrPin(ui8LCDPinRS); /* LCD_RS_COMMAND */
        clrPin(ui8LCDPinEN); /* LCD_EN_DISABLE */
        //while(HD44780Busy());
        delayMs(5);
        
        LCDWriteCommand(0x03);
        LCDWriteCommand(0x03);
        LCDWriteCommand(0x03);
        LCDWriteCommand(0x02);	        
        LCDWriteCommand(LCD_CMD_FUNCTION_SET(LCD_INTERFACE|LCD_FUNCTION_SET_N_2));   /* Double Check for 4x20 */      
        LCDWriteCommand(LCD_CMD_DISPLAY_CTRL(LCD_DISPLAY_CTRL_ON_OFF));        
        LCDWriteCommand(LCD_CMD_CLS);        
        LCDWriteCommand(0x06);        
    }
    
    void LCDGotoXY(uint8_t ui8X, uint8_t ui8Y)
    {
        uint8_t ui8Address = 0;
    
        switch(ui8Y)
        {
            case 1:
                ui8Address = LCD_LCD_LINE_1_ADDRESS;
                break;

            case 2:
                ui8Address = LCD_LCD_LINE_2_ADDRESS;
                break;

            case 3:
                ui8Address = LCD_LCD_LINE_3_ADDRESS;
                break;

            case 4:
                ui8Address = LCD_LCD_LINE_4_ADDRESS;
                break;

            default:
                ui8Address = LCD_LCD_LINE_1_ADDRESS;
                break;     
        }

        ui8Address += (ui8X-1);    
        //
        // Set the DDRAM address.
        //        
        LCDWriteCommand(LCD_CMD_DDRAM_ADDR_SET(ui8Address));		
    }
    
    void LCDHome(void)
    {
        delayMs(1);
        LCDWriteCommand(LCD_CMD_RETURN_HOME);
    }
    
    void LCDDisplayClear(void)
    {
        delayMs(1);
        LCDWriteCommand(LCD_CMD_CLS);
        delayMs(1);
    }

    void LCDDisplay(uint8_t* pui8String)
    {
        uint8_t ui8Index = 0;
        uint8_t ui8MaxCount = LCD_DISPLAY_LINE * LCD_DISPLAY_CHARACTER;
        
        while(ui8Index < ui8MaxCount && pui8String[ui8Index] != 0)
        {
			delayMs(2);
            LCDWriteData(pui8String[ui8Index]);
            ui8Index++;
        }
    }

    void LCDDisplayOnOff(uint8_t ui8DisplayOnOff)
    {
        delayMs(1);
        
        if(ui8DisplayOnOff == ON){
            LCDWriteCommand(LCD_CMD_DISPLAY_CTRL(LCD_DISPLAY_CTRL_ON_OFF));
        }
        else{
            LCDWriteCommand(LCD_CMD_DISPLAY_CTRL(0));
        }
    }
    
    void LCDDisplayShift(bool blDirection, uint8_t ui8Count)
    {
        uint8_t ui8MoveCount = ui8Count;
    
        while(ui8MoveCount--)
        {
            delayMs(1);
		
            if(blDirection == LEFT){
                LCDWriteCommand(LCD_CMD_CURSOR_DISPLAY_SHIFT(
                                            LCD_CURSOR_DISPLAY_SHIFT_SC_S |
                                            LCD_CURSOR_DISPLAY_SHIFT_LEFT));
            }
            else
            {   
                LCDWriteCommand(LCD_CMD_CURSOR_DISPLAY_SHIFT(
                                            LCD_CURSOR_DISPLAY_SHIFT_SC_S |
                                            LCD_CURSOR_DISPLAY_SHIFT_RIGHT));
            }
        }
    }

    void LCDCursorOn(uint8_t ui8Blink)
    {
        uint8_t ui8BlinkCommand = (ui8Blink ? LCD_DISPLAY_CTRL_BLINK : 0);
        
        delayMs(1);
        LCDWriteCommand(LCD_CMD_DISPLAY_CTRL(LCD_DISPLAY_CTRL_ON_OFF |
                                             LCD_DISPLAY_CTRL_CURSOR |
                                             ui8BlinkCommand));
    }
    
    void LCDCursorOff(void)
    {
        delayMs(1);
        LCDWriteCommand(LCD_CMD_DISPLAY_CTRL(LCD_DISPLAY_CTRL_ON_OFF));
    }
    
    void LCDCursorMove(bool blDirection, uint8_t ui8Count)
    {
        uint8_t ui8MoveCount = ui8Count;
    
        while(ui8MoveCount--)
        {
            delayMs(1);
		
            if(blDirection == LEFT){
                LCDWriteCommand(LCD_CMD_CURSOR_DISPLAY_SHIFT(
                                            LCD_CURSOR_DISPLAY_SHIFT_SC_C |
                                            LCD_CURSOR_DISPLAY_SHIFT_LEFT));
            }
            else
            {   
                LCDWriteCommand(LCD_CMD_CURSOR_DISPLAY_SHIFT(
                                            LCD_CURSOR_DISPLAY_SHIFT_SC_C |
                                            LCD_CURSOR_DISPLAY_SHIFT_RIGHT));
            }
        }
    }
        
    void LCDWrite(bool blRS, uint8_t ui8Instruction)
    {
        uint8_t ui8Temp = 0;
        uint8_t ui8ShiftedData = 0;
        
        if(!blRS){ /* Command */
            clrPin(ui8LCDPinRS);
        }
        else{ /* Data */
            setPin(ui8LCDPinRS);
        }
        
        setPin(ui8LCDPinEN); /* LCD_EN_ENABLE */
        delayMs(2);
        
        /* Write  Data */
        ui8ShiftedData = ui8Instruction;
        #if(LCD_INTERFACE == LCD_INTERFACE_8_BIT)            
            for(ui8Temp = K8_LCD_PIN_D0_INDEX;  ui8Temp<=(K8_LCD_INTERFACE_PIN_COUNT-1); ui8Temp++){
                if(ui8ShiftedData&0x80){
                    setPin(aui8LCDPins[ui8Temp]);
                }
                else{
                    clrPin(aui8LCDPins[ui8Temp]);
                }
                ui8ShiftedData <<= 1;
            }
        #else
            /* Write Higher Nibble */
            for(ui8Temp = K8_LCD_DATA_PIN_INDEX; ui8Temp<=(K8_LCD_INTERFACE_PIN_COUNT-1); ui8Temp++){
                if(ui8ShiftedData&0x80){
                    setPin(aui8LCDPins[ui8Temp+K8_LCD_4BIT_OFFSET]);
                }
                else{
                    clrPin(aui8LCDPins[ui8Temp+K8_LCD_4BIT_OFFSET]);
                }
                ui8ShiftedData <<= 1;
            }
            /*
            * Shifted Data - 0b1111XXXXX
            */
            clrPin(ui8LCDPinEN); /* LCD_EN_DISABLE */
            delayMs(2);
            setPin(ui8LCDPinEN); /* LCD_EN_ENABLE */
            delayMs(2);
            
            /* Write Lower Nibble */
            for(ui8Temp = K8_LCD_DATA_PIN_INDEX; ui8Temp<=(K8_LCD_INTERFACE_PIN_COUNT-1); ui8Temp++){
                if(ui8ShiftedData&0x80){
                    setPin(aui8LCDPins[ui8Temp+K8_LCD_4BIT_OFFSET]);
                }
                else{
                    clrPin(aui8LCDPins[ui8Temp+K8_LCD_4BIT_OFFSET]);
                }
                ui8ShiftedData <<= 1;
            }
            
            clrPin(ui8LCDPinEN); /* LCD_EN_DISABLE */
            delayMs(2);
        #endif
    }
    
    void LCDWriteData(uint8_t ui8Data)
    {
        LCDWrite(LCD_RS_DATA, ui8Data);
    }
    
    void LCDWriteCommand(uint8_t ui8Command)
    {   
        LCDWrite(LCD_RS_COMMAND, ui8Command);
    }
	
/* end of lcd.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		