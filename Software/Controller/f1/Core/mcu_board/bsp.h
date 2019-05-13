#ifndef BOARD_H_INCLUDED
#define BOARD_H_INCLUDED


#include "defs.h"
#include "bsp_func.h"
#include "io.h"
#include "iic_eeprom.h"
#include "usart.h"
#include "rtc.h"
#include "mcp23017.h"
#include "dc_motor.h"
#include "tb387.h"
#include "nextion.h"

#include "ds1307.h"


typedef struct{

    uint8_t                 UnitID[12];
    uint16_t                FlashSize;

    Port_TypeDef            Ports[2];

    uint8_t                 McpPortA;   // PortA veidrodis
    uint8_t                 McpPortB;   // PortB veidrodis

}SysData_TypeDef;

extern SysData_TypeDef SysData;


void        BSP_SystemInit(SysData_TypeDef *self);
void        BSP_SystemHandler(void);
void        BSP_GetID(uint8_t* bufid);
uint16_t    BSP_GetFlashSize(void);

#endif /* BOARD_H_INCLUDED */
