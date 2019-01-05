#ifndef PWM_H_INCLUDED
#define PWM_H_INCLUDED


/* Beeper defines */
#define     BEEPER_LEVEL_MSK        0x00007000
#define     BEEPER_TONE_MSK         0x00000700
#define     BEEPER_COUNT_MSK        0x000000FF
#define     SET_BEEPER_LEVEL(x)     Beeper ^= (Beeper & BEEPER_LEVEL_MSK); Beeper |= (x<<12)
#define     GET_BEEPER_LEVEL()      (Beeper & BEEPER_LEVEL_MSK)>>12
#define     SET_BEEPER_TONE(x)      Beeper ^= (Beeper & BEEPER_TONE_MSK); Beeper |= (x<<8)
#define     GET_BEEPER_TONE()       (Beeper & BEEPER_TONE_MSK)>>8
#define     SET_BEEPER_COUNTER(x)   Beeper ^= (Beeper & BEEPER_COUNT_MSK); Beeper |= x
#define     GET_BEEPER_COUNTER()    (Beeper & BEEPER_COUNT_MSK)

#define     BEEP()                  SET_BEEPER_COUNTER(10)

extern uint32_t Beeper;


void BeeperHandler(void);
void StartBeeper(void);
void StartPWM_Timer(void);

#endif /* PWM_H_INCLUDED */
