#ifndef BOARD_H_INCLUDED
#define BOARD_H_INCLUDED

#include "bsp_func.h"
#include "iic_eeprom.h"
#include "usart.h"
#include "rtc.h"
#include "mcp23017.h"
#include "dc_motor.h"
#include "tb387.h"

#if defined(MODBUS_PORT)
    #include "mb.h"
    #include "user_mb_app.h"
#endif


#define LED_ON()       LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13)
#define LED_OFF()      LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13)
#define LED_TOGGLE()   LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_13)

extern uint8_t UnitID[12];


void        BSP_SystemInit(void);
void        BSP_SystemHandler(void);
void        BSP_GetID(uint8_t* bufid);
uint16_t    BSP_GetFlashSize(void);

#endif /* BOARD_H_INCLUDED */
