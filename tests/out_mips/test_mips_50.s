#	LIVERANGE: EDGE tmp$0(0) -> x(2)
#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE flag(1) COST - 1.000000, DEGREES - 0
#	NODE x(2) COST - 1.000000, DEGREES - 0
#	NODE x(2) IN REG $s1
#	NODE flag(1) IN REG $s0
#	NODE tmp$0(0) IN REG $s0
.text
# function side_effect
# formals: x (loc: 8); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); 
# space for locals: 8 bytes
#
_side_effect:
# block 0 
# def = 110;
# use = 001;
# in  = 001;
# out = 000;
    # -LEADER- block (0)
    # livenow=001
    # enter side_effect
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -8($sp)   # allocate stack frame

    # block (0)
    # livenow=001
    # uminus 1, tmp$0
    li $t0, 1
    neg $t2, $t0
    sw $t2, -4($fp)	# tmp$0

    # block (0)
    # livenow=101
    # move tmp$0, flag
    lw $t0, -4($fp)	# tmp$0
    sw $t0, _flag

    # block (0)
    # livenow=001
    # leave side_effect

    # block (0)
    # livenow=001
    # ret x
    lw $v0, 8($fp)	# x
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave side_effect

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function side_effect

#	LIVERANGE: EDGE z(2) -> x(0)
#	LIVERANGE: EDGE z(2) -> y(1)
#	LIVERANGE: EDGE z(2) -> flag(3)
#	LIVERANGE: EDGE z(2) -> val(4)
#	LIVERANGE: EDGE z(2) -> tmp$7(5)
#	LIVERANGE: EDGE z(2) -> tmp$6(7)
#	LIVERANGE: EDGE y(1) -> x(0)
#	LIVERANGE: EDGE y(1) -> flag(3)
#	LIVERANGE: EDGE y(1) -> val(4)
#	LIVERANGE: EDGE y(1) -> tmp$7(5)
#	LIVERANGE: EDGE y(1) -> tmp$6(7)
#	LIVERANGE: EDGE x(0) -> flag(3)
#	LIVERANGE: EDGE x(0) -> val(4)
#	LIVERANGE: EDGE x(0) -> tmp$7(5)
#	LIVERANGE: EDGE x(0) -> tmp$6(7)
#	LIVERANGE: EDGE x(0) -> tmp$6(7)
#	LIVERANGE: EDGE tmp$5(6) -> y(1)
#	LIVERANGE: EDGE tmp$5(6) -> z(2)
#	LIVERANGE: EDGE tmp$5(6) -> flag(3)
#	LIVERANGE: EDGE tmp$5(6) -> val(4)
#	LIVERANGE: EDGE tmp$5(6) -> tmp$6(7)
#	LIVERANGE: EDGE tmp$13(8) -> flag(3)
#	LIVERANGE: EDGE tmp$13(8) -> val(4)
#	NODE x(0) COST - 12.000000, DEGREES - 7
#	NODE y(1) COST - 9.000000, DEGREES - 7
#	NODE z(2) COST - 9.000000, DEGREES - 7
#	NODE flag(3) COST - 6.000000, DEGREES - 5
#	NODE val(4) COST - 6.000000, DEGREES - 4
#	NODE tmp$7(5) COST - 2.000000, DEGREES - 3
#	NODE tmp$5(6) COST - 1.000000, DEGREES - 5
#	NODE tmp$6(7) COST - 1.000000, DEGREES - 5
#	NODE tmp$13(8) COST - 0.500000, DEGREES - 1
#	NODE tmp$17(9) COST - 1.000000, DEGREES - 0
#	NODE z(2) IN REG $s2
#	NODE y(1) IN REG $s1
#	NODE x(0) IN REG $s0
#	NODE tmp$17(9) IN REG $s0
#	NODE tmp$13(8) IN REG $s0
#	NODE tmp$6(7) IN REG $s3
#	NODE tmp$5(6) IN REG $s0
#	NODE tmp$7(5) IN REG $s3
#	NODE val(4) IN REG $s3
#	NODE flag(3) IN REG $s3
#	NODE z(2) IN REG $s2
#	NODE y(1) IN REG $s1
#	NODE x(0) IN REG $s0
#	NODE x(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); y (loc: -8); z (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); tmp$6 (loc: -32); tmp$7 (loc: -36); tmp$8 (loc: -40); tmp$9 (loc: -44); tmp$10 (loc: -48); tmp$11 (loc: -52); tmp$12 (loc: -56); tmp$13 (loc: -60); tmp$14 (loc: -64); tmp$15 (loc: -68); tmp$16 (loc: -72); tmp$17 (loc: -76); 
# space for locals: 76 bytes
#
_main:
# block 1 
# def = 1111100000;
# use = 0000000000;
# in  = 0000010100;
# out = 1111110100;
    # -LEADER- block (1)
    # livenow=0001110100
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -76($sp)   # allocate stack frame

    # block (1)
    # livenow=0001110100
    # move 3, x
    li $t0, 3
    sw $t0, -4($fp)	# x

    # block (1)
    # livenow=1001110100
    # move 4, y
    li $t0, 4
    sw $t0, -8($fp)	# y

    # block (1)
    # livenow=1101110100
    # move 5, z
    li $t0, 5
    sw $t0, -12($fp)	# z

    # block (1)
    # livenow=1111110100
    # move 1, flag
    li $t0, 1
    sw $t0, _flag

    # block (1)
    # livenow=1111110100
    # move 1234, val
    li $t0, 1234
    sw $t0, _val

    # block (1)
    # livenow=1111110100
    # if_ge 3, 4, label 1
    li $t0, 3
    li $t1, 4
    bge $t0, $t1, Lbl1

# block 2 
# def = 0000000000;
# use = 0110000000;
# in  = 1111110100;
# out = 1111110100;
    # -LEADER- block (2)
    # livenow=1111110100
    # label 4
Lbl4:

    # block (2)
    # livenow=1111110100
    # if_le y, z, label 1
    lw $t0, -8($fp)	# y
    lw $t1, -12($fp)	# z
    ble $t0, $t1, Lbl1

# block 3 
# def = 0000000000;
# use = 1010010000;
# in  = 1111110100;
# out = 1111100100;
    # -LEADER- block (3)
    # livenow=1111110100
    # label 3
Lbl3:

    # block (3)
    # livenow=1111110100
    # param x
    lw $t0, -4($fp)	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=1111110100
    # call side_effect, 1
    jal _side_effect
    la $sp, 4($sp)

    # block (3)
    # livenow=1111110100
    # retrieve tmp$7
    sw $v0, -36($fp)	# tmp$7

    # block (3)
    # livenow=1111110100
    # if_ge tmp$7, z, label 1
    lw $t0, -36($fp)	# tmp$7
    lw $t1, -12($fp)	# z
    bge $t0, $t1, Lbl1

# block 4 
# def = 0000001000;
# use = 1000000000;
# in  = 1111100100;
# out = 1111100100;
    # -LEADER- block (4)
    # livenow=1111100100
    # label 0
Lbl0:

    # block (4)
    # livenow=1111100100
    # sub x, 1, tmp$8
    lw $t0, -4($fp)	# x
    li $t1, 1
    sub $t2, $t0, $t1
    sw $t2, -40($fp)	# tmp$8

    # block (4)
    # livenow=0111101100
    # move tmp$8, x
    lw $t0, -40($fp)	# tmp$8
    sw $t0, -4($fp)	# x

    # block (4)
    # livenow=1111100100
    # goto label 2
    j Lbl2

# block 5 
# def = 0000000000;
# use = 0000000000;
# in  = 1111100100;
# out = 1111100100;
    # -LEADER- block (5)
    # livenow=1111100100
    # label 1
Lbl1:

# block 6 
# def = 0000000000;
# use = 0001000000;
# in  = 1111100100;
# out = 1111100100;
    # -LEADER- block (6)
    # livenow=1111100100
    # label 2
Lbl2:

    # block (6)
    # livenow=1111100100
    # if_ge flag, 0, label 6
    lw $t0, _flag
    li $t1, 0
    bge $t0, $t1, Lbl6

# block 7 
# def = 0000100000;
# use = 0000000000;
# in  = 1111000100;
# out = 1111100100;
    # -LEADER- block (7)
    # livenow=1111100100
    # label 5
Lbl5:

    # block (7)
    # livenow=1111100100
    # move 4321, val
    li $t0, 4321
    sw $t0, _val

    # block (7)
    # livenow=1111100100
    # goto label 7
    j Lbl7

# block 8 
# def = 0000000000;
# use = 0000000000;
# in  = 1111100100;
# out = 1111100100;
    # -LEADER- block (8)
    # livenow=1111100100
    # label 6
Lbl6:

# block 9 
# def = 0000000000;
# use = 1100000000;
# in  = 1111100100;
# out = 1111100100;
    # -LEADER- block (9)
    # livenow=1111100100
    # label 7
Lbl7:

    # block (9)
    # livenow=1111100100
    # if_lt x, y, label 8
    lw $t0, -4($fp)	# x
    lw $t1, -8($fp)	# y
    blt $t0, $t1, Lbl8

# block 10 
# def = 0000000000;
# use = 0000000000;
# in  = 1111100100;
# out = 1111100100;
    # -LEADER- block (10)
    # livenow=1111100100
    # goto label 12
    j Lbl12

# block 11 
# def = 0000000000;
# use = 0110000000;
# in  = 1111100100;
# out = 1011100100;
    # -LEADER- block (11)
    # livenow=1111100100
    # label 12
Lbl12:

    # block (11)
    # livenow=1111100100
    # if_gt y, z, label 8
    lw $t0, -8($fp)	# y
    lw $t1, -12($fp)	# z
    bgt $t0, $t1, Lbl8

# block 12 
# def = 0000000000;
# use = 0000000000;
# in  = 1011100100;
# out = 1011100100;
    # -LEADER- block (12)
    # livenow=1011100100
    # goto label 11
    j Lbl11

# block 13 
# def = 0000000000;
# use = 1010000100;
# in  = 1011100100;
# out = 1001100000;
    # -LEADER- block (13)
    # livenow=1011100100
    # label 11
Lbl11:

    # block (13)
    # livenow=1011100100
    # param x
    lw $t0, -4($fp)	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (13)
    # livenow=1011100100
    # call side_effect, 1
    jal _side_effect
    la $sp, 4($sp)

    # block (13)
    # livenow=1011100100
    # retrieve tmp$12
    sw $v0, -56($fp)	# tmp$12

    # block (13)
    # livenow=1011100100
    # if_ge tmp$12, z, label 9
    lw $t0, -56($fp)	# tmp$12
    lw $t1, -12($fp)	# z
    bge $t0, $t1, Lbl9

# block 14 
# def = 0000000010;
# use = 1000000000;
# in  = 1001100000;
# out = 1001100000;
    # -LEADER- block (14)
    # livenow=1001100000
    # label 8
Lbl8:

    # block (14)
    # livenow=1001100000
    # sub x, 1, tmp$13
    lw $t0, -4($fp)	# x
    li $t1, 1
    sub $t2, $t0, $t1
    sw $t2, -60($fp)	# tmp$13

    # block (14)
    # livenow=0001100010
    # move tmp$13, x
    lw $t0, -60($fp)	# tmp$13
    sw $t0, -4($fp)	# x

    # block (14)
    # livenow=1001100000
    # goto label 10
    j Lbl10

# block 15 
# def = 0000000000;
# use = 0000000000;
# in  = 1001100000;
# out = 1001100000;
    # -LEADER- block (15)
    # livenow=1001100000
    # label 9
Lbl9:

# block 16 
# def = 0000000000;
# use = 0001000000;
# in  = 1001100000;
# out = 1000100000;
    # -LEADER- block (16)
    # livenow=1000100000
    # label 10
Lbl10:

    # block (16)
    # livenow=1000100000
    # if_ge flag, 0, label 14
    lw $t0, _flag
    li $t1, 0
    bge $t0, $t1, Lbl14

# block 17 
# def = 0000100000;
# use = 0000000000;
# in  = 1000000000;
# out = 1000100000;
    # -LEADER- block (17)
    # livenow=1000100000
    # label 13
Lbl13:

    # block (17)
    # livenow=1000100000
    # move 4321, val
    li $t0, 4321
    sw $t0, _val

    # block (17)
    # livenow=1000100000
    # goto label 15
    j Lbl15

# block 18 
# def = 0000000000;
# use = 0000000000;
# in  = 1000100000;
# out = 1000100000;
    # -LEADER- block (18)
    # livenow=1000100000
    # label 14
Lbl14:

# block 19 
# def = 0000000001;
# use = 1000100000;
# in  = 1000100000;
# out = 0000000000;
    # -LEADER- block (19)
    # livenow=1000000000
    # label 15
Lbl15:

    # block (19)
    # livenow=1000000000
    # mul x, val, tmp$17
    lw $t0, -4($fp)	# x
    lw $t1, _val
    mul $t2, $t0, $t1
    sw $t2, -76($fp)	# tmp$17

    # block (19)
    # livenow=0000000001
    # move tmp$17, val
    lw $t0, -76($fp)	# tmp$17
    sw $t0, _val

    # block (19)
    # livenow=0000000001
    # param tmp$17
    lw $t0, -76($fp)	# tmp$17
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (19)
    # livenow=0000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (19)
    # livenow=0000000000
    # leave main

    # block (19)
    # livenow=0000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (19)
    # livenow=0000000000
    # leave main

    # block (19)
    # livenow=0000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
.align 2
_val:  .space 4
.align 2
_flag:  .space 4

.align 2
.data
__nl: .asciiz "\n"
.align 2
.text
# println: print out an integer followed by a newline
 _println:
    li $v0, 1
    lw $a0, 0($sp)
    syscall
    li $v0, 4
    la $a0, __nl
    syscall
    jr $ra

# jump to _main, where user code starts, at start of execution
main:
    j _main

