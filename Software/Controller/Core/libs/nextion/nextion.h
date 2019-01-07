#ifndef NEXTION_H_INCLUDED
#define NEXTION_H_INCLUDED

#include "defs.h"
//#include "hmi_components.h"
//#include "hmi_page.h"


extern const char var_dim[3];
extern const char var_dims[4];
extern const char var_baud[4];
extern const char var_bauds[5];
extern const char var_spax[4];
extern const char var_spay[4];
extern const char var_thc[3];
extern const char var_thdra[5];
extern const char var_ussp[4];
extern const char var_thsp[4];
extern const char var_thup[4];
extern const char var_sendxy[6];
extern const char var_delay[5];
extern const char var_sleep[5];
extern const char var_bkcmd[5];
extern const char var_rand[4];
extern const char var_wup[3];


#if defined(NEXTION_ENHANCED)
extern const char var_sys0[4];
extern const char var_sys1[4];
extern const char var_sys2[4];
extern const char var_rtc0[4];
extern const char var_rtc1[4];
extern const char var_rtc2[4];
extern const char var_rtc3[4];
extern const char var_rtc4[4];
extern const char var_rtc5[4];
extern const char var_rtc6[4];
extern const char var_pio0[4];
extern const char var_pio1[4];
extern const char var_pio2[4];
extern const char var_pio3[4];
extern const char var_pio4[4];
extern const char var_pio5[4];
extern const char var_pio6[4];
extern const char var_pio7[4];
extern const char var_pwm4[4];
extern const char var_pwm5[4];
extern const char var_pwm6[4];
extern const char var_pwmf[4];
#endif

extern const char cmd_page[4];
extern const char cmd_ref[3];
extern const char cmd_click[5];
extern const char cmd_ref_stop[8];
extern const char cmd_ref_star[8];
extern const char cmd_get[3];
extern const char cmd_sendme[6];
extern const char cmd_cov[3];
extern const char cmd_touch_j[7];
extern const char cmd_substr[6];
extern const char cmd_vis[3];
extern const char cmd_tsw[3];
extern const char cmd_com_stop[8];
extern const char cmd_com_star[8];
extern const char cmd_randset[7];
extern const char cmd_code_c[6];
extern const char cmd_print[5];
extern const char cmd_printh[6];
extern const char cmd_add[3];
extern const char cmd_addt[4];
extern const char cmd_cle[3];
extern const char cmd_rest[4];
extern const char cmd_doevents[8];
extern const char cmd_strlen[6];
extern const char cmd_if[2];
extern const char cmd_while[5];
extern const char cmd_for[3];

#if defined(NEXTION_ENHANCED)
extern const char cmd_repo[4];
extern const char cmd_wepo[4];
extern const char cmd_wept[4];
extern const char cmd_rept[4];
extern const char cmd_cfgpio[6];
#endif

extern const char cmd_cls[3];
extern const char cmd_pic[3];
extern const char cmd_picq[4];
extern const char cmd_xpic[4];
extern const char cmd_xstr[4];
extern const char cmd_fill[4];
extern const char cmd_line[4];
extern const char cmd_draw[4];
extern const char cmd_cir[3];
extern const char cmd_cirs[4];


void Nextion_Decoder(uint8_t cmd);
void Nextion_CommandSend(const char* cmd, size_t len);

void HMI_TouchEvent(uint8_t pageid, uint8_t compid, uint8_t event);



#endif /* NEXTION_H_INCLUDED */
