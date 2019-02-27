#include "defs.h"
#include "pcf8583.h"

#define PCF8583_BASE_ADDRESS        0x28    // be adreso ir R/W bitu islygintas i desine

/* RTC registrai ( 0x00-0x07 ) */
#define PCF8583_CONTROL_REG         0x00
#define PCF8583_SECONDS_REG         0x02
#define PCF8583_MINUTES_REG         0x03
#define PCF8583_HOURS_REG           0x04
#define PCF8583_DATE_REG            0x05
#define PCF8583_WEEKDAY_MONTH_REG   0x06
#define PCF8583_TIMER_REG           0x07
/* ALARM registrai ( 0x08-0x0F ) */

/* USER registrai ( 0x10-0xFF ) */
#define PCF8583_YEAR_REG            0x10    // papildomas registras, kur saugosim metus (jis registruose nenumatytas). Formatas BCD 00-99
#define PCF8583_INIT_REG            0x11

#define PCF8583_BACKUP_REGS_START   0x12
#define PCF8583_BACKUP_REGS_END     0xFF
#define PCF8583_BACKUP_REGS_QUANT   (PCF8583_BACKUP_REGS_END - PCF8583_BACKUP_REGS_START + 1)

/* CONTROL and STATUS Register bits */
#define STATUS_REGISTER_TIMER           (1<<0)
#define STATUS_REGISTER_ALARM           (1<<1)
#define STATUS_REGISTER_ALARM_ENABLE    (1<<2)
#define STATUS_REGISTER_MASK            (1<<3)
#define STATUS_REGISTER_FUNCTION        (1<<4)
#define STATUS_REGISTER_LAST_COUNT      (1<<6)
#define STATUS_REGISTER_STOP_COUNT      (1<<7)


#define WEEKDAY_MON                 (1<<5)
#define WEEKDAY_TUE                 (2<<5)
#define WEEKDAY_WED                 (3<<5)
#define WEEKDAY_THU                 (4<<5)
#define WEEKDAY_FRI                 (5<<5)
#define WEEKDAY_SAT                 (6<<5)
#define WEEKDAY_SUN                 (7<<5)


/* Registre 0x05 (YEAR_DATE_REG) bitai 6 ir 7 reiskia:
    00 - keliameji metai
    01-11 - paprasti metai

    Keliamieji metai buvo 2016. Perskaiciuojam nuo 16-u metu

 */
#define YEAR_DEF                    16
//#define LEAP_YEAR_COUNTER           0


DateTime_TypeDef DateTime;

static uint8_t PCF8583_Flag = I2C_ADDR_NACK;

static struct{
    uint8_t ControlRegister;
    uint8_t SecondsRegister;
    uint8_t MinutesRegister;
    uint8_t HoursRegister;
    uint8_t DateRegister;
    uint8_t WeekdayMonthRegister;
    uint8_t YearRegister;
    uint8_t TimerRegister;
    uint8_t BackupRegisters[PCF8583_BACKUP_REGS_QUANT];
}PCF8583_Regs;

static void     PCF8583_GetDateTime(void);
static void     PCF8583_SetDateTime(void);

static void     PCF8583_ReadRegisters(void);
static void     PCF8583_WriteRegisters(void);
static uint8_t  PCF8583_ReadRegister(uint8_t reg);
static void     PCF8583_WriteRegister(uint8_t reg, uint8_t data);

/*  */
void PCF8583_Init(void){

    if( IIC_Check(PCF8583_BASE_ADDRESS) != I2C_OK ) {
        // PCF8583 init error
        PCF8583_Flag = I2C_ADDR_NACK;

        //return;
    }



    if(PCF8583_ReadRegister(PCF8583_INIT_REG) != 0x55){
        /* PCF8583 neinicializuota. Inicializuojam */

        /* Konfiguruojam Control registra */
        PCF8583_Regs.ControlRegister = 0x00;
        //...

        PCF8583_WriteRegister(PCF8583_CONTROL_REG, PCF8583_Regs.ControlRegister);

        /* Nustatom pradines reiksmes PCF8583 registruose */
        PCF8583_Regs.SecondsRegister = __LL_RTC_CONVERT_BIN2BCD(0x00);
        PCF8583_Regs.MinutesRegister = __LL_RTC_CONVERT_BIN2BCD(0x00);
        PCF8583_Regs.HoursRegister = __LL_RTC_CONVERT_BIN2BCD(0x00);
        PCF8583_Regs.DateRegister =  0x01;
        PCF8583_Regs.WeekdayMonthRegister = ( WEEKDAY_FRI | 0x01 );
        PCF8583_Regs.YearRegister = __LL_RTC_CONVERT_BIN2BCD(YEAR_DEF);

        PCF8583_WriteRegisters();

        /* isvalom Backup registrus */
        uint8_t i = 0;

        do{
            PCF8583_Regs.BackupRegisters[i] = 0xFF;
        }while(++i < PCF8583_BACKUP_REGS_QUANT);

        //IIC_Write(PCF8583_BASE_ADDRESS, PCF8583_BACKUP_REGS_START, PCF8583_Regs.BackupRegisters, PCF8583_BACKUP_REGS_QUANT);


        /* PCF8583 inicializuota. nustatom inicializacijos flaga */
        PCF8583_WriteRegister(PCF8583_INIT_REG, 0x55);
    }


    //PCF8583_ReadRegisters();

    PCF8583_GetDateTime();

    PCF8583_ReadBackupRegisters();
}

/*  */
void PCF8583_ReadBackupRegisters(void){


}

/*  */
void PCF8583_WriteBackupRegisters(void){


}


/* Gaunam is buferio laiko ir datos reiksmes */
static void PCF8583_GetDateTime(void){

    DateTime.Seconds = __LL_RTC_CONVERT_BCD2BIN(PCF8583_Regs.SecondsRegister);
    DateTime.Minutes = __LL_RTC_CONVERT_BCD2BIN(PCF8583_Regs.MinutesRegister);
    DateTime.Hours = __LL_RTC_CONVERT_BCD2BIN(PCF8583_Regs.HoursRegister&0x3F);
    DateTime.WeekDay = ( (PCF8583_Regs.WeekdayMonthRegister&0xE0)>>5 );
    DateTime.Date = __LL_RTC_CONVERT_BCD2BIN(PCF8583_Regs.DateRegister&0x3F);
    DateTime.Month = __LL_RTC_CONVERT_BCD2BIN(PCF8583_Regs.WeekdayMonthRegister&0x1F);
    DateTime.Year = __LL_RTC_CONVERT_BCD2BIN(PCF8583_Regs.YearRegister);
}

/*  */
static void PCF8583_SetDateTime(void){

    PCF8583_Regs.SecondsRegister = __LL_RTC_CONVERT_BIN2BCD(DateTime.Seconds);
    PCF8583_Regs.MinutesRegister = __LL_RTC_CONVERT_BIN2BCD(DateTime.Minutes);
    PCF8583_Regs.HoursRegister = __LL_RTC_CONVERT_BIN2BCD(DateTime.Hours)&0x3F;

    PCF8583_Regs.WeekdayMonthRegister = ( DateTime.WeekDay<<5 & DateTime.Month );
    PCF8583_Regs.YearRegister = __LL_RTC_CONVERT_BIN2BCD(DateTime.Year);
}

/* Skaitom i buferi PCF8583 registrus */
static void PCF8583_ReadRegisters(void){

    PCF8583_Regs.SecondsRegister = PCF8583_ReadRegister(PCF8583_SECONDS_REG);
    PCF8583_Regs.MinutesRegister = PCF8583_ReadRegister(PCF8583_MINUTES_REG);
    PCF8583_Regs.HoursRegister = PCF8583_ReadRegister(PCF8583_HOURS_REG);
    PCF8583_Regs.DateRegister = PCF8583_ReadRegister(PCF8583_DATE_REG);
    PCF8583_Regs.WeekdayMonthRegister = PCF8583_ReadRegister(PCF8583_WEEKDAY_MONTH_REG);
    PCF8583_Regs.YearRegister = PCF8583_ReadRegister(PCF8583_YEAR_REG);
}

/*  */
static void PCF8583_WriteRegisters(void){

    PCF8583_WriteRegister(PCF8583_SECONDS_REG, PCF8583_Regs.SecondsRegister);
    PCF8583_WriteRegister(PCF8583_MINUTES_REG, PCF8583_Regs.MinutesRegister);
    PCF8583_WriteRegister(PCF8583_HOURS_REG, PCF8583_Regs.HoursRegister);
    PCF8583_WriteRegister(PCF8583_DATE_REG, PCF8583_Regs.DateRegister);
    PCF8583_WriteRegister(PCF8583_WEEKDAY_MONTH_REG, PCF8583_Regs.WeekdayMonthRegister);
    PCF8583_WriteRegister(PCF8583_YEAR_REG, PCF8583_Regs.YearRegister);
}


/*  */
static uint8_t PCF8583_ReadRegister(uint8_t reg){

//    LL_I2C_HandleTransfer(I2C1, PCF8583_BASE_ADDRESS, LL_I2C_ADDRSLAVE_7BIT, 1, LL_I2C_MODE_AUTOEND, LL_I2C_GENERATE_START_READ);
//    while( LL_I2C_IsActiveFlag_ADDR(I2C1) != RESET );
//
//    while( LL_I2C_IsActiveFlag_RXNE(I2C1) == RESET );
//    return LL_I2C_ReceiveData8(I2C1);

    return 0xFF;
}

/*  */
static void PCF8583_WriteRegister(uint8_t reg, uint8_t data){

//    LL_I2C_HandleTransfer(I2C1, PCF8583_BASE_ADDRESS, LL_I2C_ADDRSLAVE_7BIT, 1, LL_I2C_MODE_AUTOEND, LL_I2C_GENERATE_START_WRITE);
//    while( LL_I2C_IsActiveFlag_ADDR(I2C1) != RESET );
//
//    LL_I2C_TransmitData8(I2C1, (uint16_t)reg);
//    while( LL_I2C_IsActiveFlag_TXE(I2C1) == RESET );
//
//    LL_I2C_TransmitData8(I2C1, data);
//    while( LL_I2C_IsActiveFlag_TXE(I2C1) == RESET );
//
//    LL_I2C_ClearFlag_STOP(I2C1);
//
//    LL_mDelay(IIC_DELAY_MS);

}

