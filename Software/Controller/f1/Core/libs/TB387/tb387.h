#ifndef TB387_H_INCLUDED
#define TB387_H_INCLUDED

#include "defs.h"
#include "usart.h"

struct _tb387 {
    uint8_t     IsPresent;
    uint8_t     ConfigModeIsActive;
    uint16_t    id;
    uint8_t     baudrate;
    uint8_t     channel;
    uint8_t     retries;
}TB387;


uint8_t TB387_Init(struct _tb387 *tb);
uint8_t TB387_Config(struct _tb387 *tb);
void    TB387_SetDefaults(struct _tb387 *tb);

uint32_t hex2int(char *hex);
#endif /* TB387_H_INCLUDED */
