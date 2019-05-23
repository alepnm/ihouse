
#include "bsp.h"


SysData_TypeDef SysData;

/* externs */
extern volatile uint32_t timestamp;


void BSP_SystemInit(SysData_TypeDef *self) {

    self->FlashSize = BSP_GetFlashSize();
    BSP_GetID(self->UnitID);

    /* RTC taimerio inicializacija */
    RTC_Init();

    /* USART portu konfiguravimas */
    self->Ports[PRIMARY_PORT].handle = USART1;
    self->Ports[PRIMARY_PORT].Config.MbAddr = 10;
    self->Ports[PRIMARY_PORT].Config.Baudrate = BR19200;
    self->Ports[PRIMARY_PORT].Config.Parity = UART_PAR_NONE;
    self->Ports[PRIMARY_PORT].Config.StopBits = 1;
    self->Ports[PRIMARY_PORT].Config.DataBits = 8;
    self->Ports[PRIMARY_PORT].Config.Parity = UART_PAR_NONE;
    self->Ports[PRIMARY_PORT].Registers.ReceiveTimeoutFlag = false;

    self->Ports[SECONDARY_PORT].handle = USART2;
    self->Ports[SECONDARY_PORT].Config.MbAddr = 10;
    self->Ports[SECONDARY_PORT].Config.Baudrate = BR19200;
    self->Ports[SECONDARY_PORT].Config.Parity = UART_PAR_NONE;
    self->Ports[SECONDARY_PORT].Config.StopBits = 1;
    self->Ports[SECONDARY_PORT].Config.DataBits = 8;
    self->Ports[SECONDARY_PORT].Config.Parity = UART_PAR_NONE;
    self->Ports[SECONDARY_PORT].Registers.ReceiveTimeoutFlag = false;

    USART_Config(TB387_PORT, baudrates[self->Ports[TB387_PORT].Config.Baudrate], self->Ports[TB387_PORT].Config.DataBits, self->Ports[TB387_PORT].Config.Parity);
    USART_Config(NEXTION_PORT, 9600, 8, UART_PAR_NONE);

    SysData.Temperature = &Temperature;
    SysData.TemperatureString = TemperatureString;
    SysData.DateTimeString = DateTimeString;

}


/*  */
void BSP_SystemHandler(void){



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
