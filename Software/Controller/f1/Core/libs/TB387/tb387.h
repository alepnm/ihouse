#ifndef TB387_H_INCLUDED
#define TB387_H_INCLUDED

#include "defs.h"
#include "usart.h"

typedef struct {
    uint8_t     IsPresent;
    uint8_t     ConfigModeIsActive;
    uint16_t    id;
    uint8_t     baudrate;
    uint8_t     channel;
    uint8_t     retries;
}TB387_TypeDef;

extern TB387_TypeDef TB387;

uint8_t TB387_Init(TB387_TypeDef *tb);
uint8_t TB387_Config(TB387_TypeDef *tb);
void    TB387_SetDefaults(TB387_TypeDef *tb);

#endif /* TB387_H_INCLUDED */
