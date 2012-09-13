
#include <platform.h>
#include "N6100LCD.H"

uint16_t _DAT_PIN = LED_PIN;
uint16_t _CLK_PIN = LED_PIN;
uint16_t _CS_PIN = LED_PIN;
uint16_t _RST_PIN = LED_PIN;

#define DAT1()	setPinHigh(_DAT_PIN)
#define DAT0()	setPinLow(_DAT_PIN)
#define CLK1()	setPinHigh(_CLK_PIN)
#define CLK0()	setPinLow(_CLK_PIN)
#define CS1()	setPinHigh(_CS_PIN)
#define CS0()	setPinLow(_CS_PIN)
#define RST1()	setPinHigh(_RST_PIN)
#define RST0()	setPinLow(_RST_PIN)

// PCF8833 commands
#define LCD_NOP		0x00  //no operation
#define SWRESET		0x01  //software reset
#define BSTROFF		0x02  //booster voltage off
#define BSTRON		0x03  //booster voltage on
#define SLEEP_IN	0x10
#define SLEEP_OUT	0x11
#define INVOFF		0x20  //display inversion off
#define INVON		0x21  //display inversion on
#define DISPOFF		0x28  //display off
#define DISPON		0x29  //display on
#define DALO		0x22  //all pixel off
#define SETCON		0x25  //set contrast
#define CASET		0x2A  //column address set; X address
#define PASET		0x2B  //page address set; Y address
#define RAMWR		0x2C  //memory write
#define RGBSET		0x2D  //colour set

#define MADCTL		0x36  //memory data access control
#define COLMOD		0x3A  //interface pixel format

#define	COLOR_8_BIT		0x02
#define	COLOR_12_BIT	0x03
#define	COLOR_16_BIT	0x05

// MADCTL parameters // 7:MY  6:MX  5:V
#define TEXT_MADCTL		0b00100000 
#define HLINE_MADCTL	0b00000000

// SPI first bit
#define CMD		0
#define DATA	1

void n6100lcd_send(uint8_t cd, uint8_t data)
{
	uint8_t i=8;
	CS0(); CLK0();
	if(cd) DAT1();
	else DAT0();
	CLK1();
	while(i--){
		CLK0();
		if(data & 0x80)	DAT1();
		else DAT0();
		CLK1();
		data = data<<1;
	}
	CS1();
}

#define text_mode()	n6100lcd_send(CMD, MADCTL); n6100lcd_send(DATA, TEXT_MADCTL)
#define draw_mode()	n6100lcd_send(CMD, MADCTL); n6100lcd_send(DATA, HLINE_MADCTL)

void n6100lcd_init(uint8_t DAT_PIN, uint8_t CLK_PIN, uint8_t CS_PIN, uint8_t RST_PIN)
{
	_DAT_PIN = DAT_PIN;
	_CLK_PIN = CLK_PIN;
	_CS_PIN = CS_PIN;
	_RST_PIN = RST_PIN;
	
	RST1(); DAT1(); CLK0(); CS1();
	
	pinMode(_DAT_PIN, OUTPUT);
	pinMode(_CLK_PIN, OUTPUT);
	pinMode(_CS_PIN, OUTPUT);
	pinMode(_RST_PIN, OUTPUT);

	delay_ms(5);  RST0();
	delay_ms(10); RST1();
	// PCF8833 controller	
	n6100lcd_send(CMD, SWRESET);	// Software Reset
	n6100lcd_send(CMD, SLEEP_OUT);	// Sleep Out
	n6100lcd_send(CMD, BSTRON);	// Booster ON
	delay_ms(10);
	n6100lcd_send(CMD, DISPON);	// Display ON
	n6100lcd_send(CMD, INVOFF);	// Mode NORMAL
	n6100lcd_send(CMD, COLMOD);	// interface pixel format
	n6100lcd_send(DATA, COLOR_8_BIT);	// 256 color (8-bit mode)	
	draw_mode(); 
	n6100lcd_send(CMD, SETCON);	// LCD contrast
	n6100lcd_send(DATA, 60);
	
}

/****************************************/
void n6100lcd_setArea(uint8_t x1, uint8_t x2, uint8_t y1, uint8_t y2)
{
	//  prepare screen window/area
	n6100lcd_send(CMD, CASET);  // column address set
	n6100lcd_send(DATA, x1);
	n6100lcd_send(DATA, x2);   
	n6100lcd_send(CMD, PASET);  // page address set
	n6100lcd_send(DATA, y1);
	n6100lcd_send(DATA, y2);   
	n6100lcd_send(CMD, RAMWR);  //memory write
}

/****************************************/
void n6100lcd_rectFill(uint8_t x1, uint8_t x2, uint8_t y1, uint8_t y2, uint8_t color)
{
	uint16_t total = ( (uint16_t)x2-x1+1)*(y2-y1+1);
	n6100lcd_setArea(x1, x2, y1, y2);
	while(total--) n6100lcd_send(DATA, color);
}

/****************************************/
static void lcd_putc(char c, uint8_t fontColor, uint8_t bgColor)
{
	uint8_t d, row, col=5;
	
	if (c>'z' || c<' ') return;
	
	while(col--){
		d = font5x8[c-' '][4-col];
		row=8; while(row--){
			if(d & 0x01) n6100lcd_send(DATA, fontColor);
			else n6100lcd_send(DATA, bgColor);
			d >>= 1;
		}
	}

	row=8; while(row--) n6100lcd_send(DATA, bgColor);
}

/****************************************/
void n6100lcd_text(const char *s, uint8_t x, uint8_t y, uint8_t fontColor, uint8_t bgColor)
{
	text_mode();
	n6100lcd_setArea(y, y+7, x, 131);
	while (*s) {
		lcd_putc(*s, fontColor, bgColor);
		++s;
	}
	draw_mode();
}

/****************************************/
void n6100lcd_setPixel(uint8_t x, uint8_t y, uint8_t color)
{
	n6100lcd_send(CMD, CASET);
	n6100lcd_send(DATA, y);
	//n6100lcd_send(DATA, y);
   
	n6100lcd_send(CMD, PASET);
	n6100lcd_send(DATA, x);
	//n6100lcd_send(DATA, x);
   
	n6100lcd_send(CMD, RAMWR);
	n6100lcd_send(DATA, color);
}

/****************************************/
void n6100lcd_line(int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint8_t color)
{
	//Bresenham's line algorithm
	int8_t ix;
    int8_t iy;
	int16_t error;
 
    // if x1 == x2 or y1 == y2, then it does not matter what we set here
    int16_t delta_x = (x2 > x1?(ix = 1, x2 - x1):(ix = -1, x1 - x2)) << 1;
    int16_t delta_y = (y2 > y1?(iy = 1, y2 - y1):(iy = -1, y1 - y2)) << 1;
 
    if (delta_x >= delta_y)
    {
        // error may go below zero
        error = delta_y - (delta_x >> 1);
 
        while (x1 != x2)
        {
            if (error >= 0)
            {
                //if (error || (ix > 0))
                //{
                    y1 += iy;
                    error -= delta_x;
                //}
            } 
            x1 += ix;
            error += delta_y; 
            n6100lcd_setPixel(x1, y1, color);
        }
    }
	else
    {
        // error may go below zero
        error = delta_x - (delta_y >> 1);
 
        while (y1 != y2)
        {
            if (error >= 0)
            {
                //if (error || (iy > 0))
                //{
                    x1 += ix;
                    error -= delta_y;
                //}
            }
            y1 += iy;
            error += delta_x; 
            n6100lcd_setPixel(x1, y1, color);
        }
    }
}

/****************************************/
void n6100lcd_Hline(int16_t x1, int16_t x2, int16_t y, uint8_t color)
{
	int16_t x;

	n6100lcd_send(CMD, CASET);
	n6100lcd_send(DATA, y); n6100lcd_send(DATA, y);
 
	n6100lcd_send(CMD, PASET);
	if(x2>x1){
		n6100lcd_send(DATA, x1); n6100lcd_send(DATA, x2);
		x=x2-x1;
	}
	else{
		n6100lcd_send(DATA, x2); n6100lcd_send(DATA, x1);	
		x=x1-x2;		
	}

	n6100lcd_send(CMD, RAMWR);
	while(x--)	n6100lcd_send(DATA, color);
}


