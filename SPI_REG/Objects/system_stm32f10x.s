; generated by Component: ARM Compiler 5.06 update 1 (build 61) Tool: ArmCC [4d35ad]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -o.\objects\system_stm32f10x.o --depend=.\objects\system_stm32f10x.d --cpu=Cortex-M3 --apcs=interwork -O3 --diag_suppress=9931 -ID:\ele\STM\STM32F103\Projects\SPI_REG\RTE -ID:\ele\STM\STM32F103\Projects\SPI_REG\RTE\Device\STM32F103C8 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F1xx_DFP\2.0.0\Device\Include -D__UVISION_VERSION=518 -D_RTE_ -DSTM32F10X_MD --omf_browse=.\objects\system_stm32f10x.crf RTE\Device\STM32F103C8\system_stm32f10x.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.SetSysClockTo72||, CODE, READONLY, ALIGN=2

SetSysClockTo72 PROC
        PUSH     {r2,r3,lr}
        MOVS     r1,#0
        LDR      r0,|L1.160|
        STR      r1,[sp,#4]
        STR      r1,[sp,#0]
        LDR      r2,[r0,#0]
        ORR      r2,r2,#0x10000
        STR      r2,[r0,#0]
        MOV      r3,#0x500
|L1.22|
        LDR      r2,[r0,#0]
        AND      r2,r2,#0x20000
        STR      r2,[sp,#0]
        LDR      r2,[sp,#4]
        ADDS     r2,r2,#1
        STR      r2,[sp,#4]
        LDR      r2,[sp,#0]
        CBNZ     r2,|L1.46|
        LDR      r2,[sp,#4]
        CMP      r2,r3
        BNE      |L1.22|
|L1.46|
        LDR      r2,[r0,#0]
        LSLS     r2,r2,#14
        BPL      |L1.156|
        MOVS     r1,#1
        STR      r1,[sp,#0]
        LDR      r1,|L1.164|
        LDR      r2,[r1,#0]
        ORR      r2,r2,#0x10
        STR      r2,[r1,#0]
        LDR      r2,[r1,#0]
        BIC      r2,r2,#3
        STR      r2,[r1,#0]
        LDR      r2,[r1,#0]
        ORR      r2,r2,#2
        STR      r2,[r1,#0]
        LDR      r1,[r0,#4]
        STR      r1,[r0,#4]
        LDR      r1,[r0,#4]
        STR      r1,[r0,#4]
        LDR      r1,[r0,#4]
        ORR      r1,r1,#0x400
        STR      r1,[r0,#4]
        LDR      r1,[r0,#4]
        BIC      r1,r1,#0x3f0000
        STR      r1,[r0,#4]
        LDR      r1,[r0,#4]
        ORR      r1,r1,#0x1d0000
        STR      r1,[r0,#4]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x1000000
        STR      r1,[r0,#0]
|L1.122|
        LDR      r1,[r0,#0]
        LSLS     r1,r1,#6
        BPL      |L1.122|
        LDR      r1,[r0,#4]
        BIC      r1,r1,#3
        STR      r1,[r0,#4]
        LDR      r1,[r0,#4]
        ORR      r1,r1,#2
        STR      r1,[r0,#4]
|L1.144|
        LDR      r1,[r0,#4]
        UBFX     r1,r1,#2,#2
        CMP      r1,#2
        BNE      |L1.144|
        POP      {r2,r3,pc}
|L1.156|
        STR      r1,[sp,#0]
        POP      {r2,r3,pc}
        ENDP

|L1.160|
        DCD      0x40021000
|L1.164|
        DCD      0x40022000

        AREA ||i.SystemCoreClockUpdate||, CODE, READONLY, ALIGN=2

SystemCoreClockUpdate PROC
        LDR      r1,|L2.84|
        PUSH     {r4,lr}
        LDR      r0,[r1,#4]
        LDR      r2,|L2.88|
        ANDS     r3,r0,#0xc
        LDR      r0,|L2.92|
        BEQ      |L2.24|
        CMP      r3,#4
        BEQ      |L2.24|
        CMP      r3,#8
        BEQ      |L2.46|
|L2.24|
        STR      r2,[r0,#0]  ; SystemCoreClock
        LDR      r1,[r1,#4]
        LDR      r2,|L2.92|
        UBFX     r1,r1,#4,#4
        ADDS     r2,r2,#4
        LDRB     r1,[r2,r1]
        LDR      r2,[r0,#0]  ; SystemCoreClock
        LSRS     r2,r2,r1
        STR      r2,[r0,#0]  ; SystemCoreClock
        POP      {r4,pc}
|L2.46|
        LDR      r2,[r1,#4]
        LDR      r3,[r1,#4]
        AND      r2,r2,#0x3c0000
        MOV      r4,#2
        TST      r3,#0x10000
        ADD      r2,r4,r2,LSR #18
        BEQ      |L2.74|
        LDR      r3,[r1,#4]
        LSLS     r3,r3,#14
        BPL      |L2.78|
|L2.74|
        LDR      r3,|L2.96|
        B        |L2.80|
|L2.78|
        LDR      r3,|L2.88|
|L2.80|
        MULS     r2,r3,r2
        B        |L2.24|
        ENDP

|L2.84|
        DCD      0x40021000
|L2.88|
        DCD      0x007a1200
|L2.92|
        DCD      ||.data||
|L2.96|
        DCD      0x003d0900

        AREA ||i.SystemInit||, CODE, READONLY, ALIGN=2

SystemInit PROC
        LDR      r0,|L3.64|
        PUSH     {r4,lr}
        LDR      r1,[r0,#0]
        ORR      r1,r1,#1
        STR      r1,[r0,#0]
        LDR      r1,[r0,#4]
        LDR      r2,|L3.68|
        ANDS     r1,r1,r2
        STR      r1,[r0,#4]
        LDR      r1,[r0,#0]
        LDR      r2,|L3.72|
        ANDS     r1,r1,r2
        STR      r1,[r0,#0]
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x40000
        STR      r1,[r0,#0]
        LDR      r1,[r0,#4]
        BIC      r1,r1,#0x7f0000
        STR      r1,[r0,#4]
        MOV      r1,#0x9f0000
        STR      r1,[r0,#8]
        BL       SetSysClockTo72
        LDR      r1,|L3.76|
        MOV      r0,#0x8000000
        STR      r0,[r1,#0]
        POP      {r4,pc}
        ENDP

|L3.64|
        DCD      0x40021000
|L3.68|
        DCD      0xf8ff0000
|L3.72|
        DCD      0xfef6ffff
|L3.76|
        DCD      0xe000ed08

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.data||, DATA, ALIGN=2

SystemCoreClock
        DCD      0x044aa200
AHBPrescTable
        DCB      0x00,0x00,0x00,0x00
        DCB      0x00,0x00,0x00,0x00
        DCB      0x01,0x02,0x03,0x04
        DCB      0x06,0x07,0x08,0x09

;*** Start embedded assembler ***

#line 1 "RTE\\Device\\STM32F103C8\\system_stm32f10x.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___18_system_stm32f10x_c_5d646a67____REV16|
#line 388 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.5.0\\CMSIS\\Include\\cmsis_armcc.h"
|__asm___18_system_stm32f10x_c_5d646a67____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___18_system_stm32f10x_c_5d646a67____REVSH|
#line 402
|__asm___18_system_stm32f10x_c_5d646a67____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___18_system_stm32f10x_c_5d646a67____RRX|
#line 587
|__asm___18_system_stm32f10x_c_5d646a67____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT SystemCoreClockUpdate [CODE]
        EXPORT SystemInit [CODE]
        EXPORT SystemCoreClock [DATA,SIZE=4]
        EXPORT AHBPrescTable [DATA,SIZE=16]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]

        KEEP SetSysClockTo72

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