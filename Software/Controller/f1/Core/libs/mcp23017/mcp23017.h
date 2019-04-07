#ifndef MCP23017_H_INCLUDED
#define MCP23017_H_INCLUDED


#include "iic.h"

typedef struct{
    uint8_t port;
    uint8_t pin;
}MCP_Output_TypeDef;


extern const MCP_Output_TypeDef REL14;
extern const MCP_Output_TypeDef REL13;
extern const MCP_Output_TypeDef REL12;
extern const MCP_Output_TypeDef REL11;
extern const MCP_Output_TypeDef REL10;
extern const MCP_Output_TypeDef REL9;
extern const MCP_Output_TypeDef REL8;
extern const MCP_Output_TypeDef MOTB;
extern const MCP_Output_TypeDef REL1;
extern const MCP_Output_TypeDef REL2;
extern const MCP_Output_TypeDef REL3;
extern const MCP_Output_TypeDef REL4;
extern const MCP_Output_TypeDef REL5;
extern const MCP_Output_TypeDef REL6;
extern const MCP_Output_TypeDef REL7;
extern const MCP_Output_TypeDef MOTA;



uint8_t MCP23017_Init(void);

void MCP23017_SetPin(const MCP_Output_TypeDef* output);
void MCP23017_ClearPin(const MCP_Output_TypeDef* output);
void MCP23017_TogglePin(const MCP_Output_TypeDef* output);

void MCP23017_SetAllPins(uint8_t port);
void MCP23017_ClearAllPins(uint8_t port);

uint8_t MCP23017_ReadPortA(void);
uint8_t MCP23017_ReadPortB(void);

#endif /* MCP23017_H_INCLUDED */
