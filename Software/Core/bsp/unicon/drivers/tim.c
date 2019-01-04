#include "defs.h"
#include "tim.h"


void BeeperHandler(void){

    uint8_t cnt = GET_BEEPER_COUNTER();

    if(cnt > 0){
        LL_TIM_OC_SetCompareCH1(TIM16, GET_BEEPER_LEVEL()); // nustatom garso stipruma
        LL_TIM_CC_EnableChannel(TIM16, LL_TIM_CHANNEL_CH1);
        SET_BEEPER_COUNTER(--cnt);
    }else{
        LL_TIM_CC_DisableChannel(TIM16, LL_TIM_CHANNEL_CH1);
    }
}


