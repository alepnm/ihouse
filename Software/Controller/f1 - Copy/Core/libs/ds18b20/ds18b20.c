#include "defs.h"
#include "one_wire.h"
#include "ds18b20.h"

/*  */
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

float Temperature = 0;
char TemperatureString[5] = {0};


static uint8_t dt[DS_QUANTITY][8];



/*  */
uint8_t DS18B20_Init(uint8_t mode) {

    OW_PortInit();

    if(OW_Reset()) return 1;    // klaida, jai daviklis neatsako

    if( mode==DS_MODE_SKIP_ROM ) {

        OW_WriteByte(DS_CMD_SKIP_ROM);
    }

    OW_WriteByte(DS_CMD_WRITE_STRATCHPAD);

    OW_WriteByte(0x64);    // TH register = 100C
    OW_WriteByte(0x9E);    // TL register = -30C
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

        Temperature = DS18B20_Convert(0);
        sprintf(TemperatureString, "%f", Temperature);
        break;
    default:
        conv_step++;
        break;
    }

    return 0;
}


/*  */
void DS18B20_MeasureTemperCmd(uint8_t dev, uint8_t mode) {

    OW_Reset();

    if( mode==DS_MODE_SKIP_ROM ) {
        OW_WriteByte(DS_CMD_SKIP_ROM);
    }

    OW_WriteByte(DS_CMD_CONVERT_T);
}



/*  */
void DS18B20_ReadStratchpad(uint8_t dev, uint8_t mode) {

    uint8_t i;

    OW_Reset();

    if( mode==DS_MODE_SKIP_ROM ) {

        OW_WriteByte(DS_CMD_SKIP_ROM);
    }

    OW_WriteByte(DS_CMD_READ_STRATCHPAD);

    for(i=0; i<8; i++) {

        dt[dev][i] = OW_ReadByte();
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
