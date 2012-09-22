
#include "HardwareSerial.h"
#include "gpio.h"

/*
 * UART1: (PA10, PA9) or todo:(PB7, PB6)
 * UART2: (PA3, PA2)
 * UART3: (PB11, PB10)
 */
 
HardwareSerial Serial1(PA10, PA9);
HardwareSerial Serial2(PA3, PA2);
HardwareSerial Serial3(PB11, PB10);

extern "C"
{
	void USART1_IRQHandler(void) { Serial1.ISR(&Serial1); }
	void USART2_IRQHandler(void) { Serial2.ISR(&Serial2); }
	void USART3_IRQHandler(void) { Serial3.ISR(&Serial3); }
}

HardwareSerial::HardwareSerial(uint8_t RxPin, uint8_t TxPin)
{
	if( (RxPin==PA10) && (TxPin==PA9) ) {
		uart = USART1; irq = USART1_IRQn;
		port = GPIOA; rx = GPIO_Pin_10; tx = GPIO_Pin_9;
	}
	/*else if( (RxPin==PB7) && (TxPin==PB6) ) {
		uart = USART1; irq = USART1_IRQn;
		port = GPIOB; rx = GPIO_Pin_7; tx = GPIO_Pin_6;
	}*/
	else if( (RxPin==PA3) && (TxPin==PA2) ) {
		uart = USART2; irq = USART2_IRQn;
		port = GPIOA; rx = GPIO_Pin_3; tx = GPIO_Pin_2;
	}
	else if( (RxPin==PB11) && (TxPin==PB10) ) {
		uart = USART3; irq = USART3_IRQn;
		port = GPIOB; rx = GPIO_Pin_11; tx = GPIO_Pin_10;
	}
	else{
		uart = (USART_TypeDef*)0;
	}
}

void HardwareSerial::begin(uint32_t baud)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	
	if(!uart) return;
	
	/* enable clocks on peripherals */
	RCC_APB2PeriphClockCmd(
			RCC_APB2Periph_GPIOA |	RCC_APB2Periph_GPIOB | // turn on GPIOs
			RCC_APB2Periph_AFIO, ENABLE); // turn on alternate function			
	if(uart == USART1)
		RCC_APB2PeriphClockCmd(	RCC_APB2Periph_USART1, ENABLE);
	else if(uart == USART2)
		RCC_APB1PeriphClockCmd(	RCC_APB1Periph_USART2, ENABLE);
	else if(uart == USART3)
		RCC_APB1PeriphClockCmd(	RCC_APB1Periph_USART3, ENABLE);
	
	/* Configure RX pin as input floating */
	GPIO_InitStructure.GPIO_Pin = rx;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(port, &GPIO_InitStructure);
	/* Configure TX pin as alternate function push-pull */
	GPIO_InitStructure.GPIO_Pin = tx;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(port, &GPIO_InitStructure);
	
	/* configure serial port settings */
	USART_InitStructure.USART_BaudRate = baud;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(uart, &USART_InitStructure);
	
	/* Configure the NVIC Preemption Priority Bits */
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
	/* Enable the USARTz Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel = irq;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = (irq-USART1_IRQn) + 1; // fix me: proper priority
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	
	/* clear FIFO buffers */
	TxFifo.inptr = TxFifo.outptr = RxFifo.inptr = RxFifo.outptr = 0;

	/* Enable uart receive interrupt */
	USART_ITConfig(uart, USART_IT_RXNE, ENABLE);
	/* transmit interrupt initially not running */
	USART_ITConfig(uart, USART_IT_TXE, DISABLE);
	TxRun = DISABLE;

	/* enable uart peripheral */
	USART_Cmd(uart, ENABLE);
}

void HardwareSerial::end()
{
	if(!uart) return;
	USART_Cmd(uart, DISABLE);
	if(uart == USART1)
		RCC_APB2PeriphClockCmd(	RCC_APB2Periph_USART1, DISABLE);
	else if(uart == USART2)
		RCC_APB1PeriphClockCmd(	RCC_APB1Periph_USART2, DISABLE);
	else if(uart == USART3)
		RCC_APB1PeriphClockCmd(	RCC_APB1Periph_USART3, DISABLE);
}

void HardwareSerial::putc(uint8_t c)
{
	if(!uart) return;
	// wait until buffer has an empty slot.
	while (( (TxFifo.inptr+1) & UART_BUFF_MASK) == TxFifo.outptr)
			continue;
	//place character in buffer
	TxFifo.buff[TxFifo.inptr] = c;
	// increment in index
	TxFifo.inptr = (TxFifo.inptr + 1) & UART_BUFF_MASK;
	// start the TX sequence if not yet running
	if (TxRun == DISABLE) {
		TxRun = ENABLE;
		USART_ITConfig(uart, USART_IT_TXE, ENABLE); // enable TX interrupt;
	}
}

void HardwareSerial::print(char ch)
{
	putc(ch);
}

void HardwareSerial::print(int num)
{
	print("%d", num);
}

void HardwareSerial::puts(const char *s)
{
	while(*s) putc(*s++);
}

uint8_t HardwareSerial::isrx()
{
	// checks if a character is present in the RX buffer
	return (RxFifo.inptr != RxFifo.outptr);
}

uint8_t HardwareSerial::getc()
{
	uint8_t c;
	
	if(!uart) return 0;

	// wait until a character is present
	while (isrx()==0)	continue;

	// get a character from RX buffer
	c = RxFifo.buff[RxFifo.outptr];
	// increment out index
	RxFifo.outptr = (RxFifo.outptr+1)&UART_BUFF_MASK;

	return c;
}

void HardwareSerial::ISR(HardwareSerial *ser)
{
	uint16_t temp;
	if(USART_GetITStatus(ser->uart, USART_IT_RXNE) != RESET)
	{
		// byte read and save to buffer
		ser->RxFifo.buff[ser->RxFifo.inptr] = USART_ReceiveData( ser->uart ) & 0xFF;
		temp = (ser->RxFifo.inptr+1) & UART_BUFF_MASK;
		if(temp != ser->RxFifo.outptr){	// avoid buffer overrun
			ser->RxFifo.inptr = temp;
		}
	}
	if(USART_GetITStatus(ser->uart, USART_IT_TXE) != RESET)
	{
		// place the character to the data register
		USART_SendData( ser->uart, ser->TxFifo.buff[ser->TxFifo.outptr++] );
		ser->TxFifo.outptr &= UART_BUFF_MASK; // circular FIFO
		if(ser->TxFifo.outptr==ser->TxFifo.inptr){ // if buffer empty
			USART_ITConfig(ser->uart, USART_IT_TXE, DISABLE); // disable TX interrupt
			ser->TxRun = DISABLE; // clear the flag
		}
	}
}

/*------------------------------------------------------------------------/
/  Universal string handler for user console interface
/-------------------------------------------------------------------------/
/
/  Copyright (C) 2011, ChaN, all right reserved.
/
/ * This software is a free software and there is NO WARRANTY.
/ * No restriction on use. You can use, modify and redistribute it for
/   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
/ * Redistributions of source code must retain the above copyright notice.
/
/-------------------------------------------------------------------------*/

void HardwareSerial::vprint (
	const char*	fmt,	/* Pointer to the format string */
	va_list arp			/* Pointer to arguments */
	)
{
	unsigned int r, i, j, w, f;
	unsigned long v;
	char s[16], c, d, *p;
	
	for (;;) {
		c = *fmt++;					/* Get a char */
		if (!c) break;				/* End of format? */
		if (c != '%') {				/* Pass through it if not a % sequense */
			putc(c); continue;
		}
		f = 0;
		c = *fmt++;					/* Get first char of the sequense */
		if (c == '0') {				/* Flag: '0' padded */
			f = 1; c = *fmt++;
		} else {
			if (c == '-') {			/* Flag: left justified */
				f = 2; c = *fmt++;
			}
		}
		for (w = 0; c >= '0' && c <= '9'; c = *fmt++)	/* Minimum width */
			w = w * 10 + c - '0';
		if (c == 'l' || c == 'L') {	/* Prefix: Size is long int */
			f |= 4; c = *fmt++;
		}
		if (!c) break;				/* End of format? */
		d = c;
		if (d >= 'a') d -= 0x20;
		switch (d) {				/* Type is... */
		case 'S' :					/* String */
			p = va_arg(arp, char*);
			for (j = 0; p[j]; j++) ;
			while (!(f & 2) && j++ < w) putc(' ');
			puts(p);
			while (j++ < w) putc(' ');
			continue;
		case 'C' :					/* Character */
			putc((char)va_arg(arp, int)); continue;
		case 'B' :					/* Binary */
			r = 2; break;
		case 'O' :					/* Octal */
			r = 8; break;
		case 'D' :					/* Signed decimal */
		case 'U' :					/* Unsigned decimal */
			r = 10; break;
		case 'X' :					/* Hexdecimal */
			r = 16; break;
		default:					/* Unknown type (passthrough) */
			putc(c); continue;
		}

		/* Get an argument and put it in numeral */
		v = (f & 4) ? va_arg(arp, long) : ((d == 'D') ? (long)va_arg(arp, int) : (long)va_arg(arp, unsigned int));
		if (d == 'D' && (v & 0x80000000)) {
			v = 0 - v;
			f |= 8;
		}
		i = 0;
		do {
			d = (char)(v % r); v /= r;
			if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
			s[i++] = d + '0';
		} while (v && i < sizeof(s));
		if (f & 8) s[i++] = '-';
		j = i; d = (f & 1) ? '0' : ' ';
		while (!(f & 2) && j++ < w) putc(d);
		do putc(s[--i]); while(i);
		while (j++ < w) putc(' ');
	}
}


void HardwareSerial::print (			/* Put a formatted string to the default device */
	const char*	fmt,	/* Pointer to the format string */
	...					/* Optional arguments */
	)
{
	va_list arp;

	va_start(arp, fmt);
	vprint(fmt, arp);
	va_end(arp);
}

int HardwareSerial::gets (		/* 0:End of stream, 1:A line arrived */
	char* buff,	/* Pointer to the buffer */
	int len		/* Buffer length */
	)
{
	int c, i;
#define	_LINE_ECHO		1
	i = 0;
	for (;;) {
		c = getc();				/* Get a char from the incoming stream */
		if (!c) return 0;			/* End of stream? */
		if (c == '\r') break;		/* End of line? */
		if (c == '\b' && i) {		/* Back space? */
			i--;
			if (_LINE_ECHO) putc(c);
			continue;
		}
		if (c >= ' ' && i < len - 1) {	/* Visible chars */
			buff[i++] = c;
			if (_LINE_ECHO) putc(c);
		}
	}
	buff[i] = 0;	/* Terminate with a \0 */
	if (_LINE_ECHO) putc('\n');
	return 1;
}

