#	LIVERANGE: EDGE res(1) -> i(0)
#	LIVERANGE: EDGE j(2) -> i(0)
#	LIVERANGE: EDGE j(2) -> res(1)
#	LIVERANGE: EDGE k(5) -> i(0)
#	LIVERANGE: EDGE k(5) -> res(1)
#	LIVERANGE: EDGE k(5) -> j(2)
#	LIVERANGE: EDGE k(5) -> tmp$2(4)
#	LIVERANGE: EDGE tmp$2(4) -> i(0)
#	LIVERANGE: EDGE tmp$2(4) -> res(1)
#	LIVERANGE: EDGE tmp$2(4) -> j(2)
#	LIVERANGE: EDGE tmp$6(3) -> i(0)
#	LIVERANGE: EDGE tmp$6(3) -> res(1)
#	LIVERANGE: EDGE tmp$6(3) -> j(2)
#	LIVERANGE: EDGE a(6) -> i(0)
#	LIVERANGE: EDGE a(6) -> res(1)
#	LIVERANGE: EDGE a(6) -> j(2)
#	LIVERANGE: EDGE a(6) -> k(5)
#	LIVERANGE: EDGE b(9) -> i(0)
#	LIVERANGE: EDGE b(9) -> res(1)
#	LIVERANGE: EDGE b(9) -> j(2)
#	LIVERANGE: EDGE b(9) -> k(5)
#	LIVERANGE: EDGE b(9) -> a(6)
#	LIVERANGE: EDGE b(9) -> tmp$10(8)
#	LIVERANGE: EDGE tmp$10(8) -> i(0)
#	LIVERANGE: EDGE tmp$10(8) -> res(1)
#	LIVERANGE: EDGE tmp$10(8) -> j(2)
#	LIVERANGE: EDGE tmp$10(8) -> k(5)
#	LIVERANGE: EDGE tmp$10(8) -> a(6)
#	LIVERANGE: EDGE tmp$4(7) -> i(0)
#	LIVERANGE: EDGE tmp$4(7) -> res(1)
#	LIVERANGE: EDGE tmp$4(7) -> j(2)
#	LIVERANGE: EDGE tmp$4(7) -> k(5)
#	LIVERANGE: EDGE tmp$4(7) -> a(6)
#	LIVERANGE: EDGE tmp$13(10) -> i(0)
#	LIVERANGE: EDGE tmp$13(10) -> j(2)
#	LIVERANGE: EDGE tmp$13(10) -> k(5)
#	LIVERANGE: EDGE tmp$13(10) -> a(6)
#	LIVERANGE: EDGE tmp$14(11) -> i(0)
#	LIVERANGE: EDGE tmp$14(11) -> j(2)
#	LIVERANGE: EDGE tmp$14(11) -> k(5)
#	LIVERANGE: EDGE tmp$14(11) -> a(6)
#	LIVERANGE: EDGE tmp$8(12) -> i(0)
#	LIVERANGE: EDGE tmp$8(12) -> res(1)
#	LIVERANGE: EDGE tmp$8(12) -> j(2)
#	LIVERANGE: EDGE tmp$8(12) -> k(5)
#	LIVERANGE: EDGE tmp$17(13) -> i(0)
#	LIVERANGE: EDGE tmp$17(13) -> res(1)
#	LIVERANGE: EDGE tmp$9(14) -> res(1)
#	NODE i(0) COST - 451.000000, COST/DEG - 34.692307
#	NODE res(1) COST - 2252.000000, COST/DEG - 204.727280
#	NODE j(2) COST - 1710.000000, COST/DEG - 142.500000
#	NODE tmp$6(3) COST - 200.000000, COST/DEG - 66.666664
#	NODE tmp$2(4) COST - 20.000000, COST/DEG - 5.000000
#	NODE k(5) COST - 2300.000000, COST/DEG - 209.090912
#	NODE a(6) COST - 3550.000000, COST/DEG - 394.444458
#	NODE tmp$4(7) COST - 200.000000, COST/DEG - 40.000000
#	NODE tmp$10(8) COST - 500.000000, COST/DEG - 83.333336
#	NODE b(9) COST - 2000.000000, COST/DEG - 333.333344
#	NODE tmp$13(10) COST - 250.000000, COST/DEG - 62.500000
#	NODE tmp$14(11) COST - 500.000000, COST/DEG - 125.000000
#	NODE tmp$8(12) COST - 50.000000, COST/DEG - 12.500000
#	NODE tmp$17(13) COST - 100.000000, COST/DEG - 50.000000
.text
# function main
# formals: 
# locals: res (loc: -4); a (loc: -8); b (loc: -12); i (loc: -16); j (loc: -20); k (loc: -24); tmp$0 (loc: -28); tmp$1 (loc: -32); tmp$2 (loc: -36); tmp$3 (loc: -40); tmp$4 (loc: -44); tmp$5 (loc: -48); tmp$6 (loc: -52); tmp$7 (loc: -56); tmp$8 (loc: -60); tmp$9 (loc: -64); tmp$10 (loc: -68); tmp$20 (loc: -72); tmp$11 (loc: -76); tmp$12 (loc: -80); tmp$13 (loc: -84); tmp$14 (loc: -88); tmp$15 (loc: -92); tmp$16 (loc: -96); tmp$17 (loc: -100); tmp$18 (loc: -104); tmp$19 (loc: -108); 
# space for locals: 108 bytes
#
_main:
# block 0 
# def = 110000000000000;
# use = 000000000000000;
# in  = 000000000000000;
# out = 110000000000000;
    # -LEADER- block (0)
    # livenow=000000000000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -108($sp)   # allocate stack frame

    # block (0)
    # livenow=000000000000000
    # move 0, i
    li $t0, 0
    sw $t0, -16($fp)	# i

    # block (0)
    # livenow=100000000000000
    # move 123, res
    li $t0, 123
    sw $t0, -4($fp)	# res

# block 1 
# def = 000000000000000;
# use = 100000000000000;
# in  = 110000000000000;
# out = 110000000000000;
    # -LEADER- block (1)
    # livenow=110000000000000
    # label 0
Lbl0:

    # block (1)
    # livenow=110000000000000
    # if_ge i, 5, label 2
    lw $t0, -16($fp)	# i
    li $t1, 5
    bge $t0, $t1, Lbl2

# block 2 
# def = 001000000000000;
# use = 000000000000000;
# in  = 110000000000000;
# out = 111000000000000;
    # -LEADER- block (2)
    # livenow=110000000000000
    # label 1
Lbl1:

    # block (2)
    # livenow=110000000000000
    # move 0, j
    li $t0, 0
    sw $t0, -20($fp)	# j

# block 3 
# def = 000000000000000;
# use = 001000000000000;
# in  = 111000000000000;
# out = 111000000000000;
    # -LEADER- block (3)
    # livenow=111000000000000
    # label 3
Lbl3:

    # block (3)
    # livenow=111000000000000
    # if_ge j, 5, label 5
    lw $t0, -20($fp)	# j
    li $t1, 5
    bge $t0, $t1, Lbl5

# block 4 
# def = 000111000000000;
# use = 101000000000000;
# in  = 111000000000000;
# out = 111001000000000;
    # -LEADER- block (4)
    # livenow=111000000000000
    # label 4
Lbl4:

    # block (4)
    # livenow=111000000000000
    # add i, j, tmp$6
    lw $t0, -16($fp)	# i
    lw $t1, -20($fp)	# j
    add $t2, $t0, $t1
    sw $t2, -52($fp)	# tmp$6

    # block (4)
    # livenow=111100000000000
    # div tmp$6, 2, tmp$5
    lw $t0, -52($fp)	# tmp$6
    li $t1, 2
    div $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$5

    # block (4)
    # livenow=111010000000000
    # move tmp$5, k
    lw $t0, -48($fp)	# tmp$5
    sw $t0, -24($fp)	# k

    # block (4)
    # livenow=111011000000000
    # if_le tmp$5, i, label 7
    lw $t0, -48($fp)	# tmp$5
    lw $t1, -16($fp)	# i
    ble $t0, $t1, Lbl7

# block 5 
# def = 000000100000000;
# use = 000000000000000;
# in  = 111001000000000;
# out = 111001100000000;
    # -LEADER- block (5)
    # livenow=111001000000000
    # label 6
Lbl6:

    # block (5)
    # livenow=111001000000000
    # move 0, a
    li $t0, 0
    sw $t0, -8($fp)	# a

# block 6 
# def = 000000000000000;
# use = 000000100000000;
# in  = 111001100000000;
# out = 111001100000000;
    # -LEADER- block (6)
    # livenow=111001100000000
    # label 9
Lbl9:

    # block (6)
    # livenow=111001100000000
    # if_ge a, 5, label 11
    lw $t0, -8($fp)	# a
    li $t1, 5
    bge $t0, $t1, Lbl11

# block 7 
# def = 000000011100000;
# use = 001001100000000;
# in  = 111001100000000;
# out = 111001100100000;
    # -LEADER- block (7)
    # livenow=111001100000000
    # label 10
Lbl10:

    # block (7)
    # livenow=111001100000000
    # add a, k, tmp$11
    lw $t0, -8($fp)	# a
    lw $t1, -24($fp)	# k
    add $t2, $t0, $t1
    sw $t2, -76($fp)	# tmp$11

    # block (7)
    # livenow=111001110000000
    # div tmp$11, 2, tmp$10
    lw $t0, -76($fp)	# tmp$11
    li $t1, 2
    div $t2, $t0, $t1
    sw $t2, -68($fp)	# tmp$10

    # block (7)
    # livenow=111001101000000
    # move tmp$10, b
    lw $t0, -68($fp)	# tmp$10
    sw $t0, -12($fp)	# b

    # block (7)
    # livenow=111001101100000
    # if_le tmp$10, j, label 13
    lw $t0, -68($fp)	# tmp$10
    lw $t1, -20($fp)	# j
    ble $t0, $t1, Lbl13

# block 8 
# def = 000000000010000;
# use = 010000000100000;
# in  = 111001100100000;
# out = 111001100000000;
    # -LEADER- block (8)
    # livenow=111001100100000
    # label 12
Lbl12:

    # block (8)
    # livenow=111001100100000
    # add res, b, tmp$13
    lw $t0, -4($fp)	# res
    lw $t1, -12($fp)	# b
    add $t2, $t0, $t1
    sw $t2, -84($fp)	# tmp$13

    # block (8)
    # livenow=101001100010000
    # move tmp$13, res
    lw $t0, -84($fp)	# tmp$13
    sw $t0, -4($fp)	# res

    # block (8)
    # livenow=111001100000000
    # goto label 14
    j Lbl14

# block 9 
# def = 000000000001000;
# use = 010001000000000;
# in  = 111001100000000;
# out = 111001100000000;
    # -LEADER- block (9)
    # livenow=111001100000000
    # label 13
Lbl13:

    # block (9)
    # livenow=111001100000000
    # add res, k, tmp$14
    lw $t0, -4($fp)	# res
    lw $t1, -24($fp)	# k
    add $t2, $t0, $t1
    sw $t2, -88($fp)	# tmp$14

    # block (9)
    # livenow=101001100001000
    # move tmp$14, res
    lw $t0, -88($fp)	# tmp$14
    sw $t0, -4($fp)	# res

# block 10 
# def = 000000000000100;
# use = 000000100000000;
# in  = 111001100000000;
# out = 111001100000000;
    # -LEADER- block (10)
    # livenow=111001100000000
    # label 14
Lbl14:

    # block (10)
    # livenow=111001100000000
    # add a, 1, tmp$15
    lw $t0, -8($fp)	# a
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -92($fp)	# tmp$15

    # block (10)
    # livenow=111001000000100
    # move tmp$15, a
    lw $t0, -92($fp)	# tmp$15
    sw $t0, -8($fp)	# a

    # block (10)
    # livenow=111001100000000
    # goto label 9
    j Lbl9

# block 11 
# def = 000000000000000;
# use = 000000000000000;
# in  = 111000000000000;
# out = 111000000000000;
    # -LEADER- block (11)
    # livenow=111000000000000
    # label 11
Lbl11:

    # block (11)
    # livenow=111000000000000
    # goto label 8
    j Lbl8

# block 12 
# def = 000000000000000;
# use = 000000000000000;
# in  = 111000000000000;
# out = 111000000000000;
    # -LEADER- block (12)
    # livenow=111000000000000
    # label 7
Lbl7:

# block 13 
# def = 000000000000010;
# use = 001000000000000;
# in  = 111000000000000;
# out = 111000000000000;
    # -LEADER- block (13)
    # livenow=111000000000000
    # label 8
Lbl8:

    # block (13)
    # livenow=111000000000000
    # add j, 1, tmp$17
    lw $t0, -20($fp)	# j
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -100($fp)	# tmp$17

    # block (13)
    # livenow=110000000000010
    # move tmp$17, j
    lw $t0, -100($fp)	# tmp$17
    sw $t0, -20($fp)	# j

    # block (13)
    # livenow=111000000000000
    # goto label 3
    j Lbl3

# block 14 
# def = 000000000000001;
# use = 100000000000000;
# in  = 110000000000000;
# out = 110000000000000;
    # -LEADER- block (14)
    # livenow=110000000000000
    # label 5
Lbl5:

    # block (14)
    # livenow=110000000000000
    # add i, 1, tmp$19
    lw $t0, -16($fp)	# i
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -108($fp)	# tmp$19

    # block (14)
    # livenow=010000000000001
    # move tmp$19, i
    lw $t0, -108($fp)	# tmp$19
    sw $t0, -16($fp)	# i

    # block (14)
    # livenow=110000000000000
    # goto label 0
    j Lbl0

# block 15 
# def = 000000000000000;
# use = 010000000000000;
# in  = 010000000000000;
# out = 000000000000000;
    # -LEADER- block (15)
    # livenow=010000000000000
    # label 2
Lbl2:

    # block (15)
    # livenow=010000000000000
    # param res
    lw $t0, -4($fp)	# res
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (15)
    # livenow=000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (15)
    # livenow=000000000000000
    # leave main

    # block (15)
    # livenow=000000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (15)
    # livenow=000000000000000
    # leave main

    # block (15)
    # livenow=000000000000000
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

