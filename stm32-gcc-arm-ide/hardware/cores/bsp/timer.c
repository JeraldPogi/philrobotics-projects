
#include <stm32f10x.h>
#include <timer.h>

TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;

void delaytimer_init(void) 
{
	/* Enable timer clock */
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM15 | RCC_APB2Periph_TIM17, ENABLE );

	/* Time base configuration */
	TIM_TimeBaseStructure.TIM_Period = UINT16_MAX; 
	TIM_TimeBaseStructure.TIM_ClockDivision = 0;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	
	// TIM15 - 1MHz
	TIM_TimeBaseStructure.TIM_Prescaler = (SystemCoreClock / 1000000) - 1;
	TIM_TimeBaseInit(TIM15, &TIM_TimeBaseStructure);
 
	// TIM17 - 1kHz
	TIM_TimeBaseStructure.TIM_Prescaler = (SystemCoreClock / 1000) - 1;
	TIM_TimeBaseInit(TIM17, &TIM_TimeBaseStructure);
	
	/* Enable counter */
	TIM_Cmd(TIM15, ENABLE);
	TIM_Cmd(TIM17, ENABLE);
}

void delay_us(uint16_t cnt) 
{
	uint16_t start = TIM15->CNT;
	while((uint16_t)(TIM15->CNT - start) <= cnt);
}

void delay_ms(uint16_t cnt) 
{
	uint16_t start = TIM17->CNT;
	while((uint16_t)(TIM17->CNT - start) <= cnt);
}

// PWM's
// D3 - PA1 - TIM2_CH2
// D5 - PB6 - TIM4_CH1
// D6 - PA11- TIM1_CH4
// D10- PA7 - TIM3_CH2
// D11- PA6 - TIM3_CH1
