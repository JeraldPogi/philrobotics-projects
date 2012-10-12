
#include "common.h"
#include "timer.h"

volatile uint16_t g_ms_counter;

void timer_init(void)
{
	//Timer1 Registers Prescaler= 1
	T1CKPS1 = 0;   // Prescaler= 1
	T1CKPS0 = 0;
	T1OSCEN = 1;   // Timer1 Oscillator Enable Control bit 1 = on
	T1SYNC = 1;    // Timer1 External Clock Input Synchronization Control bit...1 = Do not synchronize external clock input
	TMR1CS = 0;    // Timer1 Clock Source Select bit...0 = Internal clock (FOSC/4)
	TMR1ON = 1;    // enables timer 1
	TMR1H = TMR1_PRESET_HIGH;
	TMR1L = TMR1_PRESET_LOW;

	g_ms_counter = 0;

	// Interrupt Registers
	TMR1IF = 0;    // clear timer1 interupt flag
	TMR1IE =  1;   // enable Timer1 interrupt
	PEIE = 1;      // Peripheral Interrupt Enable
	ei();       // global interrupt enable

}

