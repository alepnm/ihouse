#ifndef MCP23017_H_INCLUDED
#define MCP23017_H_INCLUDED


#include "iic.h"

#define MCP23017_IIC_ADDRESS    0x40

#define MCP_IODIRA              0x00
#define MCP_IODIRB              0x01
#define MCP_IPOLA               0x02
#define MCP_IPOLB               0x03
#define MCP_GPINTENA            0x04
#define MCP_GPINTENB            0x05
#define MCP_DEFVALA             0x06
#define MCP_DEFVALB             0x07
#define MCP_INTCONA             0x08
#define MCP_INTCONB             0x09
#define MCP_IOCONA              0x0A
#define MCP_IOCONB              0x0B
#define MCP_GPPUA               0x0C
#define MCP_GPPUB               0x0D
#define MCP_INTFA               0x0E
#define MCP_INTFB               0x0F
#define MCP_INTCAPA             0x10
#define MCP_INTCAPB             0x11
#define MCP_GPIOA               0x12
#define MCP_GPIOB               0x13
#define MCP_OLATA               0x14
#define MCP_OLATB               0x15


#define ALL_INPUTS              0xFF
#define ALL_OUTPUTS             0x00


typedef struct{
    uint8_t port;
    uint8_t pin;
}MCP_Output_TypeDef;


extern const MCP_Output_TypeDef OC1;
extern const MCP_Output_TypeDef OC2;
extern const MCP_Output_TypeDef OC3;
extern const MCP_Output_TypeDef OC4;
extern const MCP_Output_TypeDef OC5;
extern const MCP_Output_TypeDef OC6;
extern const MCP_Output_TypeDef OC7;
extern const MCP_Output_TypeDef OC8;
extern const MCP_Output_TypeDef OC9;
extern const MCP_Output_TypeDef ACON;
extern const MCP_Output_TypeDef MA;
extern const MCP_Output_TypeDef MB;
extern const MCP_Output_TypeDef M1ENA;
extern const MCP_Output_TypeDef M2ENA;
extern const MCP_Output_TypeDef M3ENA;
extern const MCP_Output_TypeDef M4ENA;


uint8_t MCP23017_Init(void);
void MCP23017_SetPin(const MCP_Output_TypeDef* output);
void MCP23017_ClearPin(const MCP_Output_TypeDef* output);
void MCP23017_SetAllPins(uint8_t port);
void MCP23017_ClearAllPins(uint8_t port);

#endif /* MCP23017_H_INCLUDED */
