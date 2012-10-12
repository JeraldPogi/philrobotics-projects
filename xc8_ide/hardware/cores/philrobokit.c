
#include <philrobokit.h>

__CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON & BOREN_OFF);

void interrupt isr(void)
{
	uint8_t tmp, chr;
	if(RCIF)
	{
		chr = RCREG;	/* Get received data */
		tmp = (RxFifo.wi+1) & UART_BUFF_MASK;
		if (tmp != RxFifo.ri){	/* Skip if FIFO is full */
			RxFifo.buff[RxFifo.wi] = chr;	/* Store data into the FIFO */
			RxFifo.wi = tmp;
			RxFifo.cnt++;
		}
		RCIF = 0;
	}
	if(TXIF && TXIE)
	{
		TXREG = TxFifo.buff[TxFifo.ri++];
		TxFifo.cnt--;
		TxFifo.ri &= UART_BUFF_MASK;
		if (TxFifo.ri == TxFifo.wi)
			TXIE = 0;
		TXIF = 0;
	}

	if(TMR1IF)
	{
		g_ms_counter++;
		TMR1H = TMR1_PRESET_HIGH;
		TMR1L = TMR1_PRESET_LOW;
		TMR1IF = 0;

	}
}

void board_init(void)
{
	// custom gpio's
	leds_init();
	pbs_init();
	buzzer_init();

	// timer
	timer_init();
}

