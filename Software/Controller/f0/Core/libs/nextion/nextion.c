
#include "nextion.h"
#include "unicon.h"
//#include "str_functions.h"

#define NEXTION_ENHANCED

#define NEX_INVALID_INSTRUCTION         0x00
#define NEX_SUCCESSFUL_EXECUTE          0x01
#define NEX_COMPONENTID_INVALID         0x02
#define NEX_PAGEID_INVALID              0x03
#define NEX_PICTUREID_INVALID           0x04
#define NEX_FONTID_INVALID              0x05
#define NEX_BAUDERATE_INVALID           0x11
#define NEX_CURVE_CONTROL_ID_INVALID    0x12
#define NEX_VARIABLE_NAME_INVALID       0x1A
#define NEX_VARIABLE_OPERATION_INVALID  0x1B
#define NEX_FILED_TO_ASSIGN             0x1C
#define NEX_OPERATE_EEPROM_FILED        0x1D
#define NEX_PARAMETER_QUANTITY_INVALID  0x1E
#define NEX_IO_OPERATION_FILED          0x1F
#define NEX_UNDEF_ESCAPE_CHARACTERS     0x20
#define NEX_TOO_LONG_VAR_NAME           0x23

#define NEX_TOUCH_EVENT_DATA            0x65
#define NEX_CURRENT_PAGEID_NUMBER       0x66
#define NEX_TOUCH_COORDINATE            0x67
#define NEX_TOUCH_EVENT_IN_SLEEP_MODE   0x68
#define NEX_STRING_VARIABLE_DATA        0x70
#define NEX_NUMERIC_VARIABLE_DATA       0x71
#define NEX_DEV_IN_SLEEP_MODE           0x86
#define NEX_DEV_WAKEUP                  0x87
#define NEX_SYSTEM_SUCCESS_START        0x88
#define NEX_START_SDCARD_UPGRADE        0x89
#define NEX_DATA_TRANSMIT_FINISHED      0xFD
#define NEX_DATA_TRANSMIT_READY         0xFE

#define NEX_COLOR_RED                   0xF800
#define NEX_COLOR_BLUE                  0x001F
#define NEX_COLOR_GREY                  0x8430
#define NEX_COLOR_BLACK                 0x0000
#define NEX_COLOR_WHITE                 0xFFFF
#define NEX_COLOR_GREEN                 0x07E0
#define NEX_COLOR_BROWN                 0xBC40
#define NEX_COLOR_YELLOW                0xFFE0


char cmd_buf[32];

HMI_TypeDef Nextion;

/* Nextion system variables */
const char var_dim[]                = "dim";
const char var_dims[]               = "dims";
const char var_baud[]               = "baud";
const char var_bauds[]              = "bauds";
const char var_spax[]               = "spax";
const char var_spay[]               = "spay";
const char var_thc[]                = "thc";
const char var_thdra[]              = "thdra";
const char var_ussp[]               = "ussp";
const char var_thsp[]               = "thsp";
const char var_thup[]               = "thup";
const char var_sendxy[]             = "sendxy";
const char var_delay[]              = "delay";
const char var_sleep[]              = "sleep";
const char var_bkcmd[]              = "bkcmd";
const char var_rand[]               = "rand";
const char var_wup[]                = "wup";

#if defined(NEXTION_ENHANCED)
const char var_sys0[]               = "sys0";
const char var_sys1[]               = "sys1";
const char var_sys2[]               = "sys2";
const char var_rtc0[]               = "rtc0";
const char var_rtc1[]               = "rtc1";
const char var_rtc2[]               = "rtc2";
const char var_rtc3[]               = "rtc3";
const char var_rtc4[]               = "rtc4";
const char var_rtc5[]               = "rtc5";
const char var_rtc6[]               = "rtc6";
const char var_pio0[]               = "pio0";
const char var_pio1[]               = "pio1";
const char var_pio2[]               = "pio2";
const char var_pio3[]               = "pio3";
const char var_pio4[]               = "pio4";
const char var_pio5[]               = "pio5";
const char var_pio6[]               = "pio6";
const char var_pio7[]               = "pio7";
const char var_pwm4[]               = "pwm4";
const char var_pwm5[]               = "pwm5";
const char var_pwm6[]               = "pwm6";
const char var_pwmf[]               = "pwmf";
#endif


/* Nextion operation commands */
const char cmd_page[]               = "page";
const char cmd_ref[]                = "ref";
const char cmd_click[]              = "click";
const char cmd_ref_stop[]           = "ref_stop";
const char cmd_ref_star[]           = "ref_star";
const char cmd_get[]                = "get";
const char cmd_sendme[]             = "sendme";
const char cmd_cov[]                = "cov";
const char cmd_touch_j[]            = "touch_j";
const char cmd_substr[]             = "substr";
const char cmd_vis[]                = "vis";
const char cmd_tsw[]                = "tsw";
const char cmd_com_stop[]           = "com_stop";
const char cmd_com_star[]           = "com_star";
const char cmd_randset[]            = "randset";
const char cmd_code_c[]             = "code_c";
const char cmd_print[]              = "print";
const char cmd_printh[]             = "printh";
const char cmd_add[]                = "add";
const char cmd_addt[]               = "addt";
const char cmd_cle[]                = "cle";
const char cmd_rest[]               = "rest";
const char cmd_doevents[]           = "doevents";
const char cmd_strlen[]             = "strlen";
const char cmd_if[]                 = "if";
const char cmd_while[]              = "while";
const char cmd_for[]                = "for";

#if defined(NEXTION_ENHANCED)
const char cmd_repo[]               = "repo";
const char cmd_wepo[]               = "wepo";
const char cmd_wept[]               = "wept";
const char cmd_rept[]               = "rept";
const char cmd_cfgpio[]             = "cfgpio";
#endif

/*  Nextion GUI commands */
const char cmd_cls[]                = "cls";
const char cmd_pic[]                = "pic";
const char cmd_picq[]               = "picq";
const char cmd_xpic[]               = "xpic";
const char cmd_xstr[]               = "xstr";
const char cmd_fill[]               = "fill";
const char cmd_line[]               = "line";
const char cmd_draw[]               = "draw";
const char cmd_cir[]                = "cir";
const char cmd_cirs[]               = "cirs";



static void Nextion_SendParameter(const char* param, uint8_t size, uint32_t value, char delim);



/*  */
void NextionInit(void) {

    Nextion.DimValue = 50;

}




/* instrukciju dekoderis */
void Nextion_Decoder(uint8_t cmd) {

    switch(cmd) {
    case NEX_INVALID_INSTRUCTION:
        break;
    case NEX_SUCCESSFUL_EXECUTE:
        break;
    case NEX_COMPONENTID_INVALID:
        break;
    case NEX_TOUCH_EVENT_DATA:
        HMI_TouchEvent( *(ptrSecondaryRxBuffer+1), *(ptrSecondaryRxBuffer+2), *(ptrSecondaryRxBuffer+3) );
        break;
    case NEX_SYSTEM_SUCCESS_START:
        Nextion.SystemState = NEXTION_STATE_OK;
        break;
    case NEX_CURRENT_PAGEID_NUMBER:
        Nextion.CurrentPageID = *(ptrSecondaryRxBuffer+1);
        break;
    case NEX_START_SDCARD_UPGRADE:
        break;
    }

}



/*  */
void HMI_SetBaudrate(uint32_t value) {
    Nextion_SendParameter(var_baud, sizeof(var_baud), value, '=');
}

/*  */
void HMI_SetBkcmd(uint8_t value) {
    Nextion_SendParameter(var_bkcmd, sizeof(var_bkcmd), value, '=');
}

/*  */
void HMI_SetPage(uint8_t pageid) {
    Nextion_SendParameter(cmd_page, sizeof(cmd_page), pageid, ' ');
}

/*  */
void HMI_SwitchToMainScreen(void) {
    HMI_SetPage(0);
}

void HMI_SetVar(const char* var, uint8_t size, uint32_t value){
    Nextion_SendParameter(var, size, value, '=');
}









/*  */
void HMI_TouchEvent(uint8_t pageid, uint8_t compid, uint8_t event) {

    /* page0 komponentai */
    TouchTimeoutCounter = timestamp;

    if( pageid == W_PAPILDOMAI && compid == B_RESTART && event == HMI_TOUCH ) {
        Nextion.SystemState = NEXTION_STATE_RESTART;    // Restart system
        NVIC_SystemReset();
        while(1);
    }


}

/*  */
void HMI_GetDateTime(uint8_t* year, uint8_t* mon, uint8_t* day, uint8_t* hour, uint8_t* minute) {


}


/*  */
static void Nextion_SendParameter(const char* param, uint8_t size, uint32_t value, char delim){

    //char* cmd_buf = pvPortMalloc(32);

    uint8_t i = 0;

    while(i < size) {
        cmd_buf[i] = param[i];
        i++;
    }

    cmd_buf[i++] = delim;

//    i += fun_itoa(cmd_buf+i, value, 10);

    cmd_buf[i++] = 0xFF;
    cmd_buf[i++] = 0xFF;
    cmd_buf[i] = 0xFF;

    USART_Send( SECONDARY_PORT, cmd_buf, i+1 );

    //vPortFree(cmd_buf);

    //cmd_buf = NULL;
}



/*  */
void Nextion_SendText(const char* var, uint8_t var_size, const char* text, uint8_t text_size){

    uint8_t i = 0, j = 0;

    while(i < var_size) {
        cmd_buf[i] = var[i];
        i++;
    }

    cmd_buf[i++] = '=';
    cmd_buf[i++] = '"';

    while(j < text_size) {
        cmd_buf[i++] = text[j++];
    }

    cmd_buf[i++] = '"';

    cmd_buf[i++] = 0xFF;
    cmd_buf[i++] = 0xFF;
    cmd_buf[i] = 0xFF;

    USART_Send( SECONDARY_PORT, cmd_buf, i+1 );
}



/*  */
void Nextion_GetVar(const char* var, uint8_t size){

    uint8_t i = 0, j = 0;

    while(i < sizeof(cmd_get)) {
        cmd_buf[i] = cmd_get[i];
        i++;
    }

    cmd_buf[i++] = ' ';

    while(j < size) {
        cmd_buf[i++] = var[j];
        j++;
    }

    cmd_buf[i++] = 0xFF;
    cmd_buf[i++] = 0xFF;
    cmd_buf[i] = 0xFF;

    USART_Send( SECONDARY_PORT, cmd_buf, i+1 );
}
