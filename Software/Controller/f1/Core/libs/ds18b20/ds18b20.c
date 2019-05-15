#include "defs.h"
#include "one_wire.h"
#include "ds18b20.h"

/*  */
#define DS_GPIO_PORT            GPIOB
#define DS_GPIO_PIN             LL_GPIO_PIN_12

#define DS_PIN_LOW()            LL_GPIO_ResetOutputPin(DS_GPIO_PORT, DS_GPIO_PIN)
#define DS_PIN_HIGH()           LL_GPIO_SetOutputPin(DS_GPIO_PORT, DS_GPIO_PIN)
#define DS_PIN_CHECK()          LL_GPIO_IsInputPinSet(DS_GPIO_PORT, DS_GPIO_PIN)

#define DS_CMD_READ_ROM         0x33
#define DS_CMD_MATCH_ROM        0x55
#define DS_CMD_SKIP_ROM         0xCC
#define DS_CMD_SEARCH_ROM       0xF0
#define DS_CMD_ALARM_SEARCH     0xEC
#define DS_CMD_CONVERT_T        0x44
#define DS_CMD_READ_STRATCHPAD  0xBE
#define DS_CMD_WRITE_STRATCHPAD 0x4E
#define DS_CMD_COPY_STRATCHPAD  0x48
#define DS_CMD_RECALL_E2        0xB8
#define DS_CMD_DEAD_PS          0xB4


#define DS_QUANTITY     3

float DsTemperature = 0;
char strDsTemperature[6] = {0};


static uint8_t dt[DS_QUANTITY][8];

/* funkcijos */
static uint8_t  DS18B20_Reset(void);
static uint8_t  DS18B20_ReadBit(void);
static uint8_t  DS18B20_ReadByte(void);
static void     DS18B20_WriteBit(uint8_t bit);
static void     DS18B20_WriteByte(uint8_t dt);


/*  */
uint8_t DS18B20_Init(uint8_t mode) {

    LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

    GPIO_InitStruct.Pin = DS_GPIO_PIN;
    GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
    GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_MEDIUM;
    GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_OPENDRAIN;
    GPIO_InitStruct.Pull = LL_GPIO_PULL_UP;
    LL_GPIO_Init(DS_GPIO_PORT, &GPIO_InitStruct);

    if(DS18B20_Reset()) return 1;

    if( mode==DS_MODE_SKIP_ROM ) {

        DS18B20_WriteByte(DS_CMD_SKIP_ROM);
    }

    DS18B20_WriteByte(DS_CMD_WRITE_STRATCHPAD);

    DS18B20_WriteByte(0x64);    // TH register = 100C
    DS18B20_WriteByte(0x9E);    // TL register = -30C
    //DS18B20_WriteByte(RESOLUTION_9BIT);

    return 0;
}


/* vykdom kas 100 ms is main
rezultatas: float reiksme ir string
 */
uint8_t DS18B20_Process(void) {

    static uint8_t conv_step = 0;

    switch(conv_step) {

    case 0:
        DS18B20_MeasureTemperCmd(DS_MODE_SKIP_ROM, 0);  // paleidziam matavimus
        conv_step++;
        break;
    case 8:
        conv_step = 0;

        DS18B20_ReadStratchpad(DS_MODE_SKIP_ROM, 0);    // skaitom rezultata

        DsTemperature = DS18B20_Convert(0);
        sprintf(strDsTemperature, "%.1f", DsTemperature);
        break;
    default:
        conv_step++;
        break;
    }

    return 0;
}


/*  */
static uint8_t DS18B20_Reset(void) {

    uint8_t state = 0;

    DS_PIN_LOW();
    Delay_us(480);
    DS_PIN_HIGH();

    Delay_us(65);

    state = (DS_PIN_CHECK() ? 1 : 0);

    Delay_us(420);

    return state;
}



/*  */
static uint8_t DS18B20_ReadBit(void) {

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
static uint8_t DS18B20_ReadByte(void) {

    uint8_t data = 0;

    for (uint8_t i = 0; i <= 7; i++)

        data += DS18B20_ReadBit() << i;

    return data;
}



/*  */
static void DS18B20_WriteBit(uint8_t bit) {

    DS_PIN_LOW();
    Delay_us(bit ? 3 : 65);
    DS_PIN_HIGH();

    Delay_us(bit ? 65 : 3);
}


/*  */
static void DS18B20_WriteByte(uint8_t dt) {

    for (uint8_t i = 0; i < 8; i++) {

        DS18B20_WriteBit(dt >> i & 1);
        Delay_us(5);
    }
}


/*  */
void DS18B20_MeasureTemperCmd(uint8_t dev, uint8_t mode) {

    DS18B20_Reset();

    if(mode==DS_MODE_SKIP_ROM) {
        DS18B20_WriteByte(DS_CMD_SKIP_ROM);
    }

    DS18B20_WriteByte(DS_CMD_CONVERT_T);
}



/*  */
void DS18B20_ReadStratchpad(uint8_t dev, uint8_t mode) {

    uint8_t i;

    DS18B20_Reset();

    if(mode==DS_MODE_SKIP_ROM) {

        DS18B20_WriteByte(DS_CMD_SKIP_ROM);
    }

    DS18B20_WriteByte(DS_CMD_READ_STRATCHPAD);

    for(i=0; i<8; i++) {

        dt[dev][i] = DS18B20_ReadByte();
    }
}


/*  */
uint8_t DS18B20_GetSign(uint8_t dev) {
    return (dt[dev][1] & 0x01) ? 1 : 0;
}


/*  */
float DS18B20_Convert(uint8_t dev) {

    float t = (dt[dev][1] & 0x07)<<4 | dt[dev][0]>>4;

    if(dt[dev][0] & 0x0F) t += 0.5;

    return t;
}
