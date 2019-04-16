#ifndef BOARD_H_INCLUDED
#define BOARD_H_INCLUDED


#include "bluepill.h"
#include "iic_eeprom.h"
#include "usart.h"
#include "mcp23017.h"
#include "dc_motor.h"
#include "tb387.h"


#if defined(MODBUS_PORT)
    #include "mb.h"
    #include "user_mb_app.h"
#endif



void BSP_SystemInit(void);
void BSP_SystemHandler(void);

#endif /* BOARD_H_INCLUDED */
