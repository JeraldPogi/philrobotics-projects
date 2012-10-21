
#include "SoftUart.h"

// todo: adjustable baud rate
#define SOFTUART_BAUDRATE	9600  // 8-N-1
// preload values at prescaler = 4 
// http://eng-serve.com/pic/pic_timer.html
#define TMR0_START_PRELOAD	61	// 1.5 bits delay = 6410.26 Hz
#define TMR0_BAUD_PRELOAD	126	// 1 bit delay = 9615.38 Hz
#define TMR0_FAST_PRELOAD	191	// 0.5 bit delay = 19230.77 Hz

// bit delay in microseconds
#define BITDELAY_US			(1000000/SOFTUART_BAUDRATE)

volatile UartFifo SoftRxFifo;
/* volatile UartFifo SoftTxFifo; */ // no soft tx buffer

static void	uart_init(uint32_t baud)
{
	// todo: baudrate settings
	
	SOFTTX_TRIS = 0; // output
	SOFTTX_PIN = 1;	// initially high (idle state)
	SOFTRX_TRIS = 1; // input
	
	SoftRxFifo.ri = 0; SoftRxFifo.wi = 0; SoftRxFifo.cnt = 0;
	
	//setup Timer0
	T0CS = 0;  // Internal Clock
	T0SE = 0;  // 0 = low/high
	PSA = 0;   // Prescaler is assigned to the Timer0
	PS2 = 0;   // PS2:PS0: Prescaler Rate Select bits = 4
	PS1 = 0;
	PS0 = 1;
	TMR0 = 0;
	
	TMR0IF = 0;	// clear timer 0 interrupt flag
	TMR0IE = 0;	// initially disable TMR0 Overflow Interrupt
	
	INTEDG = 0; // Interrupt on falling edge of RB0/INT pin
	INTF = 0;	// The RB0/INT external interrupt did not occur
	INTE = 1;	// Enables the RB0/INT external interrupt
	
	PEIE = 1;
	ei();
}

inline void SoftUartISR(void)
{
	static uint8_t bit_counter = 0;
	static uint8_t rx_byte = 0;
	uint8_t tmp;
	if(INTE && INTF) // start bit detected
	{
		TMR0 = TMR0_START_PRELOAD;
		TMR0IE = 1; // trigger timer interrupt after 1.5 bits
		INTE = INTF = 0; // disable external interrupt
		bit_counter = 0; // bit-0 to bit-7
		rx_byte = 0;
	}
	if(TMR0IE && TMR0IF)
	{
		TMR0 = TMR0_BAUD_PRELOAD;
		if(bit_counter<8){
			if(SOFTRX_PIN==1) // sample data bit
				rx_byte |= (1<<bit_counter);
		}
		else if(bit_counter>8){ // finished 8 bits + stop bit
			tmp = (SoftRxFifo.wi+1) & UART_BUFF_MASK;
			if (tmp != SoftRxFifo.ri){	/* Skip if FIFO is full */
				SoftRxFifo.buff[SoftRxFifo.wi] = rx_byte;	/* Store data into the FIFO */
				SoftRxFifo.wi = tmp;
				SoftRxFifo.cnt++; // increment receive byte count
			}
			TMR0IE = 0; // disable timer interrupt
			INTF = 0;
			INTE = 1; // re-enable start bit detector
		}
		bit_counter++;
		TMR0IF = 0; // clear interrupt flag
	}
}

static uint8_t uart_test(void)
{
	return SoftRxFifo.cnt;
}

static char	uart_read(void)
{
	char d;

	while (!SoftRxFifo.cnt) ;		/* Wait while Rx FIFO empty */

	di();
	d = SoftRxFifo.buff[SoftRxFifo.ri++]; /* Get a byte from Rx FIFO */
	SoftRxFifo.ri &= UART_BUFF_MASK;
	SoftRxFifo.cnt--;
	ei();

	return d;
}

static void	uart_write(char ch)
{
	uint8_t d = (uint8_t)ch;
	uint8_t cnt = 7;
	SOFTTX_PIN = 0;
	//__delay_us(BITDELAY_US);
	__delay_us(BITDELAY_US-4);
	do{
		SOFTTX_PIN = (d&0x01);
		//__delay_us(BITDELAY_US);
		__delay_us(BITDELAY_US-7);
		d >>= 1;
	}while(cnt--);
	SOFTTX_PIN = 1;
	__delay_us(BITDELAY_US);
}

static void uart_print(const char *s)
{
	while(*s)
		uart_write(*s++);
}

UARTDEVICE SoftUart = {
	uart_init,
	uart_test,
	uart_read,
	uart_write,
	uart_print
};

