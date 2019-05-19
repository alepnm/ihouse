#include "defs.h"
#include "rtc.h"


#define RTC_AUTO_1_SECOND   32768U

DateTime_TypeDef RTC_DateTime = {0};
uint8_t LeapYear = 0;
const char months[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

uint32_t date_cnt = 0;

/*  */
/**
  * @brief RTC Initialization Function
  * @param None
  * @retval None
  */
void RTC_Init(void) {

    uint32_t counter_time = 0U;

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


    uint8_t qqq = 518409%86400;


    //LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, 0x00);

    if( LL_RTC_BKP_GetRegister(BKP, LL_RTC_BKP_DR1) != 0x1234) {

        RTC_DateTime.Hours = 0;
        RTC_DateTime.Minutes = 0;
        RTC_DateTime.Seconds = 0;
        RTC_DateTime.Date = 1;
        RTC_DateTime.Month = 1;
        RTC_DateTime.Year = 19;
        RTC_DateTime.WeekDay = 2;

        /*  */
        if( !((2000+RTC_DateTime.Year)%400) ) LeapYear = 1;
        else if( !((2000+RTC_DateTime.Year)%100) ) LeapYear = 0;
        else if( !((2000+RTC_DateTime.Year)%4) ) LeapYear = 1;





        RTC_SetTime(RTC_DateTime.Hours, RTC_DateTime.Minutes, RTC_DateTime.Seconds);

        LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, 0x1234);

        LL_PWR_DisableBkUpAccess();

        LL_RTC_EnableWriteProtection(RTC);
    }
}


/*  */
void RTC_Reset(void) {

    LL_RTC_BKP_SetRegister(BKP, LL_RTC_BKP_DR1, 0);

    RTC_Init();
}


/*  */
void RTC_GetTime(void) {

    uint32_t counter_time = LL_RTC_TIME_Get(RTC);

    RTC_DateTime.Hours = counter_time/3600;
    RTC_DateTime.Minutes = (counter_time%3600)/60;
    RTC_DateTime.Seconds = (counter_time%3600)%60;
}


/*  */
void RTC_SetTime(uint8_t hours, uint8_t minutes, uint8_t seconds) {

    uint32_t counter_time = 0U;

    counter_time = (uint32_t)(((uint32_t)hours * 3600U) + \
                    ((uint32_t)minutes * 60U) + \
                    ((uint32_t)seconds));

    LL_RTC_TIME_Set(RTC, counter_time);
}


/* tikrinam ivestus duomenys!!! */
void RTC_SetDate(uint8_t year, uint8_t month, uint8_t day) {

}


/*  */
void RTC_CountDateTime(uint32_t counter_time) {

    DateTime_TypeDef datetime = {0};
    uint8_t leap_y = 0;

    datetime.Hours = counter_time/3600;
    datetime.Minutes = (counter_time%3600)/60;
    datetime.Seconds = (counter_time%3600)%60;




}


/*  */
void RTC_IRQHandler(void){

    uint32_t counter_time = 0;

    if( LL_RTC_IsEnabledIT_SEC(RTC) && LL_RTC_IsActiveFlag_SEC(RTC) ){

        LL_RTC_ClearFlag_SEC(RTC);

        LED_TOGGLE();

        // perskaicuojam Date is RTC kounterio

    }
}
