#ifndef __SOFTUART_H__
#define __SOFTUART_H__

#include <common.h>#include <uart.h>
// user selectable tx pin
#define SOFTTX_PIN		RC1		// D1
#define SOFTTX_TRIS		TRISC1
// fixed! rx pin
#define SOFTRX_PIN		RB0		// D8
#define SOFTRX_TRIS		TRISB0

extern volatile UartFifo SoftRxFifo;
extern UARTDEVICE SoftUart;

inline void SoftUartISR(void);
#endif
