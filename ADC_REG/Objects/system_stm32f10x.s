; generated by Component: ARM Compiler 5.06 update 1 (build 61) Tool: ArmCC [4d35ad]
; commandline ArmCC [--split_sections --debug -c --asm -o.\objects\system_stm32f10x.o --depend=.\objects\system_stm32f10x.d --cpu=Cortex-M3 --apcs=interwork -O0 --diag_suppress=9931 -ID:\ele\STM\STM32F103\Projects\ADC_REG\RTE -ID:\ele\STM\STM32F103\Projects\ADC_REG\RTE\Device\STM32F103C8 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\4.5.0\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F1xx_DFP\2.0.0\Device\Include -D__UVISION_VERSION=518 -D_RTE_ -DSTM32F10X_MD --omf_browse=.\objects\system_stm32f10x.crf RTE\Device\STM32F103C8\system_stm32f10x.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.SetSysClock||, CODE, READONLY, ALIGN=1

SetSysClock PROC
        PUSH     {r4,lr}
        BL       SetSysClockTo72
        POP      {r4,pc}
        ENDP


        AREA ||i.SetSysClockTo72||, CODE, READONLY, ALIGN=2

SetSysClockTo72 PROC
        PUSH     {r2,r3,lr}
        MOVS     r0,#0
        STR      r0,[sp,#4]
        STR      r0,[sp,#0]
        LDR      r0,|L2.216|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x10000
        LDR      r1,|L2.216|
        STR      r0,[r1,#0]
        NOP      
|L2.22|
        LDR      r0,|L2.216|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x20000
        STR      r0,[sp,#0]
        LDR      r0,[sp,#4]
        ADDS     r0,r0,#1
        STR      r0,[sp,#4]
        LDR      r0,[sp,#0]
        CBNZ     r0,|L2.50|
        LDR      r0,[sp,#4]
        CMP      r0,#0x500
        BNE      |L2.22|
|L2.50|
        LDR      r0,|L2.216|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x20000
        CBZ      r0,|L2.66|
        MOVS     r0,#1
        STR      r0,[sp,#0]
        B        |L2.70|
|L2.66|
        MOVS     r0,#0
        STR      r0,[sp,#0]
|L2.70|
        LDR      r0,[sp,#0]
        CMP      r0,#1
        BNE      |L2.212|
        LDR      r0,|L2.220|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x10
        LDR      r1,|L2.220|
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        BIC      r0,r0,#3
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        ORR      r0,r0,#2
        STR      r0,[r1,#0]
        LDR      r0,|L2.216|
        LDR      r0,[r0,#4]
        LDR      r1,|L2.216|
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        ORR      r0,r0,#0x400
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        BIC      r0,r0,#0x3f0000
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        ORR      r0,r0,#0x1d0000
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x1000000
        STR      r0,[r1,#0]
        NOP      
|L2.164|
        LDR      r0,|L2.216|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x2000000
        CMP      r0,#0
        BEQ      |L2.164|
        LDR      r0,|L2.216|
        LDR      r0,[r0,#4]
        BIC      r0,r0,#3
        LDR      r1,|L2.216|
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        ORR      r0,r0,#2
        STR      r0,[r1,#4]
        NOP      
|L2.200|
        LDR      r0,|L2.216|
        LDR      r0,[r0,#4]
        AND      r0,r0,#0xc
        CMP      r0,#8
        BNE      |L2.200|
|L2.212|
        POP      {r2,r3,pc}
        ENDP

        DCW      0x0000
|L2.216|
        DCD      0x40021000
|L2.220|
        DCD      0x40022000

        AREA ||i.SystemCoreClockUpdate||, CODE, READONLY, ALIGN=2

SystemCoreClockUpdate PROC
        PUSH     {r4,lr}
        MOVS     r1,#0
        MOVS     r0,#0
        MOVS     r2,#0
        LDR      r3,|L3.144|
        LDR      r3,[r3,#4]
        AND      r1,r3,#0xc
        CBZ      r1,|L3.28|
        CMP      r1,#4
        BEQ      |L3.36|
        CMP      r1,#8
        BNE      |L3.108|
        B        |L3.44|
|L3.28|
        LDR      r3,|L3.148|
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
        B        |L3.116|
|L3.36|
        LDR      r3,|L3.148|
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
        B        |L3.116|
|L3.44|
        LDR      r3,|L3.144|
        LDR      r3,[r3,#4]
        AND      r0,r3,#0x3c0000
        LDR      r3,|L3.144|
        LDR      r3,[r3,#4]
        AND      r2,r3,#0x10000
        MOVS     r3,#2
        ADD      r0,r3,r0,LSR #18
        CBNZ     r2,|L3.78|
        LDR      r3,|L3.156|
        MULS     r3,r0,r3
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
        B        |L3.106|
|L3.78|
        LDR      r3,|L3.144|
        LDR      r3,[r3,#4]
        AND      r3,r3,#0x20000
        CBZ      r3,|L3.98|
        LDR      r3,|L3.156|
        MULS     r3,r0,r3
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
        B        |L3.106|
|L3.98|
        LDR      r3,|L3.148|
        MULS     r3,r0,r3
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
|L3.106|
        B        |L3.116|
|L3.108|
        LDR      r3,|L3.148|
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
        NOP      
|L3.116|
        NOP      
        LDR      r3,|L3.144|
        LDR      r3,[r3,#4]
        UBFX     r3,r3,#4,#4
        LDR      r4,|L3.160|
        LDRB     r1,[r4,r3]
        LDR      r3,|L3.152|
        LDR      r3,[r3,#0]  ; SystemCoreClock
        LSRS     r3,r3,r1
        LDR      r4,|L3.152|
        STR      r3,[r4,#0]  ; SystemCoreClock
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L3.144|
        DCD      0x40021000
|L3.148|
        DCD      0x007a1200
|L3.152|
        DCD      SystemCoreClock
|L3.156|
        DCD      0x003d0900
|L3.160|
        DCD      AHBPrescTable

        AREA ||i.SystemInit||, CODE, READONLY, ALIGN=2

SystemInit PROC
        PUSH     {r4,lr}
        LDR      r0,|L4.80|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#1
        LDR      r1,|L4.80|
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        LDR      r1,|L4.84|
        ANDS     r0,r0,r1
        LDR      r1,|L4.80|
        STR      r0,[r1,#4]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        LDR      r1,|L4.88|
        ANDS     r0,r0,r1
        LDR      r1,|L4.80|
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0x40000
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#4]
        BIC      r0,r0,#0x7f0000
        STR      r0,[r1,#4]
        MOV      r0,#0x9f0000
        STR      r0,[r1,#8]
        BL       SetSysClock
        MOV      r0,#0x8000000
        LDR      r1,|L4.92|
        STR      r0,[r1,#0]
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L4.80|
        DCD      0x40021000
|L4.84|
        DCD      0xf8ff0000
|L4.88|
        DCD      0xfef6ffff
|L4.92|
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

        KEEP SetSysClock
        KEEP SetSysClockTo72

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