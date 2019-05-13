#include "defs.h"
#include "ds1307.h"



#define DS1307_SECONDS_REG      0x00
#define DS1307_MINUTES_REG      0x01
#define DS1307_HOURS_REG        0x02
#define DS1307_WEEKDAY_REG      0x03
#define DS1307_DATE_REG         0x04
#define DS1307_MONTH_REG        0x05
#define DS1307_YEAR_REG         0x06
#define DS1307_CONTROL_REG      0x07
#define DS1307_INITBYTE_REG     0x08

/* Backup registers: 0x08-0x3F */
#define DS1307_BACKUP_REGS_ADDR 0x08
#define DS1307_BACKUP_REGS_END  0x3F

#define DS1307_CLOCK_HALT_BIT   (1 << 7)
#define DS1307_AM_PM_BIT        (1 << 6)
#define DS1307_OUT_BIT          (1 << 7)
#define DS1307_SQWE_BIT         (1 << 4)
#define DS1307_RS1_BIT          (1 << 1)
#define DS1307_RS0_BIT          (1 << 0)

uint8_t DS1307_Flag = I2C_ADDR_NACK;

DateTime_TypeDef DateTime;
uint8_t DateTimeChangeRequiredFlag = 0;

static uint8_t DS1307_Registers[0x40] = {0};


/*  */
void DS1307_Init(void){

//    if( IIC_Check(&I2C1, DS1307_BASE_ADDRESS) != I2C_OK ) {
//        // DS1307 init error
//        DS1307_Flag = I2C_ADDR_NACK;
//
//        return;
//    }


    DateTime.Seconds = 0;
    DateTime.Minutes = 0;
    DateTime.Hours = 0;
    DateTime.Date = 1;
    DateTime.Month = 1;
    DateTime.Year = 19;
    DateTime.WeekDay = 2;

    IIC_Read(I2C1, DS1307_BASE_ADDRESS, 0, DS1307_Registers, 0x40);
    //IIC_Write(I2C1, DS1307_BASE_ADDRESS, 0, DS1307_Registers, 0x40);

    if(DateTimeChangeRequiredFlag){
        IIC_WriteByte(I2C1, DS1307_BASE_ADDRESS, DS1307_INITBYTE_REG, 0x00);
        DateTimeChangeRequiredFlag = 0;
    }

    CLEAR_BIT(DS1307_Registers[DS1307_SECONDS_REG], DS1307_CLOCK_HALT_BIT);
    IIC_WriteByte(I2C1, DS1307_BASE_ADDRESS, DS1307_SECONDS_REG, DS1307_Registers[DS1307_SECONDS_REG]);

    Delay_ms(10);

    if( IIC_ReadByte(I2C1, DS1307_BASE_ADDRESS, DS1307_INITBYTE_REG) != 0x55 ){

        DS1307_SetDateTime(&DateTime);

        SET_BIT(DS1307_Registers[DS1307_SECONDS_REG], DS1307_CLOCK_HALT_BIT);
        IIC_WriteByte(I2C1, DS1307_BASE_ADDRESS, DS1307_SECONDS_REG, DS1307_Registers[DS1307_SECONDS_REG]);

        DS1307_Registers[DS1307_CONTROL_REG] = 0x00;
        DS1307_Registers[DS1307_INITBYTE_REG] = 0x55;

        IIC_Write(I2C1, DS1307_BASE_ADDRESS, 0, DS1307_Registers, 0x40);

        CLEAR_BIT(DS1307_Registers[DS1307_SECONDS_REG], DS1307_CLOCK_HALT_BIT);
        IIC_WriteByte(I2C1, DS1307_BASE_ADDRESS, DS1307_SECONDS_REG, DS1307_Registers[DS1307_SECONDS_REG]);
    }


    IIC_Read(I2C1, DS1307_BASE_ADDRESS, 0, DS1307_Registers, 0x40);

    DS1307_GetDateTime(&DateTime);
}


/*  */
void DS1307_Process(void){

    IIC_Read( I2C1, DS1307_BASE_ADDRESS, 0, DS1307_Registers, 0x40 );

    DS1307_GetDateTime(&DateTime);
}





/* Gaunam is buferio laiko ir datos reiksmes */
void DS1307_GetDateTime(DateTime_TypeDef* dest){

    dest->Seconds = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_SECONDS_REG]&0x7F);
    dest->Minutes = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_MINUTES_REG]&0x7F);
    dest->Hours = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_HOURS_REG]&0x3F);
    dest->WeekDay = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_WEEKDAY_REG]&0x07);
    dest->Date = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_DATE_REG]&0x3F);
    dest->Month = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_MONTH_REG]&0x1F);
    dest->Year = __LL_RTC_CONVERT_BCD2BIN(DS1307_Registers[DS1307_YEAR_REG]);
}

/*  */
void DS1307_SetDateTime(DateTime_TypeDef* dest){

    DS1307_Registers[DS1307_SECONDS_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->Seconds);
    DS1307_Registers[DS1307_MINUTES_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->Minutes);
    DS1307_Registers[DS1307_HOURS_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->Hours);
    DS1307_Registers[DS1307_WEEKDAY_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->WeekDay);
    DS1307_Registers[DS1307_DATE_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->Date);
    DS1307_Registers[DS1307_MONTH_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->Month);
    DS1307_Registers[DS1307_YEAR_REG] = __LL_RTC_CONVERT_BIN2BCD(dest->Year);
}

/*  */
uint8_t DS1307_ReadRegister(uint8_t reg){

    return IIC_ReadByte(I2C1, DS1307_BASE_ADDRESS, reg);
}

/*  */
void DS1307_WriteRegister(uint8_t reg, uint8_t data){

    IIC_WriteByte(I2C1, DS1307_BASE_ADDRESS, reg, data);
}

/*  */
void DS1307_ReadBackupRegisters(void){


}

/*  */
void DS1307_WriteBackupRegisters(void){


}
