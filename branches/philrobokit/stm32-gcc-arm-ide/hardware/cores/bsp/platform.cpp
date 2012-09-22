
#include <platform.h>
#include <stdlib.h>
#include <sys/types.h>

extern "C" { void delaytimer_init(void) ; }
extern "C" { void platform_init(void) ; }


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
	
	/* Enable delay counters */
	delaytimer_init();
}

/*
 * C++ tweaks
 * http://andybrown.me.uk/wk/2011/12/28/stm32plus-a-c-library-for-stm32-development
 */

namespace __gnu_cxx {
 
  void __verbose_terminate_handler() {
    for(;;);
  }
}
 
 extern "C" void __cxa_pure_virtual() {
  for(;;);
}
 
void *operator new(size_t size) {
  return malloc(size);
}
 
void *operator new[](size_t size) {
  return malloc(size);
}
 
void operator delete(void *p) {
  free(p);
}
 
void operator delete[](void *p) {
  free(p);
}
