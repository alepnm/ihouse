
#include "main.h"
#include "bsp.h"

/* externs */
extern volatile uint32_t timestamp;

/* locals */
uint16_t FlashSize = 0;
uint8_t UnitID[12];


uint32_t now = 0;


void BSP_SystemInit(void) {

    FlashSize = BSP_GetFlashSize();
    BSP_GetID(UnitID);

    /* GPIO portu inicializacija */
    LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

    GPIO_InitStruct.Pin = LL_GPIO_PIN_13;
    GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
    GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
    LL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    LED_OFF();

    /* RTC taimerio inicializacija */
    RTC_Init();
    now = LL_RTC_TIME_Get(RTC);

    /* USART portu konfiguravimas */
    Ports[PRIMARY_PORT].Conf.MbAddr = 10;
    Ports[SECONDARY_PORT].Conf.MbAddr = 11;

    USART_Config(TB387_PORT, baudrates[Ports[TB387_PORT].Conf.Baudrate], Ports[TB387_PORT].Conf.DataBits, Ports[TB387_PORT].Conf.Parity);
    USART_Config(NEXTION_PORT, 19200, 8, UART_PAR_NONE);


}


/*  */
void BSP_SystemHandler(void){

    now = LL_RTC_TIME_Get(RTC);


}



/* in Kb */
uint16_t BSP_GetFlashSize(void) {
    return *(uint16_t *)(FLASHSIZE_BASE);
}


/*  */
void BSP_GetID(uint8_t* bufid) {

    uint8_t i = 0;

    do {
        *(bufid + i) = *(uint8_t*)(UID_BASE + i);
    } while(++i < 12);

}
