#include "defs.h"
#include "rtc.h"

LL_RTC_TimeTypeDef RTC_Time;


/*  */
void RTC_Init(void) {


    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR10, 0x55);

    uint32_t qqq = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR10);





    if(LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1) != 0x3232) {

        RTC_Time.Hours = 0;
        RTC_Time.Minutes = 0;
        RTC_Time.Seconds = 0;
        LL_RTC_TIME_Init(RTC, LL_RTC_FORMAT_BCD, &RTC_Time);

        LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, 0x3232);




        qqq = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1);
    }

}


/*  */
void RTC_Reset(void) {

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, 0);

    RTC_Init();
}


/*  */
void RTC_GetTime(void) {

    uint32_t timestamp = LL_RTC_TIME_Get(RTC);

    //RTC_Time.Hours =

//    *hour = __LL_RTC_CONVERT_BCD2BIN( LL_RTC_TIME_GetHour(RTC) );
//    *minute = __LL_RTC_CONVERT_BCD2BIN( LL_RTC_TIME_GetMinute(RTC) );
//    *second = __LL_RTC_CONVERT_BCD2BIN( LL_RTC_TIME_GetSecond(RTC) );
}


/*  */
void RTC_SetTime(uint8_t hour, uint8_t minute, uint8_t second) {

//    RTC_Time.Hours = hour;
//    RTC_Time.Minutes = minute;
//    RTC_Time.Seconds = second;
//    RTC_Time.TimeFormat = LL_RTC_TIME_FORMAT_AM_OR_24;
//
//    LL_RTC_TIME_Init(RTC, LL_RTC_FORMAT_BIN, &RTC_Time);
}

