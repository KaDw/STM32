; generated by Component: ARM Compiler 5.06 update 1 (build 61) Tool: ArmCC [4d35ad]
; commandline ArmCC [--split_sections --debug -c --asm -o.\objects\main.o --depend=.\objects\main.d --cpu=Cortex-M3 --apcs=interwork -O0 --diag_suppress=9931 -ID:\ele\STM\STM32F103\Projects\ADC_REG\RTE -ID:\ele\STM\STM32F103\Projects\ADC_REG\RTE\Device\STM32F103C8 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F1xx_DFP\2.0.0\Device\Include -D__UVISION_VERSION=518 -D_RTE_ -DSTM32F10X_MD --omf_browse=.\objects\main.crf main.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.Blink||, CODE, READONLY, ALIGN=2

Blink PROC
        NOP      
|L1.2|
        LDR      r1,|L1.12|
        LDRH     r1,[r1,#0]  ; time
        CMP      r1,#0
        BNE      |L1.2|
        BX       lr
        ENDP

|L1.12|
        DCD      time

        AREA ||i.SysTick_Handler||, CODE, READONLY, ALIGN=1

SysTick_Handler PROC
        BX       lr
        ENDP


        AREA ||i.main||, CODE, READONLY, ALIGN=2

main PROC
        MOV      r0,#0x214
        LDR      r1,|L3.204|
        STR      r0,[r1,#0x18]
        MOVS     r2,#2
        LSLS     r1,r2,#12
        LDR      r0,|L3.208|
        BL       GpioConfig
        MOVS     r2,#0
        MOVS     r1,#1
        LDR      r0,|L3.212|
        BL       GpioConfig
        MOV      r0,#0xf001
        LDR      r1,|L3.216|
        STR      r0,[r1,#0]
        LDR      r0,|L3.220|
        LDR      r1,|L3.224|
        STR      r0,[r1,#0]  ; delay
        B        |L3.54|
|L3.44|
        LDR      r0,|L3.224|
        LDR      r0,[r0,#0]  ; delay
        SUBS     r0,r0,#1
        LDR      r1,|L3.224|
        STR      r0,[r1,#0]  ; delay
|L3.54|
        LDR      r0,|L3.224|
        LDR      r0,[r0,#0]  ; delay
        CMP      r0,#0
        BNE      |L3.44|
        LDR      r1,|L3.228|
        SUBS     r0,r1,#1
        CMP      r0,#0x1000000
        BCC      |L3.74|
        B        |L3.130|
|L3.74|
        SUBS     r0,r1,#1
        MOV      r2,#0xe000e000
        STR      r0,[r2,#0x14]
        ASRS     r0,r2,#29
        MOVS     r2,#0xf
        CMP      r0,#0
        BGE      |L3.106|
        LSLS     r3,r2,#28
        LSRS     r5,r3,#24
        LDR      r3,|L3.232|
        AND      r4,r0,#0xf
        SUBS     r4,r4,#4
        STRB     r5,[r3,r4]
        B        |L3.114|
|L3.106|
        LSLS     r3,r2,#28
        LSRS     r4,r3,#24
        LDR      r3,|L3.236|
        STRB     r4,[r3,r0]
|L3.114|
        NOP      
        MOVS     r0,#0
        MOV      r2,#0xe000e000
        STR      r0,[r2,#0x18]
        MOVS     r0,#7
        STR      r0,[r2,#0x10]
        NOP      
|L3.130|
        B        |L3.200|
|L3.132|
        MOV      r0,#0x2000
        LDR      r1,|L3.208|
        STR      r0,[r1,#0x10]
        LDR      r0,|L3.240|
        LDR      r1,|L3.224|
        STR      r0,[r1,#0]  ; delay
        B        |L3.158|
|L3.148|
        LDR      r0,|L3.224|
        LDR      r0,[r0,#0]  ; delay
        SUBS     r0,r0,#1
        LDR      r1,|L3.224|
        STR      r0,[r1,#0]  ; delay
|L3.158|
        LDR      r0,|L3.224|
        LDR      r0,[r0,#0]  ; delay
        CMP      r0,#0
        BNE      |L3.148|
        MOV      r0,#0x20000000
        LDR      r1,|L3.208|
        STR      r0,[r1,#0x10]
        LDR      r0,|L3.240|
        LDR      r1,|L3.224|
        STR      r0,[r1,#0]  ; delay
        B        |L3.192|
|L3.182|
        LDR      r0,|L3.224|
        LDR      r0,[r0,#0]  ; delay
        SUBS     r0,r0,#1
        LDR      r1,|L3.224|
        STR      r0,[r1,#0]  ; delay
|L3.192|
        LDR      r0,|L3.224|
        LDR      r0,[r0,#0]  ; delay
        CMP      r0,#0
        BNE      |L3.182|
|L3.200|
        B        |L3.132|
        ENDP

        DCW      0x0000
|L3.204|
        DCD      0x40021000
|L3.208|
        DCD      0x40011000
|L3.212|
        DCD      0x40010800
|L3.216|
        DCD      0x40012408
|L3.220|
        DCD      0x000186a0
|L3.224|
        DCD      delay
|L3.228|
        DCD      0x003d0900
|L3.232|
        DCD      0xe000ed18
|L3.236|
        DCD      0xe000e400
|L3.240|
        DCD      0x000f4240

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.data||, DATA, ALIGN=2

time
        DCB      0x00,0x00,0x00,0x00
delay
        DCD      0x00000000
test
        DCD      0x00000000
adc_read
        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "main.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___6_main_c_main____REV16|
#line 388 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.5.0\\CMSIS\\Include\\cmsis_armcc.h"
|__asm___6_main_c_main____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___6_main_c_main____REVSH|
#line 402
|__asm___6_main_c_main____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___6_main_c_main____RRX|
#line 587
|__asm___6_main_c_main____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

__ARM_use_no_argv EQU 0

        EXPORT __ARM_use_no_argv
        EXPORT Blink [CODE]
        EXPORT SysTick_Handler [CODE]
        EXPORT main [CODE]
        EXPORT time [DATA,SIZE=2]
        EXPORT delay [DATA,SIZE=4]
        EXPORT test [DATA,SIZE=4]
        EXPORT adc_read [DATA,SIZE=4]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT GpioConfig [CODE]

        ATTR FILESCOPE
        ATTR SETVALUE Tag_ABI_PCS_wchar_t,2
        ATTR SETVALUE Tag_ABI_enum_size,1
        ATTR SETVALUE Tag_ABI_optimization_goals,6
        ATTR SETSTRING Tag_conformance,"2.06"
        ATTR SETVALUE AV,18,1

        ASSERT {ENDIAN} = "little"
        ASSERT {INTER} = {TRUE}
        ASSERT {ROPI} = {FALSE}
        ASSERT {RWPI} = {FALSE}
        ASSERT {IEEE_FULL} = {FALSE}
        ASSERT {IEEE_PART} = {FALSE}
        ASSERT {IEEE_JAVA} = {FALSE}
        END
