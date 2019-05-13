#ifndef BSP_FUNC_H_INCLUDED
#define BSP_FUNC_H_INCLUDED


#include "defs.h"

#define SystickDelay_ms(x) LL_mDelay(x);


void        Delay_ms(uint32_t delay);

uint32_t    hex2int(char *hex);
void        str_reverse(char *str, int len);
int         fun_itoa(char* str, int num, int base);

#endif /* BSP_FUNC_H_INCLUDED */
