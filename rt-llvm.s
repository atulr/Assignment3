#BEGIN Preamble
	REG	r0
	REG	r1
	REG	r2
	REG	r3
	REG	r4
	REG	r5
	REG	r6
	REG	r7
	REG	r8
	REG	r9
	REG	r10
	REG	r11
	REG	r12
	REG	r13
	REG	r14
	REG	r15
	REG	r16
	REG	r17
	REG	r18
	REG	r19
	REG	r20
	REG	r21
	REG	r22
	REG	r23
	REG	r24
	REG	r25
	REG	r26
	REG	r27
	REG	r28
	REG	r29
	REG	r30
	REG	r31
	LOADIMM	r0, 0
	ADDI	r1, r0, 8192
start:	brlid	r15, main
	NOP
	HALT
#END Preamble
#	.file	"rt.bc"
#	.text
#	.globl	main
#	.align	2
#	.type	main,@function
#	.ent	main                    # @main
main:
#	.frame	r1,72,r15
#	.mask	0xfff00000
	ADDI	r1,	r1,	-72
	SWI	r20,	r1,	44
	SWI	r21,	r1,	40
	SWI	r22,	r1,	36
	SWI	r23,	r1,	32
	SWI	r24,	r1,	28
	SWI	r25,	r1,	24
	SWI	r26,	r1,	20
	SWI	r27,	r1,	16
	SWI	r28,	r1,	12
	SWI	r29,	r1,	8
	SWI	r30,	r1,	4
	SWI	r31,	r1,	0
	ADD	r3,	r0,	r0
	LOAD	r4,	r3,	1
	LOAD	r5,	r3,	4
	LOAD	r3,	r3,	7
	SWI	r3,	r1,	56
	FPCONV	r3,	r4
	SWI	r3,	r1,	48
	FPCONV	r3,	r5
	SWI	r3,	r1,	52
	ORI	r3,	r0,	-1073741824
	MUL	r5,	r5,	r4
	SWI	r5,	r1,	68
	ATOMIC_INC	r6,	0
	CMP	r5,	r6,	r5
	bleid	r5,	$0BB0_64
	NOP
	LWI	r5,	r1,	48
	FPDIV	r5,	r5,	r3
	SWI	r5,	r1,	60
	LWI	r5,	r1,	52
	FPDIV	r3,	r5,	r3
	SWI	r3,	r1,	64
$0BB0_2:
	ORI	r3,	r0,	1131741184
	ORI	r5,	r0,	1065353216
	FPINVSQRT	r3,	r3
	ORI	r7,	r0,	1073741824
	FPDIV	r3,	r5,	r3
	ORI	r8,	r0,	-1065353216
	ORI	r9,	r0,	1097859072
	FPDIV	r7,	r7,	r3
	ORI	r10,	r0,	0
	FPDIV	r8,	r8,	r3
	FPMUL	r11,	r7,	r10
	FPDIV	r3,	r9,	r3
	FPRSUB	r9,	r11,	r3
	FPRSUB	r11,	r8,	r11
	FPMUL	r12,	r8,	r10
	FPMUL	r10,	r3,	r10
	FPRSUB	r10,	r10,	r12
	FPMUL	r12,	r9,	r9
	FPMUL	r20,	r11,	r11
	FPADD	r12,	r12,	r20
	FPMUL	r20,	r10,	r10
	FPADD	r12,	r12,	r20
	FPINVSQRT	r12,	r12
	FPDIV	r12,	r5,	r12
	FPDIV	r10,	r10,	r12
	FPDIV	r9,	r9,	r12
	FPDIV	r11,	r11,	r12
	FPMUL	r12,	r11,	r7
	FPMUL	r20,	r3,	r10
	FPMUL	r21,	r8,	r10
	FPMUL	r22,	r9,	r7
	DIV	r23,	r4,	r6
	FPRSUB	r12,	r20,	r12
	FPRSUB	r20,	r22,	r21
	FPMUL	r21,	r3,	r9
	FPMUL	r22,	r8,	r11
	MUL	r24,	r23,	r4
	FPRSUB	r21,	r22,	r21
	FPMUL	r22,	r12,	r12
	FPMUL	r25,	r20,	r20
	RSUB	r6,	r24,	r6
	FPADD	r22,	r22,	r25
	FPMUL	r25,	r21,	r21
	FPADD	r22,	r22,	r25
	FPCONV	r23,	r23
	FPCONV	r25,	r6
	FPINVSQRT	r22,	r22
	LWI	r26,	r1,	64
	FPADD	r23,	r23,	r26
	ORI	r26,	r0,	1056964608
	LWI	r27,	r1,	60
	FPADD	r25,	r25,	r27
	FPDIV	r5,	r5,	r22
	FPADD	r22,	r23,	r26
	FPADD	r23,	r25,	r26
	ORI	r25,	r0,	1044983730
	FPDIV	r12,	r12,	r5
	FPADD	r22,	r22,	r22
	FPADD	r23,	r23,	r23
	FPMUL	r12,	r12,	r25
	LWI	r26,	r1,	52
	FPDIV	r22,	r22,	r26
	FPMUL	r9,	r9,	r25
	LWI	r26,	r1,	48
	FPDIV	r23,	r23,	r26
	FPMUL	r12,	r12,	r22
	FPMUL	r9,	r9,	r23
	FPADD	r9,	r12,	r9
	ORI	r12,	r0,	-1063256064
	FPADD	r8,	r9,	r8
	ORI	r9,	r0,	-1069547520
	FPDIV	r12,	r12,	r8
	FPDIV	r8,	r9,	r8
	FPGT	r9,	r12,	r8
	ADDI	r26,	r0,	1
	ADDI	r27,	r0,	0
	bneid	r9,	$0BB0_4
	ADD	r28,	r26,	r0
	ADD	r28,	r27,	r0
$0BB0_4:
	bneid	r28,	$0BB0_6
	ADD	r9,	r8,	r0
	ADD	r9,	r12,	r0
$0BB0_6:
	ORI	r29,	r0,	-803929351
	bneid	r28,	$0BB0_8
	NOP
	ADD	r12,	r8,	r0
$0BB0_8:
	ORI	r8,	r0,	1343554297
	FPGT	r28,	r9,	r29
	FPLT	r30,	r12,	r8
	bneid	r28,	$0BB0_10
	ADD	r31,	r26,	r0
	ADD	r31,	r27,	r0
$0BB0_10:
	bneid	r30,	$0BB0_12
	ADD	r28,	r26,	r0
	ADD	r28,	r27,	r0
$0BB0_12:
	bneid	r31,	$0BB0_14
	NOP
	ADD	r9,	r29,	r0
$0BB0_14:
	bneid	r28,	$0BB0_16
	NOP
	ADD	r12,	r8,	r0
$0BB0_16:
	FPGT	r8,	r9,	r12
	bneid	r8,	$0BB0_18
	NOP
	ADD	r26,	r27,	r0
$0BB0_18:
	bneid	r26,	$0BB0_62
	NOP
	ORI	r8,	r0,	0
	ADDI	r26,	r0,	1
	FPLT	r8,	r12,	r8
	bneid	r8,	$0BB0_21
	NOP
	ADDI	r26,	r0,	0
$0BB0_21:
	bneid	r26,	$0BB0_62
	NOP
	FPDIV	r8,	r20,	r5
	FPMUL	r8,	r8,	r25
	FPMUL	r11,	r11,	r25
	FPMUL	r8,	r8,	r22
	FPMUL	r11,	r11,	r23
	FPADD	r8,	r8,	r11
	FPADD	r3,	r8,	r3
	ORI	r8,	r0,	1096810496
	ORI	r11,	r0,	1098907648
	FPDIV	r8,	r8,	r3
	FPDIV	r3,	r11,	r3
	FPGT	r11,	r8,	r3
	ADDI	r20,	r0,	1
	ADDI	r26,	r0,	0
	bneid	r11,	$0BB0_24
	ADD	r27,	r20,	r0
	ADD	r27,	r26,	r0
$0BB0_24:
	bneid	r27,	$0BB0_26
	ADD	r11,	r3,	r0
	ADD	r11,	r8,	r0
$0BB0_26:
	bneid	r27,	$0BB0_28
	NOP
	ADD	r8,	r3,	r0
$0BB0_28:
	FPGT	r3,	r11,	r9
	FPLT	r27,	r8,	r12
	bneid	r3,	$0BB0_30
	ADD	r28,	r20,	r0
	ADD	r28,	r26,	r0
$0BB0_30:
	bneid	r27,	$0BB0_32
	ADD	r3,	r20,	r0
	ADD	r3,	r26,	r0
$0BB0_32:
	bneid	r28,	$0BB0_34
	NOP
	ADD	r11,	r9,	r0
$0BB0_34:
	bneid	r3,	$0BB0_36
	NOP
	ADD	r8,	r12,	r0
$0BB0_36:
	FPGT	r3,	r11,	r8
	bneid	r3,	$0BB0_38
	NOP
	ADD	r20,	r26,	r0
$0BB0_38:
	bneid	r20,	$0BB0_62
	NOP
	ORI	r3,	r0,	0
	ADDI	r9,	r0,	1
	FPLT	r3,	r8,	r3
	bneid	r3,	$0BB0_41
	NOP
	ADDI	r9,	r0,	0
$0BB0_41:
	bneid	r9,	$0BB0_62
	NOP
	FPDIV	r3,	r21,	r5
	FPMUL	r5,	r10,	r25
	FPMUL	r3,	r3,	r25
	FPMUL	r5,	r5,	r23
	FPMUL	r3,	r3,	r22
	FPADD	r3,	r5,	r3
	FPADD	r3,	r7,	r3
	ORI	r5,	r0,	1065353216
	ORI	r7,	r0,	1077936128
	FPDIV	r9,	r5,	r3
	FPDIV	r3,	r7,	r3
	FPGT	r7,	r9,	r3
	ADDI	r10,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r7,	$0BB0_44
	ADD	r20,	r10,	r0
	ADD	r20,	r12,	r0
$0BB0_44:
	bneid	r20,	$0BB0_46
	ADD	r7,	r3,	r0
	ADD	r7,	r9,	r0
$0BB0_46:
	bneid	r20,	$0BB0_48
	NOP
	ADD	r9,	r3,	r0
$0BB0_48:
	FPGT	r3,	r7,	r11
	FPLT	r20,	r9,	r8
	bneid	r3,	$0BB0_50
	ADD	r21,	r10,	r0
	ADD	r21,	r12,	r0
$0BB0_50:
	bneid	r20,	$0BB0_52
	ADD	r3,	r10,	r0
	ADD	r3,	r12,	r0
$0BB0_52:
	ORI	r20,	r0,	1050253722
	ORI	r22,	r0,	1045220557
	bneid	r3,	$0BB0_54
	NOP
	ADD	r9,	r8,	r0
$0BB0_54:
	bneid	r21,	$0BB0_56
	NOP
	ADD	r7,	r11,	r0
$0BB0_56:
	FPGT	r3,	r7,	r9
	bneid	r3,	$0BB0_58
	NOP
	ADD	r10,	r12,	r0
$0BB0_58:
	bneid	r10,	$0BB0_62
	NOP
	ORI	r3,	r0,	0
	FPUN	r7,	r9,	r3
	FPGE	r3,	r9,	r3
	BITOR	r3,	r7,	r3
	bneid	r3,	$0BB0_61
	ADDI	r8,	r0,	1
	ADDI	r8,	r0,	0
$0BB0_61:
	bneid	r8,	$0BB0_63
	NOP
$0BB0_62:
	ORI	r5,	r0,	0
	ADD	r20,	r5,	r0
	ADD	r22,	r5,	r0
$0BB0_63:
	ADD	r6,	r24,	r6
	MULI	r6,	r6,	3
	LWI	r3,	r1,	56
	ADD	r6,	r6,	r3
	STORE	r6,	r5,	0
	STORE	r6,	r20,	1
	STORE	r6,	r22,	2
	ATOMIC_INC	r6,	0
	LWI	r3,	r1,	68
	CMP	r3,	r6,	r3
	bgtid	r3,	$0BB0_2
	NOP
$0BB0_64:
	ADD	r3,	r0,	r0
	LWI	r31,	r1,	0
	LWI	r30,	r1,	4
	LWI	r29,	r1,	8
	LWI	r28,	r1,	12
	LWI	r27,	r1,	16
	LWI	r26,	r1,	20
	LWI	r25,	r1,	24
	LWI	r24,	r1,	28
	LWI	r23,	r1,	32
	LWI	r22,	r1,	36
	LWI	r21,	r1,	40
	LWI	r20,	r1,	44
	rtsd	r15,	8
	ADDI	r1,	r1,	72
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main

