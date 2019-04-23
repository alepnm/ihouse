#ifndef BOARD_H_INCLUDED
#define BOARD_H_INCLUDED

#include "bsp_func.h"
#include "io.h"
#include "iic_eeprom.h"
#include "usart.h"
#include "rtc.h"
#include "mcp23017.h"
#include "dc_motor.h"
#include "tb387.h"


typedef struct{

    Port_TypeDef    Ports[2];

    uint8_t         McpPortA;   // PortA veidrodis
    uint8_t         McpPortB;   // PortB veidrodis

    TB387_Target_TypeDef*    TB387_Target;


}SysData_TypeDef;

extern SysData_TypeDef SysData;


extern uint8_t UnitID[12];




void        BSP_SystemInit(void);
void        BSP_SystemHandler(void);
void        BSP_GetID(uint8_t* bufid);
uint16_t    BSP_GetFlashSize(void);

#endif /* BOARD_H_INCLUDED */
