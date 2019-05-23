#include "defs.h"
#include "one_wire.h"


/*  */
uint8_t OW_PortInit(void){

    LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

    GPIO_InitStruct.Pin = DS_GPIO_PIN;
    GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
    GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_MEDIUM;
    GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_OPENDRAIN;
    GPIO_InitStruct.Pull = LL_GPIO_PULL_UP;
    LL_GPIO_Init(DS_GPIO_PORT, &GPIO_InitStruct);

    return 0;
}


/*  */
uint8_t OW_ReadBit(void) {

    uint8_t bit = 0;

    DS_PIN_LOW();
    Delay_us(3);
    DS_PIN_HIGH();

    Delay_us(15);

    bit = (DS_PIN_CHECK() ? 1 : 0);

    Delay_us(50);

    return bit;
}


/*  */
uint8_t OW_ReadByte(void) {

    uint8_t data = 0;

    for (uint8_t i = 0; i <= 7; i++)

        data += OW_ReadBit() << i;

    return data;
}


/*  */
void OW_WriteBit(uint8_t bit) {

    DS_PIN_LOW();
    Delay_us(bit ? 3 : 65);
    DS_PIN_HIGH();

    Delay_us(bit ? 65 : 3);
}


/*  */
void OW_WriteByte(uint8_t dt) {

    for (uint8_t i = 0; i < 8; i++) {

        OW_WriteBit(dt >> i & 1);
        Delay_us(5);
    }
}


/*  */
uint8_t OW_Reset(void) {

    uint8_t state = 0;

    DS_PIN_LOW();
    Delay_us(480);
    DS_PIN_HIGH();

    Delay_us(65);

    state = (DS_PIN_CHECK() ? 1 : 0);

    Delay_us(420);

    return state;
}
