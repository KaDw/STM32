; generated by Component: ARM Compiler 5.06 update 1 (build 61) Tool: ArmCC [4d35ad]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -o.\objects\main.o --depend=.\objects\main.d --cpu=Cortex-M3 --apcs=interwork -O3 --diag_suppress=9931 -ID:\ele\STM\STM32F103\Projects\SPI_REG\RTE -ID:\ele\STM\STM32F103\Projects\SPI_REG\RTE\Device\STM32F103C8 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F1xx_DFP\2.0.0\Device\Include -D__UVISION_VERSION=518 -D_RTE_ -DSTM32F10X_MD --omf_browse=.\objects\main.crf main.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.Blink||, CODE, READONLY, ALIGN=2

Blink PROC
        LDR      r0,|L1.12|
|L1.2|
        LDRH     r1,[r0,#0]  ; time
        CMP      r1,#0
        BNE      |L1.2|
        BX       lr
        ENDP

        DCW      0x0000
|L1.12|
        DCD      ||.data||

        AREA ||i.GpioInit||, CODE, READONLY, ALIGN=2

GpioInit PROC
        PUSH     {r4,lr}
        MOVS     r2,#2
        LSLS     r1,r2,#12
        LDR      r0,|L2.20|
        BL       GpioConfig
        LDR      r1,|L2.24|
        MOVS     r0,#0x10
        STR      r0,[r1,#0x18]
        POP      {r4,pc}
        ENDP

|L2.20|
        DCD      0x40011000
|L2.24|
        DCD      0x40021000

        AREA ||i.main||, CODE, READONLY, ALIGN=2

main PROC
        BL       SpiInit
        LDR      r5,|L3.52|
        LDR      r4,|L3.56|
|L3.8|
        BL       CS_LOW
        MOVS     r1,#1
        MOVS     r0,#0xc
        BL       SpiTransmit
        MOVS     r1,#6
        MOVS     r0,#0xff
        BL       SpiTransmit
        STRH     r0,[r4,#2]
        BL       CS_HIGH
        STR      r5,[r4,#4]  ; delay
        B        |L3.44|
|L3.38|
        LDR      r0,[r4,#4]  ; delay
        SUBS     r0,r0,#1
        STR      r0,[r4,#4]  ; delay
|L3.44|
        LDR      r0,[r4,#4]  ; delay
        CMP      r0,#0
        BEQ      |L3.8|
        B        |L3.38|
        ENDP

|L3.52|
        DCD      0x000f4240
|L3.56|
        DCD      ||.data||

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.data||, DATA, ALIGN=2

time
        DCB      0x00,0x00
buf
        DCB      0x00,0x00
delay
        DCD      0x00000000

        AREA ||area_number.7||, DATA, ALIGN=2

        EXPORTAS ||area_number.7||, ||.data||
test
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
        EXPORT GpioInit [CODE]
        EXPORT main [CODE]
        EXPORT time [DATA,SIZE=2]
        EXPORT buf [DATA,SIZE=2]
        EXPORT delay [DATA,SIZE=4]
        EXPORT test [DATA,SIZE=4]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT SpiInit [CODE]
        IMPORT CS_LOW [CODE]
        IMPORT SpiTransmit [CODE]
        IMPORT CS_HIGH [CODE]
        IMPORT GpioConfig [CODE]

        ATTR FILESCOPE
        ATTR SETVALUE Tag_ABI_PCS_wchar_t,2
        ATTR SETVALUE Tag_ABI_enum_size,1
        ATTR SETVALUE Tag_ABI_optimization_goals,3
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
