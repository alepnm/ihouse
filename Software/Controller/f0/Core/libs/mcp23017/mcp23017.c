#include "mcp23017.h"


const MCP_Output_TypeDef OC1 = {MCP_OLATB, LL_GPIO_PIN_4};
const MCP_Output_TypeDef OC2 = {MCP_OLATB, LL_GPIO_PIN_5};
const MCP_Output_TypeDef OC3 = {MCP_OLATB, LL_GPIO_PIN_6};
const MCP_Output_TypeDef OC4 = {MCP_OLATB, LL_GPIO_PIN_7};
const MCP_Output_TypeDef OC5 = {MCP_OLATB, LL_GPIO_PIN_0};
const MCP_Output_TypeDef OC6 = {MCP_OLATB, LL_GPIO_PIN_1};
const MCP_Output_TypeDef OC7 = {MCP_OLATB, LL_GPIO_PIN_2};
const MCP_Output_TypeDef OC8 = {MCP_OLATB, LL_GPIO_PIN_3};
const MCP_Output_TypeDef OC9 = {MCP_OLATA, LL_GPIO_PIN_1};
const MCP_Output_TypeDef ACON = {MCP_OLATA, LL_GPIO_PIN_0};
const MCP_Output_TypeDef MA = {MCP_OLATA, LL_GPIO_PIN_2};
const MCP_Output_TypeDef MB = {MCP_OLATA, LL_GPIO_PIN_3};
const MCP_Output_TypeDef M1ENA = {MCP_OLATA, LL_GPIO_PIN_4};
const MCP_Output_TypeDef M2ENA = {MCP_OLATA, LL_GPIO_PIN_5};
const MCP_Output_TypeDef M3ENA = {MCP_OLATA, LL_GPIO_PIN_6};
const MCP_Output_TypeDef M4ENA = {MCP_OLATA, LL_GPIO_PIN_7};


uint8_t MCP23017_Flag = I2C_OK;
uint8_t MCP23017_Registers[22];


uint8_t MCP23017_Init(void){

    if( IIC_Check(MCP23017_IIC_ADDRESS) != I2C_OK ) {
        // MCP23017 init error
        MCP23017_Flag = I2C_ADDR_NACK;

        return 1;
    }


    /* nuskaitom visus registrus i buferi; konfiguruojam MCP23017 */
    IIC_Read(MCP23017_IIC_ADDRESS, 0, MCP23017_Registers, sizeof(MCP23017_Registers));

    MCP23017_Registers[MCP_IOCONA] = 0x00;
    MCP23017_Registers[MCP_IODIRA] = ALL_OUTPUTS;   /* nustatom porto A krypti */
    MCP23017_Registers[MCP_IODIRB] = ALL_OUTPUTS;   /* nustatom porto B krypti */
    MCP23017_Registers[MCP_GPIOA] = 0x00;
    MCP23017_Registers[MCP_GPIOB] = 0x00;
    MCP23017_Registers[MCP_OLATA] = 0x00;
    MCP23017_Registers[MCP_OLATB] = 0x00;

    IIC_Write(MCP23017_IIC_ADDRESS, 0, MCP23017_Registers, sizeof(MCP23017_Registers));


//    MCP23017_SetPin(&OC9);
//    MCP23017_SetPin(&OC1);
//    MCP23017_SetPin(&OC2);
//    MCP23017_SetPin(&OC3);
//    MCP23017_SetPin(&OC4);
//    MCP23017_SetPin(&OC5);

    return 0;
}


/*  */
void MCP23017_SetPin(const MCP_Output_TypeDef* output){

    SET_BIT(MCP23017_Registers[output->port], output->pin);
    IIC_WriteByte(MCP23017_IIC_ADDRESS, output->port, MCP23017_Registers[output->port]);
}


/*  */
void MCP23017_ClearPin(const MCP_Output_TypeDef* output){

    CLEAR_BIT(MCP23017_Registers[output->port], output->pin);
    IIC_WriteByte(MCP23017_IIC_ADDRESS, output->port, MCP23017_Registers[output->port]);
}


/*  */
void MCP23017_SetAllPins(uint8_t port){

    MCP23017_Registers[port] = 0xFF;
    IIC_WriteByte(MCP23017_IIC_ADDRESS, port, MCP23017_Registers[port]);
}


/*  */
void MCP23017_ClearAllPins(uint8_t port){

    MCP23017_Registers[port] = 0x00;
    IIC_WriteByte(MCP23017_IIC_ADDRESS, port, MCP23017_Registers[port]);
}
