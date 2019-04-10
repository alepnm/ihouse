#ifndef RTC_H_INCLUDED
#define RTC_H_INCLUDED

#include "bkp.h"


void RTC_Init(void);
void RTC_Reset(void);
void RTC_GetTime(void);
void RTC_SetTime(uint8_t hour, uint8_t minute, uint8_t second);


#endif /* RTC_H_INCLUDED */
