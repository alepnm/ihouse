#ifndef DS3107_H_INCLUDED
#define DS3107_H_INCLUDED

#include "datetime.h"
#include "iic.h"

#define     DS1307_BASE_ADDRESS    0xD0


extern DateTime_TypeDef    DateTime;
extern char                DateTimeString[20];


void    DS1307_Init(void);
void    DS1307_Process(void);
void    DS1307_GetDateTime(DateTime_TypeDef* dest);
void    DS1307_SetDateTime(DateTime_TypeDef* dest);
void    DS1307_ClearBackupRegisters(void);

#endif /* DS3107_H_INCLUDED */
