
#include <platform.h>

extern void delaytimer_init(void);

void platform_init(void)
{
	/* Enable GPIOA, GPIOB, GPIOC and AFIO clocks */
	RCC_APB2PeriphClockCmd(    RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB
		| RCC_APB2Periph_GPIOC | RCC_APB2Periph_AFIO, ENABLE );

	/* Set the Vector Table base address at 0x08000000 */
	NVIC_SetVectorTable( NVIC_VectTab_FLASH, 0x0 );

	NVIC_PriorityGroupConfig( NVIC_PriorityGroup_4 );

	/* Configure HCLK clock as SysTick clock source. */
	SysTick_CLKSourceConfig( SysTick_CLKSource_HCLK );
	
	/* Enable UART1 w/ 115200 baud */
	/* Serial_begin(115200); */
	
	/* Enable delay counters */
	delaytimer_init();
}
