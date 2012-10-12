
#ifndef __TIMER_H__
#define __TIMER_H__

#define TIMER_IRQ_FREQ		1000	// 1kHz (1ms period)
// fout = fclk / (4*prescaler*(65535-preload))
//preload = 65535-fclk/(fout*4) ; prescaler=1
#define TMR1_PRESET 		(uint16_t)( 65535-(_XTAL_FREQ/(TIMER_IRQ_FREQ*4)) )
#define TMR1_PRESET_HIGH	(uint8_t)( TMR1_PRESET>>8 )
#define TMR1_PRESET_LOW		(uint8_t)( TMR1_PRESET & 0xFF )

extern volatile uint16_t g_ms_counter;

#define millis()	 g_ms_counter

void timer_init(void);


#endif // __TIMER_H__
