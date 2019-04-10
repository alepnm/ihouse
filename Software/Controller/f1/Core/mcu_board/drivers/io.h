#ifndef IO_H_INCLUDED
#define IO_H_INCLUDED


#define LED_ON()       LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13)
#define LED_OFF()      LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13)
#define LED_TOGGLE()   LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13)

#endif /* IO_H_INCLUDED */
