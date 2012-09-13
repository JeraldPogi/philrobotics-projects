
#ifndef ARM_MCU_TIMER_H
#define ARM_MCU_TIMER_H

void delay_us(uint16_t cnt);
void delay_ms(uint16_t cnt);

// TIM15 - 1MHz
#define micros()	((uint16_t)(TIM15->CNT))
// TIM17 - 1kHz
#define millis()	((uint16_t)(TIM17->CNT))

#endif	// ARM_MCU_TIMER_H
