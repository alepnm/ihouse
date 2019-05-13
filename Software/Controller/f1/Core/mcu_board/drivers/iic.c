#include "iic.h"

#define     I2C_WRITE 0
#define     I2C_READ  1

static uint8_t IIC_MsgHeader(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg);


/*  */
uint8_t IIC_Check(I2C_TypeDef *I2Cx, uint8_t iic_addr) {

    return I2C_OK;
}


/*  */
uint8_t IIC_ReadByte(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg) {

    uint8_t data;

    IIC_Read( I2Cx, iic_addr, reg, &data, 1 );

    return data;
}


/*  */
void IIC_WriteByte(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg, uint8_t data) {

    IIC_Write( I2Cx, iic_addr, reg, &data, 1 );
}


/*  */
uint8_t IIC_Read( I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg, uint8_t *data, uint8_t len ) {

    IIC_MsgHeader(I2Cx, iic_addr, reg);

    LL_I2C_GenerateStartCondition(I2Cx);
    while(!LL_I2C_IsActiveFlag_SB(I2Cx));

    LL_I2C_TransmitData8(I2Cx, (iic_addr | I2C_READ) );
    while(!LL_I2C_IsActiveFlag_ADDR(I2Cx));

    LL_I2C_ClearFlag_ADDR(I2Cx);
    //while(!LL_I2C_IsActiveFlag_TXE(I2Cx));

    while (len--) {
        if (!len) {
            LL_I2C_AcknowledgeNextData(I2Cx, LL_I2C_NACK);
            while (!LL_I2C_IsActiveFlag_RXNE(I2Cx));
            *data = LL_I2C_ReceiveData8(I2Cx);
            LL_I2C_GenerateStopCondition(I2Cx);
        } else {
            LL_I2C_AcknowledgeNextData(I2Cx, LL_I2C_ACK);
            while (!LL_I2C_IsActiveFlag_RXNE(I2Cx));
            *data++ = LL_I2C_ReceiveData8(I2Cx);
        }
    }

    return 0;
}


/* */
uint8_t IIC_Write( I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg, uint8_t *data, uint8_t len ) {

    IIC_MsgHeader(I2Cx, iic_addr, reg);

    while (len--) {

        LL_I2C_AcknowledgeNextData(I2Cx, LL_I2C_ACK);

        if (!len) {
            LL_I2C_TransmitData8(I2Cx, *data);
            while (!LL_I2C_IsActiveFlag_TXE(I2Cx));
            LL_I2C_GenerateStopCondition(I2Cx);
        } else {
            LL_I2C_TransmitData8(I2Cx, *data++);
            while (!LL_I2C_IsActiveFlag_TXE(I2Cx));
        }

        LL_mDelay(IIC_DELAY_MS);
    }

    return 0;
}


/*  */
static uint8_t IIC_MsgHeader(I2C_TypeDef *I2Cx, uint8_t iic_addr, uint16_t reg) {

    while(LL_I2C_IsActiveFlag_BUSY(I2Cx));

    LL_I2C_GenerateStartCondition(I2Cx);
    while(!LL_I2C_IsActiveFlag_SB(I2Cx));

    LL_I2C_TransmitData8(I2Cx, iic_addr );
    while(!LL_I2C_IsActiveFlag_ADDR(I2Cx));

    LL_I2C_ClearFlag_ADDR(I2Cx);
    while(!LL_I2C_IsActiveFlag_TXE(I2Cx));

    //LL_I2C_TransmitData8(I2Cx, reg>>8);         //MSB
    //while(!LL_I2C_IsActiveFlag_TXE(I2Cx));

    LL_I2C_TransmitData8(I2Cx, (uint8_t)reg);   //LSB
    while(!LL_I2C_IsActiveFlag_TXE(I2Cx));

    //while(!LL_I2C_IsActiveFlag_BTF(I2Cx));

    return 0;
}
