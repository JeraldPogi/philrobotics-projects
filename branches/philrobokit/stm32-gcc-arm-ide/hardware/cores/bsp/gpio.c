
#include <stm32f10x.h>
#include <stdbool.h>
#include <gpio.h>

void pinMode(uint8_t pin, GPIOMode_TypeDef mode)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Pin = (uint16_t)1<<(pin&0x0F);
	GPIO_InitStructure.GPIO_Mode = mode;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	switch(pin&0xF0){
	case 0xA0:
		GPIO_Init(GPIOA, &GPIO_InitStructure);
		break;
	case 0xB0:
		GPIO_Init(GPIOB, &GPIO_InitStructure);
		break;
	case 0xC0:
		GPIO_Init(GPIOC, &GPIO_InitStructure);
		break;
#if 0
	case 0xD0:
		GPIO_Init(GPIOD, &GPIO_InitStructure);
		break;
	case 0xE0:
		GPIO_Init(GPIOE, &GPIO_InitStructure);
		break;
#endif
	}
}

inline void setPinHigh(uint8_t pin)
{
	switch(pin&0xF0){
	case 0xA0:
		GPIOA->BSRR = (uint16_t)1<<(pin&0x0F);
		break;
	case 0xB0:
		GPIOB->BSRR = (uint16_t)1<<(pin&0x0F);
		break;
	case 0xC0:
		GPIOC->BSRR = (uint16_t)1<<(pin&0x0F);
		break;
	}
}

inline void setPinLow(uint8_t pin)
{
	switch(pin&0xF0){
	case 0xA0:
		GPIOA->BRR = (uint16_t)1<<(pin&0x0F);
		break;
	case 0xB0:
		GPIOB->BRR = (uint16_t)1<<(pin&0x0F);
		break;
	case 0xC0:
		GPIOC->BRR = (uint16_t)1<<(pin&0x0F);
		break;
	}
}

inline void togglePin(uint8_t pin)
{
	switch(pin&0xF0){
	case 0xA0:
		GPIOA->ODR ^= (uint16_t)1<<(pin&0x0F);
		break;
	case 0xB0:
		GPIOB->ODR ^= (uint16_t)1<<(pin&0x0F);
		break;
	case 0xC0:
		GPIOC->ODR ^= (uint16_t)1<<(pin&0x0F);
		break;
	}
}

inline bool getPinState(uint8_t pin)
{
	switch(pin&0xF0){
	case 0xA0:
		return ( (GPIOA->IDR & (1<<(pin&0x0F))) > 0 );
	case 0xB0:
		return ( (GPIOB->IDR & (1<<(pin&0x0F))) > 0 );
	case 0xC0:
		return ( (GPIOC->IDR & (1<<(pin&0x0F))) > 0 );
	}
	return false;
}
