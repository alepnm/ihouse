#include "defs.h"
#include "tim.h"
#include "io.h"


uint32_t Beeper;

/*   */
void BeeperHandler(void){

    uint8_t cnt = GET_BEEPER_COUNTER();

    if(cnt > 0){
        LL_TIM_OC_SetCompareCH1(TIM16, ( GET_BEEPER_LEVEL() )*7); // nustatom garso stipruma
        LL_TIM_CC_EnableChannel(TIM16, LL_TIM_CHANNEL_CH1);
        SET_BEEPER_COUNTER(--cnt);
    }else{
        LL_TIM_CC_DisableChannel(TIM16, LL_TIM_CHANNEL_CH1);
        LED2_OFF();
    }
}

/*   */
void StartPWM_Timer(void){

    LL_TIM_EnableCounter(TIM15);
    LL_TIM_EnableAllOutputs(TIM15);
    LL_TIM_CC_EnableChannel(TIM15, LL_TIM_CHANNEL_CH1);
    LL_TIM_CC_EnableChannel(TIM15, LL_TIM_CHANNEL_CH2);

    LL_TIM_OC_SetCompareCH1(TIM15, 0);
    LL_TIM_OC_SetCompareCH2(TIM15, 0);
}

/*   */
void StartBeeper(void){

    LL_TIM_EnableCounter(TIM16);
    LL_TIM_EnableAllOutputs(TIM16);
    LL_TIM_CC_EnableChannel(TIM16, LL_TIM_CHANNEL_CH1);

    SET_BEEPER_TONE(0);
    SET_BEEPER_LEVEL(5);
}
