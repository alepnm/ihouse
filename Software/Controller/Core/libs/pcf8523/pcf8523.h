#ifndef PCF8523_H_INCLUDED
#define PCF8523_H_INCLUDED

#include "iic.h"

#define     PCF8523_IIC_ADDRESS    0xD0    // be R/W bito islygintas i desine



typedef struct{
    uint8_t Seconds;
    uint8_t Minutes;
    uint8_t Hours;
    uint8_t WeekDay;
    uint8_t Date;
    uint8_t Month;
    uint8_t Year;
}PCF8523_TypeDef;

extern PCF8523_TypeDef PCF8523_DateTime;

void    PCF8523_Init(void);
void    PCF8523_ReadRegisters(void);
void    PCF8523_WriteRegisters(void);
void    PCF8523_GetDateTime(void);
uint8_t PCF8523_ReadRegister(uint8_t reg);
void    PCF8523_WriteRegister(uint8_t reg, uint8_t data);

uint8_t PCF8523_GetBateryStatus(void);

#endif /* PCF8523_H_INCLUDED */
