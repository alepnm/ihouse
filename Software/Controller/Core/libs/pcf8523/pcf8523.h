#ifndef PCF8523_H_INCLUDED
#define PCF8523_H_INCLUDED

#include "iic.h"
#include "datetime.h"


extern DateTime_TypeDef DateTime;



void    PCF8523_Init(void);
void    PCF8523_GetDateTime(void);
void    PCF8523_SetDateTime(void);
uint8_t PCF8523_ReadRegister(uint8_t reg);
void    PCF8523_WriteRegister(uint8_t reg, uint8_t data);

uint8_t PCF8523_GetBateryStatus(void);
uint8_t PCF8523_GetClockIntegrityBit(void);
void    PCF8523_SoftReset(void);

#endif /* PCF8523_H_INCLUDED */
