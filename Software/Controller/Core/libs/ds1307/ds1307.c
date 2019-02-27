#include "defs.h"
#include "ds1307.h"



#define DS1307_SECONDS_REG      0x00
#define DS1307_MINUTES_REG      0x01
#define DS1307_HOURS_REG        0x02
#define DS1307_WEEKDAY_REG      0x03
#define DS1307_DATE_REG         0x04
#define DS1307_MONTH_REG        0x05
#define DS1307_YEAR_REG         0x06

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


static struct{
    uint8_t SecondsRegister;
    uint8_t MinutesRegister;
    uint8_t HoursRegister;
    uint8_t DateRegister;
    uint8_t WeekDayRegister;
    uint8_t MonthRegister;
    uint8_t YearRegister;
    uint8_t BackupRegisters[DS1307_BACKUP_REGS_END - DS1307_BACKUP_REGS_ADDR + 1];
}DS1307_Regs;


/*  */
void DS1307_Init(void){

    if( IIC_Check(DS1307_BASE_ADDRESS) != I2C_OK ) {
        // DS1307 init error
        DS1307_Flag = I2C_ADDR_NACK;

        return;
    }

    //DS1307_Registers.Hours = DS1307_ReadRegister(DS1307_HOURS_REG);
    //DS1307_WriteRegister(DS1307_HOURS_REG, SET_BIT(DS1307_Registers.Hours, DS1307_AM_PM_BIT ));

    DS1307_ReadRegisters();

    DS1307_GetDateTime(&DateTime);


    DS1307_ReadBackupRegisters();
}


/* Skaitom i buferi DS1307 registrus */
void DS1307_ReadRegisters(void){

    DS1307_Regs.SecondsRegister = DS1307_ReadRegister(DS1307_SECONDS_REG);
    DS1307_Regs.MinutesRegister = DS1307_ReadRegister(DS1307_MINUTES_REG);
    DS1307_Regs.HoursRegister = DS1307_ReadRegister(DS1307_HOURS_REG);
    DS1307_Regs.WeekDayRegister = DS1307_ReadRegister(DS1307_WEEKDAY_REG);
    DS1307_Regs.DateRegister = DS1307_ReadRegister(DS1307_DATE_REG);
    DS1307_Regs.MonthRegister = DS1307_ReadRegister(DS1307_MONTH_REG);
    DS1307_Regs.YearRegister = DS1307_ReadRegister(DS1307_YEAR_REG);
}

/*  */
void DS1307_WriteRegisters(void){

    DS1307_WriteRegister(DS1307_SECONDS_REG, DS1307_Regs.SecondsRegister);
    DS1307_WriteRegister(DS1307_MINUTES_REG, DS1307_Regs.MinutesRegister);
    DS1307_WriteRegister(DS1307_HOURS_REG, DS1307_Regs.HoursRegister);
    DS1307_WriteRegister(DS1307_WEEKDAY_REG, DS1307_Regs.WeekDayRegister);
    DS1307_WriteRegister(DS1307_DATE_REG, DS1307_Regs.DateRegister);
    DS1307_WriteRegister(DS1307_MONTH_REG, DS1307_Regs.MonthRegister);
    DS1307_WriteRegister(DS1307_YEAR_REG, DS1307_Regs.YearRegister);
}

/* Gaunam is buferio laiko ir datos reiksmes */
void DS1307_GetDateTime(DateTime_TypeDef* dest){

    dest->Seconds = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.SecondsRegister&0x7F);
    dest->Minutes = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.MinutesRegister&0x7F);
    dest->Hours = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.HoursRegister&0x3F);
    dest->WeekDay = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.WeekDayRegister&0x07);
    dest->Date = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.DateRegister&0x3F);
    dest->Month = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.MonthRegister&0x1F);
    dest->Year = __LL_RTC_CONVERT_BCD2BIN(DS1307_Regs.YearRegister);
}

/*  */
void DS1307_SetDateTime(DateTime_TypeDef* dest){

    DS1307_Regs.SecondsRegister = __LL_RTC_CONVERT_BIN2BCD(dest->Seconds);
    DS1307_Regs.MinutesRegister = __LL_RTC_CONVERT_BIN2BCD(dest->Minutes);
    DS1307_Regs.HoursRegister = __LL_RTC_CONVERT_BIN2BCD(dest->Hours);
    DS1307_Regs.WeekDayRegister = __LL_RTC_CONVERT_BIN2BCD(dest->WeekDay);
    DS1307_Regs.DateRegister = __LL_RTC_CONVERT_BIN2BCD(dest->Date);
    DS1307_Regs.MonthRegister = __LL_RTC_CONVERT_BIN2BCD(dest->Month);
    DS1307_Regs.YearRegister = __LL_RTC_CONVERT_BIN2BCD(dest->Year);

    DS1307_WriteRegisters();
}

/*  */
uint8_t DS1307_ReadRegister(uint8_t reg){


    return 0;
}

/*  */
void DS1307_WriteRegister(uint8_t reg, uint8_t data){



}

/*  */
void DS1307_ReadBackupRegisters(void){


}

/*  */
void DS1307_WriteBackupRegisters(void){


}
