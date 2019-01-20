/******************************************************************************
* Project Name		: Stepper Motor Control
* File Name			: user_mb_app.h
* Version 			: 1.0
* Device Used		: STM32F051C8T6
* Software Used		: EmBitz 1.11
* Compiler    		: ARM GCC Compiller (EmBitz - bare -metal)
* Related Hardware	:
*
* Owner             : Ventmatika Inc.
*******************************************************************************/

#ifndef	USER_APP
#define USER_APP
/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mbconfig.h"

/* -----------------------Slave Defines -------------------------------------*/
#define     DISCRETE_INPUT_START        0
#define     DISCRETE_INPUT_NDISCRETES   32
#define     COIL_START                  0
#define     COIL_NCOILS                 32
#define     REG_INPUT_START             0
#define     REG_INPUT_NREGS             16
#define     REG_HOLDING_START           0
#define     REG_HOLDING_NREGS           16


/* COILS */
#define     CO_RELAY_ON                 ( 5u )

/* DESCREETS */
//#define     DI_TH_WRN_ALARM             ( 1u )
//#define     DI_TH_SHUTDOWN_ALARM        ( 2u )

/* INPUTS */
#define     IR_LAST_FAULT            ( 1u )

/* HOLDINGS */
#define     HR_MBADDR                   4
#define     HR_MBPARITY                 5
#define     HR_MBBAUDRATE               6
#define     HR_MBSTOPBITS               7
#define     HR_WTIME_LO                 8
#define     HR_WTIME_HI                 9


/* daugiafunkcinis registras:
0xABBA - nuresetinam WTIME
0x18C9 - System Reset
0x
 */
#define     HR_MAGIC_REG                ( 15u )     // 0x31h


/* extern data */
extern UCHAR    ucDiscInputBuf[];
extern UCHAR    ucCoilBuf[];
extern USHORT   usRegInputBuf[];
extern uint16_t*   ptrInputRegs;
extern USHORT   usRegHoldingBuf[];
extern uint16_t*   ptrHoldingRegs;

extern uint8_t  ucSlaveIdBuf[];



uint8_t xMbGetCoil( uint16_t usBitOffset );
void xMbSetCoil( uint16_t usBitOffset, uint8_t ucValue );
uint8_t xMbGetDInput( uint16_t usBitOffset );
void xMbSetDInput( uint16_t usBitOffset, uint8_t ucValue );

uint8_t xMbGetNCoils( uint16_t usBitOffset, uint8_t ucNBits );
void xMbSetNCoils( uint16_t usBitOffset, uint8_t ucNBits, uint8_t ucValue );
uint8_t xMbGetNDInputs( uint16_t usBitOffset, uint8_t ucNBits );
void xMbSetNDInputs( uint16_t usBitOffset, uint8_t ucNBits, uint8_t ucValue );


#endif
