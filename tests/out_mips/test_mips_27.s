#	LIVERANGE: EDGE i(1) -> res(0)
#	LIVERANGE: EDGE j(2) -> res(0)
#	LIVERANGE: EDGE j(2) -> i(1)
#	LIVERANGE: EDGE k(3) -> res(0)
#	LIVERANGE: EDGE k(3) -> i(1)
#	LIVERANGE: EDGE k(3) -> j(2)
#	LIVERANGE: EDGE k(3) -> j(2)
#	LIVERANGE: EDGE tmp$7(8) -> res(0)
#	LIVERANGE: EDGE tmp$7(8) -> i(1)
#	LIVERANGE: EDGE tmp$7(8) -> j(2)
#	LIVERANGE: EDGE tmp$6(7) -> i(1)
#	LIVERANGE: EDGE tmp$6(7) -> j(2)
#	LIVERANGE: EDGE tmp$6(7) -> k(3)
#	LIVERANGE: EDGE tmp$12(6) -> res(0)
#	LIVERANGE: EDGE tmp$12(6) -> i(1)
#	LIVERANGE: EDGE tmp$12(6) -> j(2)
#	LIVERANGE: EDGE tmp$12(6) -> k(3)
#	LIVERANGE: EDGE tmp$5(5) -> res(0)
#	LIVERANGE: EDGE tmp$5(5) -> i(1)
#	LIVERANGE: EDGE tmp$5(5) -> j(2)
#	LIVERANGE: EDGE tmp$5(5) -> k(3)
#	LIVERANGE: EDGE tmp$2(4) -> res(0)
#	LIVERANGE: EDGE tmp$2(4) -> i(1)
#	LIVERANGE: EDGE tmp$2(4) -> j(2)
#	LIVERANGE: EDGE tmp$2(4) -> k(3)
#	LIVERANGE: EDGE tmp$16(9) -> res(0)
#	LIVERANGE: EDGE tmp$16(9) -> i(1)
#	LIVERANGE: EDGE tmp$3(10) -> res(0)
#	NODE res(0) COST - 3002.000000, DEGREES - 8
#	NODE i(1) COST - 2051.000000, DEGREES - 9
#	NODE j(2) COST - 2510.000000, DEGREES - 9
#	NODE k(3) COST - 7100.000000, DEGREES - 8
#	NODE tmp$2(4) COST - 20.000000, DEGREES - 4
#	NODE tmp$5(5) COST - 10.000000, DEGREES - 4
#	NODE tmp$12(6) COST - 2000.000000, DEGREES - 4
#	NODE tmp$6(7) COST - 200.000000, DEGREES - 3
#	NODE tmp$7(8) COST - 100.000000, DEGREES - 3
#	NODE tmp$16(9) COST - 100.000000, DEGREES - 2
#	NODE tmp$3(10) COST - 10.000000, DEGREES - 0
#	NODE tmp$3(10) IN REG $s1
#	NODE tmp$16(9) IN REG $s2
#	NODE tmp$7(8) IN REG $s3
#	NODE tmp$6(7) IN REG $s0
#	NODE tmp$12(6) IN REG $s4
#	NODE tmp$5(5) IN REG $s4
#	NODE tmp$2(4) IN REG $s4
#	NODE k(3) IN REG $s3
#	NODE j(2) IN REG $s2
#	NODE i(1) IN REG $s1
#	NODE res(0) IN REG $s0
.text
# function main
# formals: 
# locals: res (loc: -4); i (loc: -8); j (loc: -12); k (loc: -16); tmp$0 (loc: -20); tmp$1 (loc: -24); tmp$2 (loc: -28); tmp$3 (loc: -32); tmp$4 (loc: -36); tmp$5 (loc: -40); tmp$6 (loc: -44); tmp$7 (loc: -48); tmp$8 (loc: -52); tmp$9 (loc: -56); tmp$10 (loc: -60); tmp$11 (loc: -64); tmp$12 (loc: -68); tmp$13 (loc: -72); tmp$14 (loc: -76); tmp$15 (loc: -80); tmp$16 (loc: -84); tmp$17 (loc: -88); 
# space for locals: 88 bytes
#
_main:
# block 0 
# def = 11000000000;
# use = 00000000000;
# in  = 00000000000;
# out = 11000000000;
    # -LEADER- block (0)
    # livenow=00000000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -88($sp)   # allocate stack frame

    # block (0)
    # livenow=00000000000
    # move 0, res
    li $t0, 0
    sw $t0, -4($fp)	# res

    # block (0)
    # livenow=10000000000
    # move 0, i
    li $t0, 0
    sw $t0, -8($fp)	# i

# block 1 
# def = 00000000000;
# use = 01000000000;
# in  = 11000000000;
# out = 11000000000;
    # -LEADER- block (1)
    # livenow=11000000000
    # label 0
Lbl0:

    # block (1)
    # livenow=11000000000
    # if_ge i, 5, label 2
    lw $t0, -8($fp)	# i
    li $t1, 5
    bge $t0, $t1, Lbl2

# block 2 
# def = 00100000000;
# use = 00000000000;
# in  = 11000000000;
# out = 11100000000;
    # -LEADER- block (2)
    # livenow=11000000000
    # label 1
Lbl1:

    # block (2)
    # livenow=11000000000
    # move 0, j
    li $t0, 0
    sw $t0, -12($fp)	# j

# block 3 
# def = 00000000000;
# use = 00100000000;
# in  = 11100000000;
# out = 11100000000;
    # -LEADER- block (3)
    # livenow=11100000000
    # label 3
Lbl3:

    # block (3)
    # livenow=11100000000
    # if_ge j, 10, label 5
    lw $t0, -12($fp)	# j
    li $t1, 10
    bge $t0, $t1, Lbl5

# block 4 
# def = 00010000000;
# use = 00000000000;
# in  = 11100000000;
# out = 11110000000;
    # -LEADER- block (4)
    # livenow=11100000000
    # label 4
Lbl4:

    # block (4)
    # livenow=11100000000
    # move 0, k
    li $t0, 0
    sw $t0, -16($fp)	# k

# block 5 
# def = 00000000000;
# use = 00010000000;
# in  = 11110000000;
# out = 11110000000;
    # -LEADER- block (5)
    # livenow=11110000000
    # label 6
Lbl6:

    # block (5)
    # livenow=11110000000
    # if_ge k, 15, label 8
    lw $t0, -16($fp)	# k
    li $t1, 15
    bge $t0, $t1, Lbl8

# block 6 
# def = 00001111100;
# use = 11110000000;
# in  = 11110000000;
# out = 11110000000;
    # -LEADER- block (6)
    # livenow=11110000000
    # label 7
Lbl7:

    # block (6)
    # livenow=11110000000
    # add i, j, tmp$14
    lw $t0, -8($fp)	# i
    lw $t1, -12($fp)	# j
    add $t2, $t0, $t1
    sw $t2, -76($fp)	# tmp$14

    # block (6)
    # livenow=11111000000
    # add tmp$14, k, tmp$13
    lw $t0, -76($fp)	# tmp$14
    lw $t1, -16($fp)	# k
    add $t2, $t0, $t1
    sw $t2, -72($fp)	# tmp$13

    # block (6)
    # livenow=11110100000
    # div tmp$13, 3, tmp$12
    lw $t0, -72($fp)	# tmp$13
    li $t1, 3
    div $t2, $t0, $t1
    sw $t2, -68($fp)	# tmp$12

    # block (6)
    # livenow=11110010000
    # add res, tmp$12, tmp$11
    lw $t0, -4($fp)	# res
    lw $t1, -68($fp)	# tmp$12
    add $t2, $t0, $t1
    sw $t2, -64($fp)	# tmp$11

    # block (6)
    # livenow=01110001000
    # move tmp$11, res
    lw $t0, -64($fp)	# tmp$11
    sw $t0, -4($fp)	# res

    # block (6)
    # livenow=11110000000
    # add k, 3, tmp$9
    lw $t0, -16($fp)	# k
    li $t1, 3
    add $t2, $t0, $t1
    sw $t2, -56($fp)	# tmp$9

    # block (6)
    # livenow=11100000100
    # move tmp$9, k
    lw $t0, -56($fp)	# tmp$9
    sw $t0, -16($fp)	# k

    # block (6)
    # livenow=11110000000
    # goto label 6
    j Lbl6

# block 7 
# def = 00000000010;
# use = 00100000000;
# in  = 11100000000;
# out = 11100000000;
    # -LEADER- block (7)
    # livenow=11100000000
    # label 8
Lbl8:

    # block (7)
    # livenow=11100000000
    # add j, 2, tmp$16
    lw $t0, -12($fp)	# j
    li $t1, 2
    add $t2, $t0, $t1
    sw $t2, -84($fp)	# tmp$16

    # block (7)
    # livenow=11000000010
    # move tmp$16, j
    lw $t0, -84($fp)	# tmp$16
    sw $t0, -12($fp)	# j

    # block (7)
    # livenow=11100000000
    # goto label 3
    j Lbl3

# block 8 
# def = 00000000001;
# use = 01000000000;
# in  = 11000000000;
# out = 11000000000;
    # -LEADER- block (8)
    # livenow=11000000000
    # label 5
Lbl5:

    # block (8)
    # livenow=11000000000
    # add i, 1, tmp$3
    lw $t0, -8($fp)	# i
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -32($fp)	# tmp$3

    # block (8)
    # livenow=10000000001
    # move tmp$3, i
    lw $t0, -32($fp)	# tmp$3
    sw $t0, -8($fp)	# i

    # block (8)
    # livenow=11000000000
    # goto label 0
    j Lbl0

# block 9 
# def = 00000000000;
# use = 10000000000;
# in  = 10000000000;
# out = 00000000000;
    # -LEADER- block (9)
    # livenow=10000000000
    # label 2
Lbl2:

    # block (9)
    # livenow=10000000000
    # param res
    lw $t0, -4($fp)	# res
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (9)
    # livenow=00000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (9)
    # livenow=00000000000
    # leave main

    # block (9)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (9)
    # livenow=00000000000
    # leave main

    # block (9)
    # livenow=00000000000
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

