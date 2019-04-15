#ifndef TB387_H_INCLUDED
#define TB387_H_INCLUDED

#include "defs.h"
#include "usart.h"


uint8_t TB387_Init(void);
void TB387_SetDefaults(void);

uint32_t hex2int(char *hex);
#endif /* TB387_H_INCLUDED */
