#include "defs.h"
#include "pcf8523.h"


#define PCF8523_IIC_ADDRESS         0x68


#define PCF8523_CONTROL_1           0x00
#define PCF8523_CONTROL_2           0x01
#define PCF8523_CONTROL_3           0x02
#define PCF8523_SECONDS_REG         0x03
#define PCF8523_MINUTES_REG         0x04
#define PCF8523_HOURS_REG           0x05
#define PCF8523_DATE_REG            0x06
#define PCF8523_WEEKDAY_REG         0x07
#define PCF8523_MONTH_REG           0x08
#define PCF8523_YEAR_REG            0x09


/* CONTROL1 BITS */
#define PCF8523_CAP_SEL             (1 << 7)
#define PCF8523_STOP                (1 << 5)
#define PCF8523_SR                  (1 << 4)
#define PCF8523_12_24               (1 << 3)
#define PCF8523_SIE                 (1 << 2)
#define PCF8523_AIE                 (1 << 1)
#define PCF8523_CIE                 0x01

/* CONTROL2 BITS */
#define PCF8523_WTAF                (1 << 7)
#define PCF8523_CTAF                (1 << 6)
#define PCF8523_CTBF                (1 << 5)
#define PCF8523_SF                  (1 << 4)
#define PCF8523_AF                  (1 << 3)
#define PCF8523_WTAIE               (1 << 2)
#define PCF8523_CTAIE               (1 << 1)
#define PCF8523_CTBIE               0x01

/* CONTROL3 BITS */
#define PCF8523_PM                  (1 << 6)
#define PCF8523_BSF                 (1 << 3)
#define PCF8523_BLF                 (1 << 2)
#define PCF8523_BSIE                (1 << 1)
#define PCF8523_BLIE                0x01

/* SECONDS REGISTER */
#define PCF8523_OS_BIT              (1 << 7)


DateTime_TypeDef DateTime;


static uint8_t PCF8523_Flag = I2C_ADDR_NACK;
static uint8_t PCF8523_Registers[20];


/*  */
void PCF8523_Init(void){

    if( IIC_Check(PCF8523_IIC_ADDRESS) != I2C_OK ) {
        // PCF8523 init error
        PCF8523_Flag = I2C_ADDR_NACK;

        return;
    }

    /* laukiam, kol uzsikurs RTC */
    do{

        PCF8523_Registers[PCF8523_SECONDS_REG] = IIC_ReadByte(PCF8523_IIC_ADDRESS, PCF8523_SECONDS_REG);

        LL_mDelay(5);

    }while( PCF8523_GetClockIntegrityBit() != RESET );


    PCF8523_GetDateTime();
}


/* Gaunam is buferio laiko ir datos reiksmes */
void PCF8523_GetDateTime(void){

    IIC_Read(PCF8523_IIC_ADDRESS, 0, PCF8523_Registers, sizeof(PCF8523_Registers));

    DateTime.Seconds = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_SECONDS_REG]&0x7F);
    DateTime.Minutes = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_MINUTES_REG]&0x7F);
    DateTime.Hours = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_HOURS_REG]&0x3F);
    DateTime.WeekDay = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_WEEKDAY_REG]&0x07);
    DateTime.Date = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_DATE_REG]&0x3F);
    DateTime.Month = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_MONTH_REG]&0x1F);
    DateTime.Year = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers[PCF8523_YEAR_REG]);
}


/*  */
void PCF8523_SetDateTime(void){

    PCF8523_Registers[PCF8523_SECONDS_REG]  |= ( __LL_RTC_CONVERT_BIN2BCD(DateTime.Seconds)&0x7F );
    PCF8523_Registers[PCF8523_MINUTES_REG]  |= ( __LL_RTC_CONVERT_BIN2BCD(DateTime.Minutes)&0x7F );
    PCF8523_Registers[PCF8523_HOURS_REG]    |= ( __LL_RTC_CONVERT_BIN2BCD(DateTime.Hours)&0x3F );
    PCF8523_Registers[PCF8523_WEEKDAY_REG]  |= ( __LL_RTC_CONVERT_BIN2BCD(DateTime.WeekDay)&0x07 );
    PCF8523_Registers[PCF8523_DATE_REG]     |= ( __LL_RTC_CONVERT_BIN2BCD(DateTime.Date)&0x3F );
    PCF8523_Registers[PCF8523_MONTH_REG]    |= ( __LL_RTC_CONVERT_BIN2BCD(DateTime.Month)&0x1F );
    PCF8523_Registers[PCF8523_YEAR_REG]     = __LL_RTC_CONVERT_BIN2BCD(DateTime.Year);

    SET_BIT(PCF8523_Registers[PCF8523_CONTROL_1], PCF8523_STOP);
    PCF8523_WriteRegister(PCF8523_CONTROL_1, PCF8523_Registers[PCF8523_CONTROL_1]);

    IIC_Write(PCF8523_IIC_ADDRESS, 0, PCF8523_Registers, sizeof(PCF8523_Registers));

    CLEAR_BIT(PCF8523_Registers[PCF8523_CONTROL_1], PCF8523_STOP);
    PCF8523_WriteRegister(PCF8523_CONTROL_1, PCF8523_Registers[PCF8523_CONTROL_1]);
}


/*  grazina 0, jai PCF8253 aktyvus ir 1, kai neaktyvus (jo nera) */
uint8_t PCF8523_GetState(void){

    return PCF8523_Flag;
}


/*  */
uint8_t PCF8523_GetBateryStatus(void){

    return READ_BIT( PCF8523_Registers[PCF8523_CONTROL_3], PCF8523_BLF );
}


/*  */
uint8_t PCF8523_GetClockIntegrityBit(void){

    return READ_BIT( PCF8523_Registers[PCF8523_SECONDS_REG], PCF8523_OS_BIT );
}

/*  */
uint8_t PCF8523_ReadRegister(uint8_t reg){

    return IIC_ReadByte(PCF8523_IIC_ADDRESS, reg);
}

/*  */
void PCF8523_WriteRegister(uint8_t reg, uint8_t data){

    IIC_WriteByte(PCF8523_IIC_ADDRESS, reg, data);
}


/*  */
void PCF8523_SoftReset(void){

    SET_BIT(PCF8523_Registers[PCF8523_CONTROL_1], PCF8523_SR);
    IIC_WriteByte(PCF8523_IIC_ADDRESS, PCF8523_CONTROL_1, PCF8523_Registers[PCF8523_CONTROL_1]);

    LL_mDelay(5);

    /* laukiam, kol uzsikurs RTC */
    do{

        PCF8523_Registers[PCF8523_SECONDS_REG] = IIC_ReadByte(PCF8523_IIC_ADDRESS, PCF8523_SECONDS_REG);

        LL_mDelay(5);

    }while( PCF8523_GetClockIntegrityBit() != RESET );
}


