#ifndef IIC_H_INCLUDED
#define IIC_H_INCLUDED

#include "defs.h"

enum { I2C_OK = 0, I2C_ADDR_NACK };

#define     IIC_DELAY_MS            5

uint8_t     IIC_Check(I2C_TypeDef *I2Cx, uint8_t iic_addr);
uint8_t     IIC_Write(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg, uint8_t *buf, uint8_t len);
uint8_t     IIC_Read(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg, uint8_t *buf, uint8_t len);
uint8_t     IIC_ReadByte(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg);
void        IIC_WriteByte(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg, uint8_t data);

#endif /* IIC_H_INCLUDED */
