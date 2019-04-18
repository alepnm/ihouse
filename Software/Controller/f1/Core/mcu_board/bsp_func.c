#include "defs.h"
#include "bsp_func.h"




/*  */
void Delay_ms(uint32_t delay) {

    LL_RCC_ClocksTypeDef RCC_Clocks;

    LL_RCC_GetSystemClocksFreq(&RCC_Clocks);

    uint32_t nCount = (RCC_Clocks.SYSCLK_Frequency/14000)*delay;

    while(nCount-- > 0);
}


/**
 * hex2int
 * take a hex string and convert it to a 32bit number (max 8 hex digits)
 */
uint32_t hex2int(char *hex) {

    uint32_t val = 0;

    while ( *hex ) {

        if( *hex == 0x0d || *hex == 0x0a ) break;

        // get current character then increment
        uint8_t byte = *hex++;

        // transform hex character to the 4bit equivalent number, using the ascii table indexes
        if (byte >= '0' && byte <= '9') byte = byte - '0';
        else if (byte >= 'a' && byte <='f') byte = byte - 'a' + 10;
        else if (byte >= 'A' && byte <='F') byte = byte - 'A' + 10;

        // shift 4 to make space for new digit, and add the 4 bits of the new digit
        val = (val << 4) | (byte & 0xF);
    }

    return val;
}


/*
* function to reverse a string
*/
void str_reverse(char *str, int len) {

    int start, end;
    char temp;

    for(start=0, end=len-1; start < end; start++, end--) {
        temp = *(str+start);
        *(str+start) = *(str+end);
        *(str+end) = temp;
    }
}


/*  */
int fun_itoa(char* str, int num, int base) {

    int i = 0;
    bool isNegative = false;

    /* A zero is same "0" string in all base */
    if (num == 0) {
        str[i] = '0';
        str[i + 1] = '0';
        return i;
    }

    if (num < 0 && base == 10) {
        isNegative = true;
        num = -num;
    }

    while (num != 0) {

        int rem = num % base;

        str[i++] = (rem > 9)? (rem-10) + 'A' : rem + '0';
        num = num/base;
    }

    if (isNegative) {
        str[i++] = '-';
    }

    str[i] = '\0';

    str_reverse(str, i);

    return i;
}
