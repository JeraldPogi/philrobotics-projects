#ifndef __UART_H__
#define __UART_H__

#define UART_BUFF_SIZE		16
#define UART_BUFF_MASK		(UART_BUFF_SIZE-1)

typedef struct {
	uint8_t ri, wi, cnt;			/* Read index, Write index, Data counter */
	uint8_t buff[UART_BUFF_SIZE];	/* FIFO buffer */
} UartFifo;

extern volatile UartFifo TxFifo, RxFifo;

typedef struct _uartdevice {
	void	(*begin)(uint32_t baud);
	uint8_t	(*test)(void);
	char	(*read)(void);
	void	(*write)(char c);
	int		(*print)(const char *, ...);
} UARTDEVICE;

extern UARTDEVICE Serial;


#endif // __UART_H__
