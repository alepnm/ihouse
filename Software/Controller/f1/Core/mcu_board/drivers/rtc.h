#ifndef RTC_H_INCLUDED
#define RTC_H_INCLUDED

#include "stm32f1xx_ll_rtc.h"
#include "datetime.h"
#include "bkp.h"


void RTC_Init(void);
void RTC_Reset(void);
void RTC_GetTime(void);
void RTC_SetTime(uint8_t hour, uint8_t minute, uint8_t second);

void RTC_CountDateTime(uint32_t counter_time);

void RTC_IRQHandler(void);


#endif /* RTC_H_INCLUDED */
