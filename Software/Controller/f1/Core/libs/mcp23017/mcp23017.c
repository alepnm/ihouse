#include "mcp23017.h"


#define MCP23017_IIC_ADDRESS    0x40
#define MCP23017_REGS_QUANT     22

#define MCP_IODIRA              0x00
#define MCP_IODIRB              0x01
#define MCP_IPOLA               0x02
#define MCP_IPOLB               0x03
#define MCP_GPINTENA            0x04
#define MCP_GPINTENB            0x05
#define MCP_DEFVALA             0x06
#define MCP_DEFVALB             0x07
#define MCP_INTCONA             0x08
#define MCP_INTCONB             0x09
#define MCP_IOCONA              0x0A
#define MCP_IOCONB              0x0B
#define MCP_GPPUA               0x0C
#define MCP_GPPUB               0x0D
#define MCP_INTFA               0x0E
#define MCP_INTFB               0x0F
#define MCP_INTCAPA             0x10
#define MCP_INTCAPB             0x11
#define MCP_GPIOA               0x12
#define MCP_GPIOB               0x13
#define MCP_OLATA               0x14
#define MCP_OLATB               0x15

#define MCP_PIN_0               (1<<0)
#define MCP_PIN_1               (1<<1)
#define MCP_PIN_2               (1<<2)
#define MCP_PIN_3               (1<<3)
#define MCP_PIN_4               (1<<4)
#define MCP_PIN_5               (1<<5)
#define MCP_PIN_6               (1<<6)
#define MCP_PIN_7               (1<<7)


#define ALL_INPUTS              0xFF
#define ALL_OUTPUTS             0x00


#define MCP_RST_PIN_HIGH()      LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_12)


const MCP_Output_TypeDef REL14 = {MCP_OLATB, MCP_PIN_0};
const MCP_Output_TypeDef REL13 = {MCP_OLATB, MCP_PIN_1};
const MCP_Output_TypeDef REL12 = {MCP_OLATB, MCP_PIN_2};
const MCP_Output_TypeDef REL11 = {MCP_OLATB, MCP_PIN_3};
const MCP_Output_TypeDef REL10 = {MCP_OLATB, MCP_PIN_4};
const MCP_Output_TypeDef REL9 = {MCP_OLATB, MCP_PIN_5};
const MCP_Output_TypeDef REL8 = {MCP_OLATB, MCP_PIN_6};
const MCP_Output_TypeDef MOTB = {MCP_OLATB, MCP_PIN_7};
const MCP_Output_TypeDef REL1 = {MCP_OLATA, MCP_PIN_0};
const MCP_Output_TypeDef REL2 = {MCP_OLATA, MCP_PIN_1};
const MCP_Output_TypeDef REL3 = {MCP_OLATA, MCP_PIN_2};
const MCP_Output_TypeDef REL4 = {MCP_OLATA, MCP_PIN_3};
const MCP_Output_TypeDef REL5 = {MCP_OLATA, MCP_PIN_4};
const MCP_Output_TypeDef REL6 = {MCP_OLATA, MCP_PIN_5};
const MCP_Output_TypeDef REL7 = {MCP_OLATA, MCP_PIN_6};
const MCP_Output_TypeDef MOTA = {MCP_OLATA, MCP_PIN_7};


uint8_t MCP23017_Flag = I2C_OK;

static I2C_TypeDef *I2Cx = I2C1;
static uint8_t MCP23017_Registers[MCP23017_REGS_QUANT];

/* private functions */
static inline uint8_t MCP23017_ReadRegister(uint8_t reg);



uint8_t MCP23017_Init(void){

    MCP_RST_PIN_HIGH();

    /* reikia prachekinti device'a */
    MCP23017_Flag = IIC_Check(I2Cx, MCP23017_IIC_ADDRESS);

    if(MCP23017_Flag != I2C_OK) return 1;

    /* nuskaitom visus registrus i buferi; konfiguruojam MCP23017 */
    IIC_Read(I2Cx, MCP23017_IIC_ADDRESS, 0, MCP23017_Registers, MCP23017_REGS_QUANT);

    MCP23017_Registers[MCP_IOCONA] = 0x00;
    MCP23017_Registers[MCP_IODIRA] = ALL_OUTPUTS;   /* nustatom porto A krypti */
    MCP23017_Registers[MCP_IODIRB] = ALL_OUTPUTS;   /* nustatom porto B krypti */
    MCP23017_Registers[MCP_GPIOA] = 0x00;
    MCP23017_Registers[MCP_GPIOB] = 0x00;
    MCP23017_Registers[MCP_OLATA] = 0x00;
    MCP23017_Registers[MCP_OLATB] = 0x00;

    IIC_Write(I2Cx, MCP23017_IIC_ADDRESS, 0, MCP23017_Registers, MCP23017_REGS_QUANT);

    return 0;
}


/*  */
void MCP23017_SetPin(const MCP_Output_TypeDef* output){
    SET_BIT(MCP23017_Registers[output->port], output->pin);
    IIC_WriteByte(I2Cx, MCP23017_IIC_ADDRESS, output->port, MCP23017_Registers[output->port]);
}


/*  */
void MCP23017_ClearPin(const MCP_Output_TypeDef* output){
    CLEAR_BIT(MCP23017_Registers[output->port], output->pin);
    IIC_WriteByte(I2Cx, MCP23017_IIC_ADDRESS, output->port, MCP23017_Registers[output->port]);
}


/*  */
void MCP23017_TogglePin(const MCP_Output_TypeDef* output){
    MCP23017_Registers[output->port] ^= output->pin;
    IIC_WriteByte(I2Cx, MCP23017_IIC_ADDRESS, output->port, MCP23017_Registers[output->port]);
}


/*  */
void MCP23017_SetAllPins(uint8_t port){

    MCP23017_Registers[port] = 0xFF;
    IIC_WriteByte(I2Cx, MCP23017_IIC_ADDRESS, port, MCP23017_Registers[port]);
}


/*  */
void MCP23017_ClearAllPins(uint8_t port){

    MCP23017_Registers[port] = 0x00;
    IIC_WriteByte(I2Cx, MCP23017_IIC_ADDRESS, port, MCP23017_Registers[port]);
}

/*  */
uint8_t MCP23017_ReadPortA(void){
    return MCP23017_ReadRegister(MCP_GPIOA);
}

/*  */
uint8_t MCP23017_ReadPortB(void){
    return MCP23017_ReadRegister(MCP_GPIOB);
}

/*  */
static inline uint8_t MCP23017_ReadRegister(uint8_t reg){

    uint8_t data = 0;

    IIC_ReadByte(I2Cx, MCP23017_IIC_ADDRESS, reg);

    return data;
}
