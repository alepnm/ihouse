#ifndef PWM_H_INCLUDED
#define PWM_H_INCLUDED


/* Beeper defines */
#define     BEEPER_LEVEL_MSK        0x00007000
#define     BEEPER_TONE_MSK         0x00000700
#define     BEEPER_COUNT_MSK        0x000000FF
#define     SET_BEEPER_LEVEL(x)     Beeper.DataReg ^= (Beeper.DataReg & BEEPER_LEVEL_MSK); Beeper.DataReg |= (x<<12)
#define     GET_BEEPER_LEVEL()      (Beeper.DataReg & BEEPER_LEVEL_MSK)>>12
#define     SET_BEEPER_TONE(x)      Beeper.DataReg ^= (Beeper.DataReg & BEEPER_TONE_MSK); Beeper.DataReg |= (x<<8)
#define     GET_BEEPER_TONE()       (Beeper.DataReg & BEEPER_TONE_MSK)>>8
#define     SET_BEEPER_COUNTER(x)   Beeper.DataReg ^= (Beeper.DataReg & BEEPER_COUNT_MSK); Beeper.DataReg |= x
#define     GET_BEEPER_COUNTER()    (Beeper.DataReg & BEEPER_COUNT_MSK)

struct _beeper{
    uint32_t    DataReg;
}Beeper;

extern struct _beeper Beeper;



void BeeperHandler(void);

#endif /* PWM_H_INCLUDED */
