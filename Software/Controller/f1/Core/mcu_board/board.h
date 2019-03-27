#ifndef BOARD_H_INCLUDED
#define BOARD_H_INCLUDED


/*
PC13 - output (LED)

*/

#define LED_ON()       LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13
#define LED_OFF()      LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13)
#define LED_TOGGLE()   LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13)

void BoardInit(void);


#endif /* BOARD_H_INCLUDED */
