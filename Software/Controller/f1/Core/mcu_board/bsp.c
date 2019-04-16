
#include "main.h"
#include "bsp.h"


uint32_t now = 0;


void BSP_SystemInit(void) {

    LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

    GPIO_InitStruct.Pin = LL_GPIO_PIN_13;
    GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
    GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
    LL_GPIO_Init(GPIOC, &GPIO_InitStruct);


    LED_OFF();


    RTC_Init();

    now = LL_RTC_TIME_Get(RTC);


    TB387_Init(&TB387);


    USART_Config(NEXTION_PORT, 19200, 8,  USART_PAR_NONE);

}


/*  */
void BSP_SystemHandler(void){

    now = LL_RTC_TIME_Get(RTC);


}
