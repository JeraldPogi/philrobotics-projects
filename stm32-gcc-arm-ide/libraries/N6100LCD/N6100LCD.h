
#ifndef	__N6100LCD_H
#define	__N6100LCD_H

#include <stm32f10x.h>

// lcd 8-bit colors
#define LCD_BLUE        0x03
#define LCD_YELLOW      0xFC
#define LCD_RED         0XE0
#define LCD_GREEN       0X1C
#define LCD_BLACK       0X00
#define LCD_WHITE       0XFF
#define LCD_BRIGHTGREEN 0X3D
#define LCD_DARKGREEN   0X14
#define LCD_DARKRED     0XA0
#define LCD_DARKBLUE    0X02
#define LCD_BRIGHTBLUE  0X1F
#define LCD_ORANGE      0XF8
#define LCD_GRAY		0b11011010
#define LCD_PINK		0b11100010

extern const uint8_t font5x8[][5];

void n6100lcd_init(uint8_t DAT_PIN, uint8_t CLK_PIN, uint8_t CS_PIN, uint8_t RST_PIN);
void n6100lcd_send(uint8_t cd, uint8_t data);
void n6100lcd_setArea(uint8_t x1, uint8_t x2, uint8_t y1, uint8_t y2);
void n6100lcd_rectFill(uint8_t x1, uint8_t x2, uint8_t y1, uint8_t y2, uint8_t color);
void n6100lcd_text(const char *s, uint8_t x, uint8_t y, uint8_t fontColor, uint8_t bgColor);

void n6100lcd_setPixel(uint8_t x, uint8_t y, uint8_t color);
void n6100lcd_line(int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint8_t color);
void n6100lcd_Hline(int16_t x1, int16_t x2, int16_t y, uint8_t color);

#define n6100lcd_clearScreen(color)	n6100lcd_rectFill(0, 131, 0, 131, color)

#endif	// __N6100LCD_H
