#ifndef BSP_FUNC_H_INCLUDED
#define BSP_FUNC_H_INCLUDED


#define SystickDelay_ms(x) LL_mDelay(x);


void        Delay_ms(uint32_t delay);

uint32_t    hex2int(char *hex);

#endif /* BSP_FUNC_H_INCLUDED */
