#ifndef DS8583_H_INCLUDED
#define DS8583_H_INCLUDED

#include "iic.h"
#include "datetime.h"


extern uint8_t PCF8583_Flag;    // jai flagas == I2C_ADDR_NACK, sio devaiso sistemoje nera


void    PCF8583_Init(void);
void    PCF8583_GetDateTime(void);
void    PCF8583_SetDateTime(void);
void    PCF8583_ReadBackupRegisters(void);
void    PCF8583_WriteBackupRegisters(void);
#endif /* PCF8583_H_INCLUDED */
