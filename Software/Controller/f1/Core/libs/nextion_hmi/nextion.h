#ifndef NEXTION_H_INCLUDED
#define NEXTION_H_INCLUDED

#include "bsp.h"


void NEXTION_Init(void);
void NEXTION_CmdDecode(char *buffer);

uint8_t     NEXTION_CmdSetValue(char *var, int32_t *val);
uint8_t     NEXTION_CmdGetValue(char *var, int32_t *val);

uint8_t     NEXTION_CmdOffState(char *var);
uint8_t     NEXTION_CmdOnState(char *var);
uint8_t     NEXTION_CmdClick(char *var, uint8_t event);
uint8_t     NEXTION_CmdResetHMI(void);

#endif /* NEXTION_H_INCLUDED */
