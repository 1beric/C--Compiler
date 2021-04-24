#	LIVERANGE: EDGE tmp$4(8) -> a(0)
#	LIVERANGE: EDGE tmp$4(8) -> LIM(1)
#	LIVERANGE: EDGE tmp$4(8) -> res(2)
#	LIVERANGE: EDGE tmp$4(8) -> b(3)
#	LIVERANGE: EDGE tmp$4(8) -> c(4)
#	LIVERANGE: EDGE tmp$4(8) -> d(5)
#	LIVERANGE: EDGE tmp$4(8) -> e(6)
#	LIVERANGE: EDGE tmp$7(7) -> a(0)
#	LIVERANGE: EDGE tmp$7(7) -> LIM(1)
#	LIVERANGE: EDGE tmp$7(7) -> res(2)
#	LIVERANGE: EDGE tmp$7(7) -> b(3)
#	LIVERANGE: EDGE tmp$7(7) -> c(4)
#	LIVERANGE: EDGE tmp$7(7) -> d(5)
#	LIVERANGE: EDGE tmp$7(7) -> e(6)
#	LIVERANGE: EDGE tmp$11(9) -> a(0)
#	LIVERANGE: EDGE tmp$11(9) -> LIM(1)
#	LIVERANGE: EDGE tmp$11(9) -> res(2)
#	LIVERANGE: EDGE tmp$11(9) -> b(3)
#	LIVERANGE: EDGE tmp$11(9) -> c(4)
#	LIVERANGE: EDGE tmp$11(9) -> d(5)
#	LIVERANGE: EDGE tmp$5(10) -> a(0)
#	LIVERANGE: EDGE tmp$5(10) -> LIM(1)
#	LIVERANGE: EDGE tmp$5(10) -> res(2)
#	LIVERANGE: EDGE tmp$5(10) -> b(3)
#	LIVERANGE: EDGE tmp$5(10) -> c(4)
#	LIVERANGE: EDGE tmp$15(11) -> a(0)
#	LIVERANGE: EDGE tmp$15(11) -> LIM(1)
#	LIVERANGE: EDGE tmp$15(11) -> res(2)
#	LIVERANGE: EDGE tmp$15(11) -> b(3)
#	LIVERANGE: EDGE tmp$6(12) -> a(0)
#	LIVERANGE: EDGE tmp$6(12) -> LIM(1)
#	LIVERANGE: EDGE tmp$6(12) -> res(2)
#	NODE a(0) COST - 51.000000, DEGREES - 6
#	NODE LIM(1) COST - 222221.000000, DEGREES - 6
#	NODE res(2) COST - 300002.000000, DEGREES - 5
#	NODE b(3) COST - 510.000000, DEGREES - 5
#	NODE c(4) COST - 5100.000000, DEGREES - 4
#	NODE d(5) COST - 51000.000000, DEGREES - 3
#	NODE e(6) COST - 510000.000000, DEGREES - 2
#	NODE tmp$7(7) COST - 100000.000000, DEGREES - 7
#	NODE tmp$4(8) COST - 100.000000, DEGREES - 7
#	NODE tmp$11(9) COST - 10000.000000, DEGREES - 6
#	NODE tmp$5(10) COST - 1000.000000, DEGREES - 5
#	NODE tmp$15(11) COST - 100.000000, DEGREES - 4
#	NODE tmp$6(12) COST - 10000.000000, DEGREES - 2
#	NODE tmp$6(12) IN REG $s1
#	NODE tmp$15(11) IN REG $s1
#	NODE tmp$5(10) IN REG $s1
#	NODE tmp$11(9) IN REG $s1
#	NODE tmp$4(8) IN REG $s1
#	NODE tmp$7(7) IN REG $s1
#	NODE e(6) IN REG $s0
#	NODE d(5) IN REG $s0
#	NODE c(4) IN REG $s0
#	NODE b(3) IN REG $s0
#	NODE res(2) IN REG $s0
#	NODE LIM(1) IN REG $s0
#	NODE a(0) IN REG $s0
.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); tmp$6 (loc: -28); tmp$7 (loc: -32); tmp$8 (loc: -36); tmp$9 (loc: -40); tmp$10 (loc: -44); tmp$11 (loc: -48); tmp$12 (loc: -52); tmp$13 (loc: -56); tmp$14 (loc: -60); tmp$15 (loc: -64); tmp$16 (loc: -68); tmp$17 (loc: -72); tmp$18 (loc: -76); 
# space for locals: 76 bytes
#
_main:
# block 0 
# def = 1110000000000;
# use = 0000000000000;
# in  = 0000000000000;
# out = 1110000000000;
    # -LEADER- block (0)
    # livenow=1110000000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -76($sp)   # allocate stack frame

    # block (0)
    # livenow=1110000000000
    # move 0, a
    li $t0, 0
    sw $t0, _a

    # block (0)
    # livenow=1110000000000
    # move 3, LIM
    li $t0, 3
    sw $t0, _LIM

    # block (0)
    # livenow=1110000000000
    # move 0, res
    li $t0, 0
    sw $t0, _res

# block 1 
# def = 0000000000000;
# use = 1100000000000;
# in  = 1110000000000;
# out = 1110000000000;
    # -LEADER- block (1)
    # livenow=1110000000000
    # label 0
Lbl0:

    # block (1)
    # livenow=1110000000000
    # if_ge a, LIM, label 2
    lw $t0, _a
    lw $t1, _LIM
    bge $t0, $t1, Lbl2

# block 2 
# def = 0001000000000;
# use = 0000000000000;
# in  = 1110000000000;
# out = 1111000000000;
    # -LEADER- block (2)
    # livenow=1111000000000
    # label 1
Lbl1:

    # block (2)
    # livenow=1111000000000
    # move 0, b
    li $t0, 0
    sw $t0, _b

# block 3 
# def = 0000000000000;
# use = 0101000000000;
# in  = 1111000000000;
# out = 1111000000000;
    # -LEADER- block (3)
    # livenow=1111000000000
    # label 3
Lbl3:

    # block (3)
    # livenow=1111000000000
    # if_ge b, LIM, label 5
    lw $t0, _b
    lw $t1, _LIM
    bge $t0, $t1, Lbl5

# block 4 
# def = 0000100000000;
# use = 0000000000000;
# in  = 1111000000000;
# out = 1111100000000;
    # -LEADER- block (4)
    # livenow=1111100000000
    # label 4
Lbl4:

    # block (4)
    # livenow=1111100000000
    # move 0, c
    li $t0, 0
    sw $t0, _c

# block 5 
# def = 0000000000000;
# use = 0100100000000;
# in  = 1111100000000;
# out = 1111100000000;
    # -LEADER- block (5)
    # livenow=1111100000000
    # label 6
Lbl6:

    # block (5)
    # livenow=1111100000000
    # if_ge c, LIM, label 8
    lw $t0, _c
    lw $t1, _LIM
    bge $t0, $t1, Lbl8

# block 6 
# def = 0000010000000;
# use = 0000000000000;
# in  = 1111100000000;
# out = 1111110000000;
    # -LEADER- block (6)
    # livenow=1111110000000
    # label 7
Lbl7:

    # block (6)
    # livenow=1111110000000
    # move 0, d
    li $t0, 0
    sw $t0, _d

# block 7 
# def = 0000000000000;
# use = 0100010000000;
# in  = 1111110000000;
# out = 1111110000000;
    # -LEADER- block (7)
    # livenow=1111110000000
    # label 9
Lbl9:

    # block (7)
    # livenow=1111110000000
    # if_ge d, LIM, label 11
    lw $t0, _d
    lw $t1, _LIM
    bge $t0, $t1, Lbl11

# block 8 
# def = 0000001000000;
# use = 0000000000000;
# in  = 1111110000000;
# out = 1111111000000;
    # -LEADER- block (8)
    # livenow=1111111000000
    # label 10
Lbl10:

    # block (8)
    # livenow=1111111000000
    # move 0, e
    li $t0, 0
    sw $t0, _e

# block 9 
# def = 0000000000000;
# use = 0100001000000;
# in  = 1111111000000;
# out = 1111111000000;
    # -LEADER- block (9)
    # livenow=1111111000000
    # label 12
Lbl12:

    # block (9)
    # livenow=1111111000000
    # if_ge e, LIM, label 14
    lw $t0, _e
    lw $t1, _LIM
    bge $t0, $t1, Lbl14

# block 10 
# def = 0000000110000;
# use = 0010001000000;
# in  = 1111111000000;
# out = 1111111000000;
    # -LEADER- block (10)
    # livenow=1111111000000
    # label 13
Lbl13:

    # block (10)
    # livenow=1111111000000
    # add res, 1, tmp$7
    lw $t0, _res
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -32($fp)	# tmp$7

    # block (10)
    # livenow=1111111100000
    # move tmp$7, res
    lw $t0, -32($fp)	# tmp$7
    sw $t0, _res

    # block (10)
    # livenow=1111111000000
    # add e, 1, tmp$9
    lw $t0, _e
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -40($fp)	# tmp$9

    # block (10)
    # livenow=1111111010000
    # move tmp$9, e
    lw $t0, -40($fp)	# tmp$9
    sw $t0, _e

    # block (10)
    # livenow=1111111000000
    # goto label 12
    j Lbl12

# block 11 
# def = 0000000001000;
# use = 0000010000000;
# in  = 1111110000000;
# out = 1111110000000;
    # -LEADER- block (11)
    # livenow=1111110000000
    # label 14
Lbl14:

    # block (11)
    # livenow=1111110000000
    # add d, 1, tmp$11
    lw $t0, _d
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$11

    # block (11)
    # livenow=1111110001000
    # move tmp$11, d
    lw $t0, -48($fp)	# tmp$11
    sw $t0, _d

    # block (11)
    # livenow=1111110000000
    # goto label 9
    j Lbl9

# block 12 
# def = 0000000000100;
# use = 0000100000000;
# in  = 1111100000000;
# out = 1111100000000;
    # -LEADER- block (12)
    # livenow=1111100000000
    # label 11
Lbl11:

    # block (12)
    # livenow=1111100000000
    # add c, 1, tmp$13
    lw $t0, _c
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -56($fp)	# tmp$13

    # block (12)
    # livenow=1111100000100
    # move tmp$13, c
    lw $t0, -56($fp)	# tmp$13
    sw $t0, _c

    # block (12)
    # livenow=1111100000000
    # goto label 6
    j Lbl6

# block 13 
# def = 0000000000010;
# use = 0001000000000;
# in  = 1111000000000;
# out = 1111000000000;
    # -LEADER- block (13)
    # livenow=1111000000000
    # label 8
Lbl8:

    # block (13)
    # livenow=1111000000000
    # add b, 1, tmp$15
    lw $t0, _b
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -64($fp)	# tmp$15

    # block (13)
    # livenow=1111000000010
    # move tmp$15, b
    lw $t0, -64($fp)	# tmp$15
    sw $t0, _b

    # block (13)
    # livenow=1111000000000
    # goto label 3
    j Lbl3

# block 14 
# def = 0000000000001;
# use = 1000000000000;
# in  = 1110000000000;
# out = 1110000000000;
    # -LEADER- block (14)
    # livenow=1110000000000
    # label 5
Lbl5:

    # block (14)
    # livenow=1110000000000
    # add a, 1, tmp$17
    lw $t0, _a
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -72($fp)	# tmp$17

    # block (14)
    # livenow=1110000000001
    # move tmp$17, a
    lw $t0, -72($fp)	# tmp$17
    sw $t0, _a

    # block (14)
    # livenow=1110000000000
    # goto label 0
    j Lbl0

# block 15 
# def = 0000000000000;
# use = 0010000000000;
# in  = 0010000000000;
# out = 0000000000000;
    # -LEADER- block (15)
    # livenow=0000000000000
    # label 2
Lbl2:

    # block (15)
    # livenow=0000000000000
    # param res
    lw $t0, _res
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (15)
    # livenow=0000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (15)
    # livenow=0000000000000
    # leave main

    # block (15)
    # livenow=0000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (15)
    # livenow=0000000000000
    # leave main

    # block (15)
    # livenow=0000000000000
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
_res:  .space 4
.align 2
_a:  .space 4
.align 2
_b:  .space 4
.align 2
_c:  .space 4
.align 2
_d:  .space 4
.align 2
_e:  .space 4
.align 2
_LIM:  .space 4

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

