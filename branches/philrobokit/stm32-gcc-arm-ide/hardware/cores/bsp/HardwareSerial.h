
#ifndef HARDWARESERIAL_H
#define HARDWARESERIAL_H

#include "stm32f10x.h"
#include <stdarg.h>

#define UART_BUFF_SIZE		64
#define	UART_BUFF_MASK		(UART_BUFF_SIZE-1)

class HardwareSerial
{
public:
	HardwareSerial(uint8_t RxPin, uint8_t TxPin);
	
	void begin(uint32_t baud);
	void end();
	void putc(uint8_t c);
	void print(char ch);
	void print(int num);
	void puts(const char *s);
	uint8_t isrx();
	uint8_t getc();
	
	/* from ChaN's embedded string functions */
	void print(const char *fmt, ...);
	void vprint(const char*	fmt, va_list arp);
	int gets(char* buff, int len);
	
	/* interrupt service routine */
	static void ISR(HardwareSerial *ser);

private:
	GPIO_TypeDef* port;
	volatile uint16_t rx, tx;
	
	USART_TypeDef* uart;
	volatile uint16_t irq;

	volatile struct {
		uint16_t	inptr, outptr;			/* in/out index */
		uint8_t		buff[UART_BUFF_SIZE];	/* receive/transmit buffer */
	} TxFifo, RxFifo;
	volatile uint8_t TxRun;		/* TX running flag */
	
};

extern HardwareSerial Serial1;
extern HardwareSerial Serial2;
extern HardwareSerial Serial3;

#define Serial	Serial1

#endif	// HARDWARESERIAL_H
