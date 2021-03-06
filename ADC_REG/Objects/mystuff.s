; generated by Component: ARM Compiler 5.06 update 1 (build 61) Tool: ArmCC [4d35ad]
; commandline ArmCC [--split_sections --debug -c --asm -o.\objects\mystuff.o --depend=.\objects\mystuff.d --cpu=Cortex-M3 --apcs=interwork -O0 --diag_suppress=9931 -ID:\ele\STM\STM32F103\Projects\ADC_REG\RTE -ID:\ele\STM\STM32F103\Projects\ADC_REG\RTE\Device\STM32F103C8 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F1xx_DFP\2.0.0\Device\Include -D__UVISION_VERSION=518 -D_RTE_ -DSTM32F10X_MD --omf_browse=.\objects\mystuff.crf mystuff.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.GpioConfig||, CODE, READONLY, ALIGN=1

GpioConfig PROC
        PUSH     {r4-r6,lr}
        MOV      r5,r2
        MOVS     r4,#0
        B        |L1.12|
|L1.8|
        ADDS     r6,r4,#4
        UXTH     r4,r6
|L1.12|
        ASRS     r6,r1,#1
        SUBS     r1,r6,#0
        BNE      |L1.8|
        MOV      r1,r4
        MOV      r2,r0
        CMP      r1,#0x1c
        BLE      |L1.34|
        SUB      r6,r1,#0x20
        UXTH     r1,r6
        ADDS     r2,r0,#4
|L1.34|
        LDR      r3,[r2,#0]
        MOVS     r6,#0xf
        LSLS     r6,r6,r1
        BICS     r3,r3,r6
        LSL      r6,r5,r1
        ORRS     r3,r3,r6
        STR      r3,[r2,#0]
        POP      {r4-r6,pc}
        ENDP


        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "mystuff.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___9_mystuff_c_bff1bb0f____REV16|
#line 388 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.5.0\\CMSIS\\Include\\cmsis_armcc.h"
|__asm___9_mystuff_c_bff1bb0f____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___9_mystuff_c_bff1bb0f____REVSH|
#line 402
|__asm___9_mystuff_c_bff1bb0f____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___9_mystuff_c_bff1bb0f____RRX|
#line 587
|__asm___9_mystuff_c_bff1bb0f____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT GpioConfig [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]

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
