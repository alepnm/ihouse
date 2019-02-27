#ifndef DS3107_H_INCLUDED
#define DS3107_H_INCLUDED

#include "datetime.h"
#include "iic.h"

#define     DS1307_BASE_ADDRESS    0x68    // be R/W bito islygintas i desine





void    DS1307_Init(void);
void    DS1307_ReadRegisters(void);
void    DS1307_WriteRegisters(void);
void    DS1307_GetDateTime(DateTime_TypeDef* dest);
uint8_t DS1307_ReadRegister(uint8_t reg);
void    DS1307_WriteRegister(uint8_t reg, uint8_t data);
void    DS1307_ReadBackupRegisters(void);
void    DS1307_WriteBackupRegisters(void);

#endif /* DS3107_H_INCLUDED */
