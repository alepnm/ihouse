#ifndef RTC_H_INCLUDED
#define RTC_H_INCLUDED

#include "stm32f1xx_ll_rtc.h"
#include "datetime.h"
#include "bkp.h"


extern DateTime_TypeDef RTC_DateTime;
extern uint8_t CalendarUpdateRequired;


void    RTC_Init(void);
void    RTC_Reset(void);
void    RTC_GetTime(DateTime_TypeDef *datetime);
void    RTC_SetTime(uint8_t hour, uint8_t minute, uint8_t second);

void    CalendarUpdate(DateTime_TypeDef *datetime);
uint8_t YearIsLeap(uint8_t year);
void    DaySavingHandler(DateTime_TypeDef *datetime);

uint8_t RTC_BKP_GetInitReg(void);
void    RTC_BKP_SetInitReg(uint8_t value);
uint8_t RTC_BKP_GetDaySavingReg(void);
void    RTC_BKP_SetDaySavingReg(uint8_t value);
uint8_t RTC_BKP_GetWeekDay(void);
void    RTC_BKP_SetWeekDay(uint8_t wday);
uint8_t RTC_BKP_GetDate(void);
void    RTC_BKP_SetDate(uint8_t date);
uint8_t RTC_BKP_GetMonth(void);
void    RTC_BKP_SetMonth(uint8_t month);
uint8_t RTC_BKP_GetYear(void);
void    RTC_BKP_SetYear(uint8_t year);

void RTC_IRQHandler(void);


#endif /* RTC_H_INCLUDED */
