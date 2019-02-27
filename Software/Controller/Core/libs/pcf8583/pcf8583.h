#ifndef DS8583_H_INCLUDED
#define DS8583_H_INCLUDED

#include "iic.h"
#include "datetime.h"

void    PCF8583_Init(void);
void    PCF8583_ReadBackupRegisters(void);
void    PCF8583_WriteBackupRegisters(void);
#endif /* PCF8583_H_INCLUDED */
