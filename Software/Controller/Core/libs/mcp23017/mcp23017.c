#include "mcp23017.h"
#include "iic.h"


//#define PIN_0   (1<<0)
//#define PIN_1   (1<<1)
//#define PIN_2   (1<<2)
//#define PIN_3   (1<<3)
//#define PIN_4   (1<<4)
//#define PIN_5   (1<<5)
//#define PIN_6   (1<<6)
//#define PIN_7   (1<<7)


//MCP_Output_TypeDef OC1 = {MCP_GPIOB, PIN_4};
//MCP_Output_TypeDef OC2 = {MCP_GPIOB, PIN_5};
//MCP_Output_TypeDef OC3 = {MCP_GPIOB, PIN_6};
//MCP_Output_TypeDef OC4 = {MCP_GPIOB, PIN_7};
//MCP_Output_TypeDef OC5 = {MCP_GPIOB, PIN_0};
//MCP_Output_TypeDef OC6 = {MCP_GPIOB, PIN_1};
//MCP_Output_TypeDef OC7 = {MCP_GPIOB, PIN_2};
//MCP_Output_TypeDef OC8 = {MCP_GPIOB, PIN_3};
//MCP_Output_TypeDef OC9 = {MCP_GPIOA, PIN_1};
//MCP_Output_TypeDef ACON = {MCP_GPIOA, PIN_0};
//MCP_Output_TypeDef MA = {MCP_GPIOA, PIN_2};
//MCP_Output_TypeDef MB = {MCP_GPIOA, PIN_3};
//MCP_Output_TypeDef M1ENA = {MCP_GPIOA, PIN_4};
//MCP_Output_TypeDef M2ENA = {MCP_GPIOA, PIN_5};
//MCP_Output_TypeDef M3ENA = {MCP_GPIOA, PIN_6};
//MCP_Output_TypeDef M4ENA = {MCP_GPIOA, PIN_7};


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


    MCP23017_SetPin(&OC9);
    MCP23017_SetPin(&OC1);
    MCP23017_SetPin(&OC2);
    MCP23017_SetPin(&OC3);
    MCP23017_SetPin(&OC4);
    MCP23017_SetPin(&OC5);

    return 0;
}


/*  */
void MCP23017_SetPin(MCP_Output_TypeDef* output){

    SET_BIT(MCP23017_Registers[output->port], output->pin);
    IIC_WriteByte(MCP23017_IIC_ADDRESS, output->port, MCP23017_Registers[output->port]);
}

/*  */
void MCP23017_ClearPin(MCP_Output_TypeDef* output){

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
