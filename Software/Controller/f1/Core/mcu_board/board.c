
#include "main.h"
#include "board.h"




void BoardInit(void) {

    LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

    LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13);

    GPIO_InitStruct.Pin = LL_GPIO_PIN_13;
    GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
    GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
    LL_GPIO_Init(GPIOC, &GPIO_InitStruct);


    LED_OFF();





}
