
#ifndef ARM_PLATFORM_H
#define ARM_PLATFORM_H

#include <stm32f10x.h>
#include <stdbool.h>

#include <uart.h>
#include <xprintf.h>
#include <gpio.h>
#include <timer.h>

// xuart (deafult serial port)
#define printf			xprintf
#define Serial_print	xprintf
#define Serial_readln	xgets

#define Serial_readbyte		uart_getc
#define Serial_writebyte	uart_putc
#define Serial_available	uart_isrx

#define Serial_begin(baud) \
				uart_init(baud); \
				xdev_out(uart_putc); \
				xdev_in(uart_getc)

#endif	// ARM_PLATFORM_H
