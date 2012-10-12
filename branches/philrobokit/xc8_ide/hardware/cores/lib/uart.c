
#include "common.h"
#include "uart.h"


volatile UartFifo TxFifo, RxFifo;

void uart1_init(uint32_t baud)
{
	// BAUDRG  = Fosc / (16 * Desired Baudrate) - 1
#if 0
	SPBRG = BAUDRG;
#elif 0 // +16% RAM !
	SPBRG = (uint8_t)( (float)_XTAL_FREQ/(16*baud) - 1 + 0.5 ); // integer round off
#else // +6%
	uint32_t brg = ( (_XTAL_FREQ<<5) / (baud<<4) - 1 );
	SPBRG = (uint8_t)(brg>>5);
#endif

	TX9 = 0;	//8-bit
	TXEN = 1; //Enable Transmit
	SYNC = 0; //Asyncronous Mode
	BRGH = 1; //High Speed Asyncronous

	SPEN = 1; //Enable Serial Port
	RX9 = 0; //8-bit
	CREN = 1; //Enable Continuous receive

	/* Clear Tx/Rx FIFOs */
	TxFifo.ri = 0; TxFifo.wi = 0; TxFifo.cnt = 0;
	RxFifo.ri = 0; RxFifo.wi = 0; RxFifo.cnt = 0;

	TXIE = 0; //Transmit Interrupt Disable
	TXIF = 0; //Clear Transmit Interrupt Flag

	RCIE = 1; //Receive Interrupt Enable
	RCIF = 0; //Clear Receive Interrupt Flag

	PEIE = 1; //Enable Peripheral Interrupt
	ei();;  //Enable Global Interrupt
}

/* Check number of bytes in the Rx FIFO */
uint8_t uart1_test(void)
{
	return RxFifo.cnt;	/* Returns number of bytes in the Rx FIFO */
}

/* Get a byte from Rx FIFO */
char getch(void)
{
	char d;

	while (!RxFifo.cnt) ;		/* Wait while Rx FIFO empty */

	di();
	d = RxFifo.buff[RxFifo.ri++]; /* Get a byte from Rx FIFO */
	RxFifo.ri &= UART_BUFF_MASK;
	RxFifo.cnt--;
	ei();

	return d;
}

/* Put a byte into Tx FIFO */
void putch(char ch)
{
	while (TxFifo.cnt >= UART_BUFF_SIZE) ;	/* Wait while Tx FIFO is full */

	di();
	TxFifo.buff[TxFifo.wi++] = ch;	/* Put a data into the Tx FIFO */
	TxFifo.wi &= UART_BUFF_MASK;
	TxFifo.cnt++;
	TXIE = 1;
	ei();
}

UARTDEVICE Serial = {
	uart1_init,
	uart1_test,
	/* stdio */
	getch,
	putch,
	printf
};

