#ifndef _CASPIC_H_
#warning Header file cas16f877a.h included directly. Including <caspic.h> instead
#include <caspic.h>
#else
#ifndef _CAS16F877A_H_
#define _CAS16F877A_H_

INDF                                   equ 0000h
TMR0                                   equ 0001h
PCL                                    equ 0002h
STATUS                                 equ 0003h
#define CARRY_bit                      BANKMASK(STATUS), 0
#define DC_bit                         BANKMASK(STATUS), 1
#define ZERO_bit                       BANKMASK(STATUS), 2
#define nPD_bit                        BANKMASK(STATUS), 3
#define nTO_bit                        BANKMASK(STATUS), 4
#define IRP_bit                        BANKMASK(STATUS), 7
#define RP0_bit                        BANKMASK(STATUS), 5
#define RP1_bit                        BANKMASK(STATUS), 6
#ifndef _LIB_BUILD
#endif
FSR                                    equ 0004h
PORTA                                  equ 0005h
#define RA0_bit                        BANKMASK(PORTA), 0
#define RA1_bit                        BANKMASK(PORTA), 1
#define RA2_bit                        BANKMASK(PORTA), 2
#define RA3_bit                        BANKMASK(PORTA), 3
#define RA4_bit                        BANKMASK(PORTA), 4
#define RA5_bit                        BANKMASK(PORTA), 5
#ifndef _LIB_BUILD
#endif
PORTB                                  equ 0006h
#define RB0_bit                        BANKMASK(PORTB), 0
#define RB1_bit                        BANKMASK(PORTB), 1
#define RB2_bit                        BANKMASK(PORTB), 2
#define RB3_bit                        BANKMASK(PORTB), 3
#define RB4_bit                        BANKMASK(PORTB), 4
#define RB5_bit                        BANKMASK(PORTB), 5
#define RB6_bit                        BANKMASK(PORTB), 6
#define RB7_bit                        BANKMASK(PORTB), 7
#ifndef _LIB_BUILD
#endif
PORTC                                  equ 0007h
#define RC0_bit                        BANKMASK(PORTC), 0
#define RC1_bit                        BANKMASK(PORTC), 1
#define RC2_bit                        BANKMASK(PORTC), 2
#define RC3_bit                        BANKMASK(PORTC), 3
#define RC4_bit                        BANKMASK(PORTC), 4
#define RC5_bit                        BANKMASK(PORTC), 5
#define RC6_bit                        BANKMASK(PORTC), 6
#define RC7_bit                        BANKMASK(PORTC), 7
#ifndef _LIB_BUILD
#endif
PORTD                                  equ 0008h
#define RD0_bit                        BANKMASK(PORTD), 0
#define RD1_bit                        BANKMASK(PORTD), 1
#define RD2_bit                        BANKMASK(PORTD), 2
#define RD3_bit                        BANKMASK(PORTD), 3
#define RD4_bit                        BANKMASK(PORTD), 4
#define RD5_bit                        BANKMASK(PORTD), 5
#define RD6_bit                        BANKMASK(PORTD), 6
#define RD7_bit                        BANKMASK(PORTD), 7
#ifndef _LIB_BUILD
#endif
PORTE                                  equ 0009h
#define RE0_bit                        BANKMASK(PORTE), 0
#define RE1_bit                        BANKMASK(PORTE), 1
#define RE2_bit                        BANKMASK(PORTE), 2
#ifndef _LIB_BUILD
#endif
PCLATH                                 equ 000Ah
#ifndef _LIB_BUILD
#endif
INTCON                                 equ 000Bh
#define RBIF_bit                       BANKMASK(INTCON), 0
#define INTF_bit                       BANKMASK(INTCON), 1
#define TMR0IF_bit                     BANKMASK(INTCON), 2
#define RBIE_bit                       BANKMASK(INTCON), 3
#define INTE_bit                       BANKMASK(INTCON), 4
#define TMR0IE_bit                     BANKMASK(INTCON), 5
#define PEIE_bit                       BANKMASK(INTCON), 6
#define GIE_bit                        BANKMASK(INTCON), 7
#define T0IF_bit                       BANKMASK(INTCON), 2
#define T0IE_bit                       BANKMASK(INTCON), 5
#ifndef _LIB_BUILD
#endif
PIR1                                   equ 000Ch
#define TMR1IF_bit                     BANKMASK(PIR1), 0
#define TMR2IF_bit                     BANKMASK(PIR1), 1
#define CCP1IF_bit                     BANKMASK(PIR1), 2
#define SSPIF_bit                      BANKMASK(PIR1), 3
#define TXIF_bit                       BANKMASK(PIR1), 4
#define RCIF_bit                       BANKMASK(PIR1), 5
#define ADIF_bit                       BANKMASK(PIR1), 6
#define PSPIF_bit                      BANKMASK(PIR1), 7
#ifndef _LIB_BUILD
#endif
PIR2                                   equ 000Dh
#define CCP2IF_bit                     BANKMASK(PIR2), 0
#define BCLIF_bit                      BANKMASK(PIR2), 3
#define EEIF_bit                       BANKMASK(PIR2), 4
#define CMIF_bit                       BANKMASK(PIR2), 6
#ifndef _LIB_BUILD
#endif
TMR1L                                  equ 000Eh
TMR1H                                  equ 000Fh
T1CON                                  equ 0010h
#define TMR1ON_bit                     BANKMASK(T1CON), 0
#define TMR1CS_bit                     BANKMASK(T1CON), 1
#define nT1SYNC_bit                    BANKMASK(T1CON), 2
#define T1OSCEN_bit                    BANKMASK(T1CON), 3
#define T1SYNC_bit                     BANKMASK(T1CON), 2
#define T1CKPS0_bit                    BANKMASK(T1CON), 4
#define T1CKPS1_bit                    BANKMASK(T1CON), 5
#define T1INSYNC_bit                   BANKMASK(T1CON), 2
#ifndef _LIB_BUILD
#endif
TMR2                                   equ 0011h
T2CON                                  equ 0012h
#define TMR2ON_bit                     BANKMASK(T2CON), 2
#define T2CKPS0_bit                    BANKMASK(T2CON), 0
#define T2CKPS1_bit                    BANKMASK(T2CON), 1
#define TOUTPS0_bit                    BANKMASK(T2CON), 3
#define TOUTPS1_bit                    BANKMASK(T2CON), 4
#define TOUTPS2_bit                    BANKMASK(T2CON), 5
#define TOUTPS3_bit                    BANKMASK(T2CON), 6
#ifndef _LIB_BUILD
#endif
SSPBUF                                 equ 0013h
SSPCON                                 equ 0014h
#define CKP_bit                        BANKMASK(SSPCON), 4
#define SSPEN_bit                      BANKMASK(SSPCON), 5
#define SSPOV_bit                      BANKMASK(SSPCON), 6
#define WCOL_bit                       BANKMASK(SSPCON), 7
#define SSPM0_bit                      BANKMASK(SSPCON), 0
#define SSPM1_bit                      BANKMASK(SSPCON), 1
#define SSPM2_bit                      BANKMASK(SSPCON), 2
#define SSPM3_bit                      BANKMASK(SSPCON), 3
#ifndef _LIB_BUILD
#endif
CCPR1L                                 equ 0015h
CCPR1H                                 equ 0016h
CCP1CON                                equ 0017h
#define CCP1Y_bit                      BANKMASK(CCP1CON), 4
#define CCP1X_bit                      BANKMASK(CCP1CON), 5
#define CCP1M0_bit                     BANKMASK(CCP1CON), 0
#define CCP1M1_bit                     BANKMASK(CCP1CON), 1
#define CCP1M2_bit                     BANKMASK(CCP1CON), 2
#define CCP1M3_bit                     BANKMASK(CCP1CON), 3
#ifndef _LIB_BUILD
#endif
RCSTA                                  equ 0018h
#define RX9D_bit                       BANKMASK(RCSTA), 0
#define OERR_bit                       BANKMASK(RCSTA), 1
#define FERR_bit                       BANKMASK(RCSTA), 2
#define ADDEN_bit                      BANKMASK(RCSTA), 3
#define CREN_bit                       BANKMASK(RCSTA), 4
#define SREN_bit                       BANKMASK(RCSTA), 5
#define RX9_bit                        BANKMASK(RCSTA), 6
#define SPEN_bit                       BANKMASK(RCSTA), 7
#define RCD8_bit                       BANKMASK(RCSTA), 0
#define RC9_bit                        BANKMASK(RCSTA), 6
#define nRC8_bit                       BANKMASK(RCSTA), 6
#define RC8_9_bit                      BANKMASK(RCSTA), 6
#ifndef _LIB_BUILD
#endif
TXREG                                  equ 0019h
RCREG                                  equ 001Ah
CCPR2L                                 equ 001Bh
CCPR2H                                 equ 001Ch
CCP2CON                                equ 001Dh
#define CCP2Y_bit                      BANKMASK(CCP2CON), 4
#define CCP2X_bit                      BANKMASK(CCP2CON), 5
#define CCP2M0_bit                     BANKMASK(CCP2CON), 0
#define CCP2M1_bit                     BANKMASK(CCP2CON), 1
#define CCP2M2_bit                     BANKMASK(CCP2CON), 2
#define CCP2M3_bit                     BANKMASK(CCP2CON), 3
#ifndef _LIB_BUILD
#endif
ADRESH                                 equ 001Eh
ADCON0                                 equ 001Fh
#define ADON_bit                       BANKMASK(ADCON0), 0
#define GO_nDONE_bit                   BANKMASK(ADCON0), 2
#define GO_bit                         BANKMASK(ADCON0), 2
#define CHS0_bit                       BANKMASK(ADCON0), 3
#define CHS1_bit                       BANKMASK(ADCON0), 4
#define CHS2_bit                       BANKMASK(ADCON0), 5
#define ADCS0_bit                      BANKMASK(ADCON0), 6
#define ADCS1_bit                      BANKMASK(ADCON0), 7
#define nDONE_bit                      BANKMASK(ADCON0), 2
#define GO_DONE_bit                    BANKMASK(ADCON0), 2
#ifndef _LIB_BUILD
#endif
OPTION_REG                             equ 0081h
#define PSA_bit                        BANKMASK(OPTION_REG), 3
#define T0SE_bit                       BANKMASK(OPTION_REG), 4
#define T0CS_bit                       BANKMASK(OPTION_REG), 5
#define INTEDG_bit                     BANKMASK(OPTION_REG), 6
#define nRBPU_bit                      BANKMASK(OPTION_REG), 7
#define PS0_bit                        BANKMASK(OPTION_REG), 0
#define PS1_bit                        BANKMASK(OPTION_REG), 1
#define PS2_bit                        BANKMASK(OPTION_REG), 2
#ifndef _LIB_BUILD
#endif
TRISA                                  equ 0085h
#define TRISA0_bit                     BANKMASK(TRISA), 0
#define TRISA1_bit                     BANKMASK(TRISA), 1
#define TRISA2_bit                     BANKMASK(TRISA), 2
#define TRISA3_bit                     BANKMASK(TRISA), 3
#define TRISA4_bit                     BANKMASK(TRISA), 4
#define TRISA5_bit                     BANKMASK(TRISA), 5
#ifndef _LIB_BUILD
#endif
TRISB                                  equ 0086h
#define TRISB0_bit                     BANKMASK(TRISB), 0
#define TRISB1_bit                     BANKMASK(TRISB), 1
#define TRISB2_bit                     BANKMASK(TRISB), 2
#define TRISB3_bit                     BANKMASK(TRISB), 3
#define TRISB4_bit                     BANKMASK(TRISB), 4
#define TRISB5_bit                     BANKMASK(TRISB), 5
#define TRISB6_bit                     BANKMASK(TRISB), 6
#define TRISB7_bit                     BANKMASK(TRISB), 7
#ifndef _LIB_BUILD
#endif
TRISC                                  equ 0087h
#define TRISC0_bit                     BANKMASK(TRISC), 0
#define TRISC1_bit                     BANKMASK(TRISC), 1
#define TRISC2_bit                     BANKMASK(TRISC), 2
#define TRISC3_bit                     BANKMASK(TRISC), 3
#define TRISC4_bit                     BANKMASK(TRISC), 4
#define TRISC5_bit                     BANKMASK(TRISC), 5
#define TRISC6_bit                     BANKMASK(TRISC), 6
#define TRISC7_bit                     BANKMASK(TRISC), 7
#ifndef _LIB_BUILD
#endif
TRISD                                  equ 0088h
#define TRISD0_bit                     BANKMASK(TRISD), 0
#define TRISD1_bit                     BANKMASK(TRISD), 1
#define TRISD2_bit                     BANKMASK(TRISD), 2
#define TRISD3_bit                     BANKMASK(TRISD), 3
#define TRISD4_bit                     BANKMASK(TRISD), 4
#define TRISD5_bit                     BANKMASK(TRISD), 5
#define TRISD6_bit                     BANKMASK(TRISD), 6
#define TRISD7_bit                     BANKMASK(TRISD), 7
#ifndef _LIB_BUILD
#endif
TRISE                                  equ 0089h
#define TRISE0_bit                     BANKMASK(TRISE), 0
#define TRISE1_bit                     BANKMASK(TRISE), 1
#define TRISE2_bit                     BANKMASK(TRISE), 2
#define PSPMODE_bit                    BANKMASK(TRISE), 4
#define IBOV_bit                       BANKMASK(TRISE), 5
#define OBF_bit                        BANKMASK(TRISE), 6
#define IBF_bit                        BANKMASK(TRISE), 7
#ifndef _LIB_BUILD
#endif
PIE1                                   equ 008Ch
#define TMR1IE_bit                     BANKMASK(PIE1), 0
#define TMR2IE_bit                     BANKMASK(PIE1), 1
#define CCP1IE_bit                     BANKMASK(PIE1), 2
#define SSPIE_bit                      BANKMASK(PIE1), 3
#define TXIE_bit                       BANKMASK(PIE1), 4
#define RCIE_bit                       BANKMASK(PIE1), 5
#define ADIE_bit                       BANKMASK(PIE1), 6
#define PSPIE_bit                      BANKMASK(PIE1), 7
#ifndef _LIB_BUILD
#endif
PIE2                                   equ 008Dh
#define CCP2IE_bit                     BANKMASK(PIE2), 0
#define BCLIE_bit                      BANKMASK(PIE2), 3
#define EEIE_bit                       BANKMASK(PIE2), 4
#define CMIE_bit                       BANKMASK(PIE2), 6
#ifndef _LIB_BUILD
#endif
PCON                                   equ 008Eh
#define nBOR_bit                       BANKMASK(PCON), 0
#define nPOR_bit                       BANKMASK(PCON), 1
#define nBO_bit                        BANKMASK(PCON), 0
#ifndef _LIB_BUILD
#endif
SSPCON2                                equ 0091h
#define SEN_bit                        BANKMASK(SSPCON2), 0
#define RSEN_bit                       BANKMASK(SSPCON2), 1
#define PEN_bit                        BANKMASK(SSPCON2), 2
#define RCEN_bit                       BANKMASK(SSPCON2), 3
#define ACKEN_bit                      BANKMASK(SSPCON2), 4
#define ACKDT_bit                      BANKMASK(SSPCON2), 5
#define ACKSTAT_bit                    BANKMASK(SSPCON2), 6
#define GCEN_bit                       BANKMASK(SSPCON2), 7
#ifndef _LIB_BUILD
#endif
PR2                                    equ 0092h
SSPADD                                 equ 0093h
SSPSTAT                                equ 0094h
#define BF_bit                         BANKMASK(SSPSTAT), 0
#define UA_bit                         BANKMASK(SSPSTAT), 1
#define R_nW_bit                       BANKMASK(SSPSTAT), 2
#define S_bit                          BANKMASK(SSPSTAT), 3
#define P_bit                          BANKMASK(SSPSTAT), 4
#define D_nA_bit                       BANKMASK(SSPSTAT), 5
#define CKE_bit                        BANKMASK(SSPSTAT), 6
#define SMP_bit                        BANKMASK(SSPSTAT), 7
#define R_bit                          BANKMASK(SSPSTAT), 2
#define D_bit                          BANKMASK(SSPSTAT), 5
#define I2C_READ_bit                   BANKMASK(SSPSTAT), 2
#define I2C_START_bit                  BANKMASK(SSPSTAT), 3
#define I2C_STOP_bit                   BANKMASK(SSPSTAT), 4
#define I2C_DATA_bit                   BANKMASK(SSPSTAT), 5
#define nW_bit                         BANKMASK(SSPSTAT), 2
#define nA_bit                         BANKMASK(SSPSTAT), 5
#define nWRITE_bit                     BANKMASK(SSPSTAT), 2
#define nADDRESS_bit                   BANKMASK(SSPSTAT), 5
#define R_W_bit                        BANKMASK(SSPSTAT), 2
#define D_A_bit                        BANKMASK(SSPSTAT), 5
#define READ_WRITE_bit                 BANKMASK(SSPSTAT), 2
#define DATA_ADDRESS_bit               BANKMASK(SSPSTAT), 5
#ifndef _LIB_BUILD
#endif
TXSTA                                  equ 0098h
#define TX9D_bit                       BANKMASK(TXSTA), 0
#define TRMT_bit                       BANKMASK(TXSTA), 1
#define BRGH_bit                       BANKMASK(TXSTA), 2
#define SYNC_bit                       BANKMASK(TXSTA), 4
#define TXEN_bit                       BANKMASK(TXSTA), 5
#define TX9_bit                        BANKMASK(TXSTA), 6
#define CSRC_bit                       BANKMASK(TXSTA), 7
#define TXD8_bit                       BANKMASK(TXSTA), 0
#define nTX8_bit                       BANKMASK(TXSTA), 6
#define TX8_9_bit                      BANKMASK(TXSTA), 6
#ifndef _LIB_BUILD
#endif
SPBRG                                  equ 0099h
CMCON                                  equ 009Ch
#define CIS_bit                        BANKMASK(CMCON), 3
#define C1INV_bit                      BANKMASK(CMCON), 4
#define C2INV_bit                      BANKMASK(CMCON), 5
#define C1OUT_bit                      BANKMASK(CMCON), 6
#define C2OUT_bit                      BANKMASK(CMCON), 7
#define CM0_bit                        BANKMASK(CMCON), 0
#define CM1_bit                        BANKMASK(CMCON), 1
#define CM2_bit                        BANKMASK(CMCON), 2
#ifndef _LIB_BUILD
#endif
CVRCON                                 equ 009Dh
#define CVRR_bit                       BANKMASK(CVRCON), 5
#define CVROE_bit                      BANKMASK(CVRCON), 6
#define CVREN_bit                      BANKMASK(CVRCON), 7
#define CVR0_bit                       BANKMASK(CVRCON), 0
#define CVR1_bit                       BANKMASK(CVRCON), 1
#define CVR2_bit                       BANKMASK(CVRCON), 2
#define CVR3_bit                       BANKMASK(CVRCON), 3
#ifndef _LIB_BUILD
#endif
ADRESL                                 equ 009Eh
ADCON1                                 equ 009Fh
#define ADCS2_bit                      BANKMASK(ADCON1), 6
#define ADFM_bit                       BANKMASK(ADCON1), 7
#define PCFG0_bit                      BANKMASK(ADCON1), 0
#define PCFG1_bit                      BANKMASK(ADCON1), 1
#define PCFG2_bit                      BANKMASK(ADCON1), 2
#define PCFG3_bit                      BANKMASK(ADCON1), 3
#ifndef _LIB_BUILD
#endif
EEDATA                                 equ 010Ch
EEADR                                  equ 010Dh
EEDATH                                 equ 010Eh
#ifndef _LIB_BUILD
#endif
EEADRH                                 equ 010Fh
#ifndef _LIB_BUILD
#endif
EECON1                                 equ 018Ch
#define RD_bit                         BANKMASK(EECON1), 0
#define WR_bit                         BANKMASK(EECON1), 1
#define WREN_bit                       BANKMASK(EECON1), 2
#define WRERR_bit                      BANKMASK(EECON1), 3
#define EEPGD_bit                      BANKMASK(EECON1), 7
#ifndef _LIB_BUILD
#endif
EECON2                                 equ 018Dh

#endif
#endif
