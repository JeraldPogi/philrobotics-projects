
#ifndef ARM_MCU_GPIO_H
#define ARM_MCU_GPIO_H

#define INPUT_ANALOG		GPIO_Mode_AIN
#define INPUT_FLOATING		GPIO_Mode_IN_FLOATING
#define INPUT_PULLDOWN		GPIO_Mode_IPD
#define INPUT_PULLUP		GPIO_Mode_IPU
#define OUTPUT_OPENDRAIN	GPIO_Mode_Out_OD
#define OUTPUT_PUSHPULL		GPIO_Mode_Out_PP
#define ALTFUNC_OPENDRAIN	GPIO_Mode_AF_OD
#define ALTFUNC_PUSHPULL 	GPIO_Mode_AF_PP

#define INPUT	INPUT_FLOATING
#define OUTPUT	OUTPUT_PUSHPULL

#define PB12	0xB0+12	// A0
#define PB15	0xB0+15	// A1
#define PB14	0xB0+14	// A2
#define PB13	0xB0+13	// A3
#define PB10	0xB0+10	// A4
#define PB11	0xB0+11	// A5
#define PB0		0xB0+0	// A6
#define PB1		0xB0+1	// A7

#define PA3		0xA0+3	// D0
#define PA2		0xA0+2	// D1
#define PA0		0xA0+0	// D2
#define PA1		0xA0+1	// D3
#define PB5		0xB0+5	// D4
#define PB6		0xB0+6	// D5
#define PA11	0xA0+11	// D6
#define PA12	0xA0+12	// D7
#define PB7		0xB0+7	// D8
#define PA4		0xA0+4	// D9
#define PA7		0xA0+7	// D10
#define PA6		0xA0+6	// D11
#define PA5		0xA0+5	// D12
#define PB9		0xB0+9	// D13
#define PB8		0xB0+8	// D14

#define LED_PIN		PA5

void pinMode(uint8_t pin, GPIOMode_TypeDef mode);
inline void setPinHigh(uint8_t pin);
inline void setPinLow(uint8_t pin);
inline void togglePin(uint8_t pin);
inline bool getPinState(uint8_t pin);

#endif	// ARM_MCU_GPIO_H
