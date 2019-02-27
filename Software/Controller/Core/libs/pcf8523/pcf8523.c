#include "defs.h"
#include "pcf8523.h"


#define PCF8523_CONTROL_1       0x00
#define PCF8523_CONTROL_2       0x01
#define PCF8523_CONTROL_3       0x02
#define PCF8523_SECONDS_REG     0x03
#define PCF8523_MINUTES_REG     0x04
#define PCF8523_HOURS_REG       0x05
#define PCF8523_DATE_REG        0x06
#define PCF8523_WEEKDAY_REG     0x07
#define PCF8523_MONTH_REG       0x08
#define PCF8523_YEAR_REG        0x09


/* CONTROL1 */
#define PCF8523_CAP_SEL         (1 << 7)
#define PCF8523_STOP            (1 << 5)
#define PCF8523_SR              (1 << 4)
#define PCF8523_12_24           (1 << 3)
#define PCF8523_SIE             (1 << 2)
#define PCF8523_AIE             (1 << 1)
#define PCF8523_CIE             0x01

/* CONTROL2 */
#define PCF8523_WTAF            (1 << 7)
#define PCF8523_CTAF            (1 << 6)
#define PCF8523_CTBF            (1 << 5)
#define PCF8523_SF              (1 << 4)
#define PCF8523_AF              (1 << 3)
#define PCF8523_WTAIE           (1 << 2)
#define PCF8523_CTAIE           (1 << 1)
#define PCF8523_CTBIE           0x01

/* CONTROL3 */
#define PCF8523_PM              (1 << 6)
#define PCF8523_BSF             (1 << 3)
#define PCF8523_BLF             (1 << 2)
#define PCF8523_BSIE            (1 << 1)
#define PCF8523_BLIE            0x01


uint8_t PCF8523_Flag = I2C_ADDR_NACK;

PCF8523_TypeDef PCF8523_DateTime;
static PCF8523_TypeDef PCF8523_Registers;


/*  */
void PCF8523_Init(void){

    if( IIC_Check(PCF8523_BASE_ADDRESS) != I2C_OK ) {
        // PCF8523 init error
        PCF8523_Flag = I2C_ADDR_NACK;

        return;
    }


    PCF8523_WriteRegister(PCF8523_CONTROL_1, PCF8523_CAP_SEL);
    PCF8523_WriteRegister(PCF8523_CONTROL_2, 0b00000000);
    PCF8523_WriteRegister(PCF8523_CONTROL_3, 0b00000000);


    PCF8523_ReadRegisters();

    PCF8523_GetDateTime(&PCF8523_DateTime);
}


/* Skaitom i buferi PCF8523 registrus */
void PCF8523_ReadRegisters(void){

    PCF8523_Registers.Seconds = PCF8523_ReadRegister(PCF8523_SECONDS_REG);
    PCF8523_Registers.Minutes = PCF8523_ReadRegister(PCF8523_MINUTES_REG);
    PCF8523_Registers.Hours = PCF8523_ReadRegister(PCF8523_HOURS_REG);
    PCF8523_Registers.WeekDay = PCF8523_ReadRegister(PCF8523_WEEKDAY_REG);
    PCF8523_Registers.Date = PCF8523_ReadRegister(PCF8523_DATE_REG);
    PCF8523_Registers.Month = PCF8523_ReadRegister(PCF8523_MONTH_REG);
    PCF8523_Registers.Year = PCF8523_ReadRegister(PCF8523_YEAR_REG);
}

/*  */
void PCF8523_WriteRegisters(void){

    PCF8523_WriteRegister(PCF8523_SECONDS_REG, PCF8523_Registers.Seconds);
    PCF8523_WriteRegister(PCF8523_MINUTES_REG, PCF8523_Registers.Minutes);
    PCF8523_WriteRegister(PCF8523_HOURS_REG, PCF8523_Registers.Hours);
    PCF8523_WriteRegister(PCF8523_WEEKDAY_REG, PCF8523_Registers.WeekDay);
    PCF8523_WriteRegister(PCF8523_DATE_REG, PCF8523_Registers.Date);
    PCF8523_WriteRegister(PCF8523_MONTH_REG, PCF8523_Registers.Month);
    PCF8523_WriteRegister(PCF8523_YEAR_REG, PCF8523_Registers.Year);
}

/* Gaunam is buferio laiko ir datos reiksmes */
void PCF8523_GetDateTime(PCF8523_TypeDef* dest){

    dest->Seconds = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.Seconds&0x7F);
    dest->Minutes = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.Minutes&0x7F);
    dest->Hours = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.Hours&0x3F);
    dest->WeekDay = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.WeekDay&0x07);
    dest->Date = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.Date&0x3F);
    dest->Month = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.Month&0x1F);
    dest->Year = __LL_RTC_CONVERT_BCD2BIN(PCF8523_Registers.Year);
}

/*  */
uint8_t PCF8523_GetBateryStatus(void){

    uint8_t reg = PCF8523_ReadRegister(PCF8523_CONTROL_3);

    return READ_BIT(reg, PCF8523_BLF);
}



/*  */
void PCF8523_SetDateTime(PCF8523_TypeDef* dest){

    PCF8523_Registers.Seconds = __LL_RTC_CONVERT_BIN2BCD(dest->Seconds);
    PCF8523_Registers.Minutes = __LL_RTC_CONVERT_BIN2BCD(dest->Minutes);
    PCF8523_Registers.Hours = __LL_RTC_CONVERT_BIN2BCD(dest->Hours);
    PCF8523_Registers.WeekDay = __LL_RTC_CONVERT_BIN2BCD(dest->WeekDay);
    PCF8523_Registers.Date = __LL_RTC_CONVERT_BIN2BCD(dest->Date);
    PCF8523_Registers.Month = __LL_RTC_CONVERT_BIN2BCD(dest->Month);
    PCF8523_Registers.Year = __LL_RTC_CONVERT_BIN2BCD(dest->Year);

    PCF8523_WriteRegisters();
}

/*  */
uint8_t PCF8523_ReadRegister(uint8_t reg){


    return 0;
}

/*  */
void PCF8523_WriteRegister(uint8_t reg, uint8_t data){



}
