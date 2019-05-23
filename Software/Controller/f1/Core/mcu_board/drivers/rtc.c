#include "defs.h"
#include "rtc.h"


#define RTC_AUTO_1_SECOND   32768U

/*
LL_RTC_BKP_DR1: HI - Init, LO - Day Saving
LL_RTC_BKP_DR2: HI - WeekDay, LO - Date
LL_RTC_BKP_DR3: HI - Month, LO - Year
*/


DateTime_TypeDef RTC_DateTime = {0};
char DateTimeString[20] = {0};
uint8_t LeapYear = 0, DaySaving = 0, DaySavingFlag = 0, CalendarUpdateRequired = 0;
const char months[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};


/*  */
/**
  * @brief RTC Initialization Function
  * @param None
  * @retval None
  */
void RTC_Init(void) {

    uint32_t counter_time = 0U;
    uint8_t days_delta = 0;

    LL_RTC_InitTypeDef RTC_InitStruct = {0};

    LL_PWR_EnableBkUpAccess();

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_BKP);

    LL_RCC_EnableRTC();

    LL_RTC_TAMPER_Disable(BKP);

    RTC_InitStruct.AsynchPrescaler = RTC_AUTO_1_SECOND;
    RTC_InitStruct.OutPutSource    = LL_RTC_CALIB_OUTPUT_NONE;
    LL_RTC_Init(RTC, &RTC_InitStruct);

    NVIC_SetPriority(RTC_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 0, 0));
    NVIC_EnableIRQ(RTC_IRQn);

    LL_RTC_EnableIT_SEC(RTC);

    //RTC_BKP_SetInitReg(0x00);

    if( RTC_BKP_GetInitReg() != 0x34) {

        RTC_DateTime.Hours = 0;
        RTC_DateTime.Minutes = 0;
        RTC_DateTime.Seconds = 0;
        RTC_DateTime.Date = 1;
        RTC_DateTime.Month = 1;
        RTC_DateTime.Year = 19;
        RTC_DateTime.WeekDay = 2;

        DaySaving = 0;

        /*  */
        if( !((2000+RTC_DateTime.Year)%400) ) LeapYear = 1;
        else if( !((2000+RTC_DateTime.Year)%100) ) LeapYear = 0;
        else if( !((2000+RTC_DateTime.Year)%4) ) LeapYear = 1;

        RTC_SetTime(RTC_DateTime.Hours, RTC_DateTime.Minutes, RTC_DateTime.Seconds);

        RTC_BKP_SetDate(RTC_DateTime.Date);
        RTC_BKP_SetMonth(RTC_DateTime.Month);
        RTC_BKP_SetYear(RTC_DateTime.Year);
        RTC_BKP_SetWeekDay(RTC_DateTime.WeekDay);
        RTC_BKP_SetDaySavingReg(DaySaving);


        RTC_BKP_SetInitReg(0x34);

        LL_PWR_DisableBkUpAccess();

        LL_RTC_EnableWriteProtection(RTC);

    }else{

        RTC_GetTime(&RTC_DateTime);

        RTC_DateTime.Date = RTC_BKP_GetDate();
        RTC_DateTime.WeekDay = RTC_BKP_GetWeekDay();
        RTC_DateTime.Month = RTC_BKP_GetMonth();
        RTC_DateTime.Year = RTC_BKP_GetYear();
        DaySaving = RTC_BKP_GetDaySavingReg();

        counter_time = LL_RTC_TIME_Get(RTC);

        days_delta = counter_time/86400;

        if(days_delta){
            while(days_delta){
                CalendarUpdate(&RTC_DateTime);
                RTC_DateTime.Hours -= 24;
                counter_time -= 86400;
                days_delta--;
            }

            LL_RTC_DisableWriteProtection(RTC);
            LL_RTC_TIME_Set(RTC, counter_time);
            LL_RTC_EnableWriteProtection(RTC);

            RTC_BKP_SetDate(RTC_DateTime.Date);
            RTC_BKP_SetWeekDay(RTC_DateTime.WeekDay);
            RTC_BKP_SetMonth(RTC_DateTime.Month);
            RTC_BKP_SetYear(RTC_DateTime.Year);
        }
    }

    LeapYear = YearIsLeap(RTC_DateTime.Year);
}


/*  */
void CalendarUpdate(DateTime_TypeDef *datetime){

    if(datetime->Month==2){

        if(datetime->Date<28){

            datetime->Date++;

        }else{

            if(datetime->Date==28){

                if(LeapYear) datetime->Date++;

            }else{

                datetime->Month++;
                datetime->Date = 0;
            }
        }

    }else{

        if(months[datetime->Month]==31){

            if(datetime->Date < 31) datetime->Date++;
            else{
                if(datetime->Month == 12){
                    datetime->Year++;
                    LeapYear = YearIsLeap(datetime->Year);
                    datetime->Month = 1;
                    datetime->Date = 1;
                }else{
                    datetime->Month++;
                    datetime->Date = 1;
                }
            }
        }else{
            if(datetime->Date < 30){

                datetime->Date++;

            }else{

                datetime->Month++;
                datetime->Date = 1;
            }
        }
    }

    if(datetime->WeekDay == 6) datetime->WeekDay = 0;
    else datetime->WeekDay++;
}


/*  */
void DaySavingHandler(DateTime_TypeDef *datetime){

    if(datetime->WeekDay == 0 && datetime->Date > 24 && DaySavingFlag == 0){

        if(datetime->Month == 3) { datetime->Hours++; DaySavingFlag = 1; }
        else if(datetime->Month == 10) { datetime->Hours--; DaySavingFlag = 1; }
    }
}



/*  */
uint8_t YearIsLeap(uint8_t year){

    if( !((2000+year)%400) ) return 1;
    else if( !((2000+year)%100) ) return 0;
    else if( !((2000+year)%4) ) return 1;
    else return 0;
}



/*  */
void RTC_Reset(void) {

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, 0);

    RTC_Init();
}


/*  */
void RTC_GetTime(DateTime_TypeDef *datetime) {

    uint32_t counter_time = LL_RTC_TIME_Get(RTC);

    datetime->Hours = counter_time/3600;
    datetime->Minutes = (counter_time%3600)/60;
    datetime->Seconds = (counter_time%3600)%60;
}


/* сохраняем время в RTC счетчике */
void RTC_SetTime(uint8_t hours, uint8_t minutes, uint8_t seconds) {

    uint32_t counter_time = 0U;

    counter_time = (uint32_t)(((uint32_t)hours * 3600U) + \
                    ((uint32_t)minutes * 60U) + \
                    ((uint32_t)seconds));

    LL_RTC_TIME_Set(RTC, counter_time);
}





/* INIT registras */
uint8_t RTC_BKP_GetInitReg(void){
    return (uint8_t)(LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1) >> 8);
}


/*  */
void RTC_BKP_SetInitReg(uint8_t value){

    uint16_t reg = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1);

    reg ^= reg & 0xFF00;
    reg |= value << 8;

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, reg);
}


/* DAY Saving registras */
uint8_t RTC_BKP_GetDaySavingReg(void){
    return (uint8_t)(LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1) & 0xFF);
}


/*  */
void RTC_BKP_SetDaySavingReg(uint8_t value){

    uint16_t reg = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1);

    reg ^= reg & 0xFF;
    reg |= value;

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, reg);
}


/* WeekDay registras */
uint8_t RTC_BKP_GetWeekDay(void){
    return (uint8_t)( LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR2) >> 8 );
}


/*  */
void RTC_BKP_SetWeekDay(uint8_t wday){

    uint16_t reg = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR2);

    reg ^= reg & 0xFF00;
    reg |= wday << 8;

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR2, reg);
}


/* Date registras */
uint8_t RTC_BKP_GetDate(void){
    return (uint8_t)(LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR2) & 0xFF);
}


/*  */
void RTC_BKP_SetDate(uint8_t date){

    uint16_t reg = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR2);

    reg ^= reg & 0xFF;
    reg |= date;

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR2, reg);
}


/* Month registras */
uint8_t RTC_BKP_GetMonth(void){
    return (uint8_t)( LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR3) >> 8 );
}


/*  */
void RTC_BKP_SetMonth(uint8_t month){

    uint16_t reg = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR3);

    reg ^= reg & 0xFF00;
    reg |= month << 8;

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR3, reg);
}


/* Year registras */
uint8_t RTC_BKP_GetYear(void){
    return (uint8_t)(LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR3) & 0xFF);
}


/*  */
void RTC_BKP_SetYear(uint8_t year){

    uint16_t reg = LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR3);

    reg ^= reg & 0xFF;
    reg |= year;

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR3, reg);
}










/*  */
void RTC_IRQHandler(void){

    uint32_t counter_time = 0;

    if( LL_RTC_IsEnabledIT_SEC(RTC) && LL_RTC_IsActiveFlag_SEC(RTC) ){

        LL_RTC_ClearFlag_SEC(RTC);

        LED_TOGGLE();

        if(RTC_DateTime.Seconds < 59) RTC_DateTime.Seconds++;
        else{

            RTC_DateTime.Seconds = 0;

            if(RTC_DateTime.Minutes < 59) RTC_DateTime.Minutes++;
            else{

                RTC_DateTime.Minutes = 0;

                if(RTC_DateTime.Hours < 23){

                    RTC_DateTime.Hours++;

                    if(RTC_DateTime.Hours == 3){

                        if(DaySaving) DaySavingHandler(&RTC_DateTime);
                    }

                }else{

                    RTC_DateTime.Hours = 0;

                    DaySavingFlag = 0;

                    LL_RTC_DisableWriteProtection(RTC);
                    LL_RTC_TIME_Set(RTC, counter_time);
                    LL_RTC_EnableWriteProtection(RTC);

                    CalendarUpdateRequired = 1;
                }
            }
        }
    }
}
