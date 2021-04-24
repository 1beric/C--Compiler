#	NODE x(0) COST - 1.000000, DEGREES - 0
.text
# function id
# formals: x (loc: 8); 
# locals: 
# space for locals: 0 bytes
#
_id:
# block 0 
# def = 0;
# use = 1;
# in  = 1;
# out = 0;
    # -LEADER- block (0)
    # livenow=1
    # enter id
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (0)
    # livenow=1
    # leave id

    # block (0)
    # livenow=1
    # ret x
    lw $v0, 8($fp)	# x
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=0
    # leave id

    # block (0)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function id

#	LIVERANGE: EDGE x(0) -> tmp$2(1)
#	LIVERANGE: EDGE x(0) -> tmp$1(2)
#	LIVERANGE: EDGE x(0) -> tmp$6(3)
#	LIVERANGE: EDGE x(0) -> tmp$3(4)
#	LIVERANGE: EDGE x(0) -> tmp$7(5)
#	LIVERANGE: EDGE x(0) -> tmp$10(7)
#	LIVERANGE: EDGE x(0) -> tmp$11(8)
#	LIVERANGE: EDGE x(0) -> tmp$8(9)
#	LIVERANGE: EDGE x(0) -> tmp$19(12)
#	LIVERANGE: EDGE x(0) -> tmp$20(13)
#	LIVERANGE: EDGE x(0) -> tmp$21(14)
#	LIVERANGE: EDGE x(0) -> tmp$24(16)
#	LIVERANGE: EDGE x(0) -> tmp$24(16)
#	LIVERANGE: EDGE i(6) -> x(0)
#	LIVERANGE: EDGE i(6) -> tmp$10(7)
#	LIVERANGE: EDGE i(6) -> tmp$11(8)
#	LIVERANGE: EDGE i(6) -> tmp$8(9)
#	LIVERANGE: EDGE i(6) -> tmp$19(12)
#	LIVERANGE: EDGE i(6) -> tmp$20(13)
#	LIVERANGE: EDGE i(6) -> tmp$21(14)
#	LIVERANGE: EDGE i(6) -> tmp$24(16)
#	LIVERANGE: EDGE i(6) -> tmp$24(16)
#	LIVERANGE: EDGE tmp$16(11) -> x(0)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$10(7)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$11(8)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$8(9)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$19(12)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$20(13)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$21(14)
#	LIVERANGE: EDGE tmp$16(11) -> tmp$24(16)
#	LIVERANGE: EDGE tmp$9(10) -> i(6)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$10(7)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$11(8)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$8(9)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$19(12)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$20(13)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$21(14)
#	LIVERANGE: EDGE tmp$9(10) -> tmp$24(16)
#	LIVERANGE: EDGE tmp$23(17) -> x(0)
#	LIVERANGE: EDGE tmp$23(17) -> tmp$20(13)
#	LIVERANGE: EDGE tmp$23(17) -> tmp$21(14)
#	LIVERANGE: EDGE tmp$23(17) -> tmp$24(16)
#	LIVERANGE: EDGE tmp$26(15) -> i(6)
#	LIVERANGE: EDGE tmp$26(15) -> tmp$20(13)
#	LIVERANGE: EDGE tmp$26(15) -> tmp$21(14)
#	LIVERANGE: EDGE tmp$26(15) -> tmp$24(16)
#	NODE x(0) COST - 62.500000, DEGREES - 16
#	NODE tmp$2(1) COST - 1.000000, DEGREES - 1
#	NODE tmp$1(2) COST - 1.000000, DEGREES - 1
#	NODE tmp$6(3) COST - 1.000000, DEGREES - 1
#	NODE tmp$3(4) COST - 2.000000, DEGREES - 1
#	NODE tmp$7(5) COST - 2.000000, DEGREES - 1
#	NODE i(6) COST - 72.000000, DEGREES - 11
#	NODE tmp$10(7) COST - 10.000000, DEGREES - 4
#	NODE tmp$11(8) COST - 10.000000, DEGREES - 4
#	NODE tmp$8(9) COST - 0.500000, DEGREES - 4
#	NODE tmp$9(10) COST - 1.000000, DEGREES - 8
#	NODE tmp$16(11) COST - 10.000000, DEGREES - 8
#	NODE tmp$19(12) COST - 1.000000, DEGREES - 4
#	NODE tmp$20(13) COST - 10.000000, DEGREES - 6
#	NODE tmp$21(14) COST - 20.000000, DEGREES - 6
#	NODE tmp$26(15) COST - 10.000000, DEGREES - 3
#	NODE tmp$24(16) COST - 20.000000, DEGREES - 7
#	NODE tmp$23(17) COST - 10.000000, DEGREES - 4
.text
# function main
# formals: 
# locals: i (loc: -4); x (loc: -8); tmp$0 (loc: -12); tmp$1 (loc: -16); tmp$2 (loc: -20); tmp$3 (loc: -24); tmp$4 (loc: -28); tmp$5 (loc: -32); tmp$6 (loc: -36); tmp$7 (loc: -40); tmp$8 (loc: -44); tmp$9 (loc: -48); tmp$10 (loc: -52); tmp$20 (loc: -56); tmp$11 (loc: -60); tmp$21 (loc: -64); tmp$12 (loc: -68); tmp$22 (loc: -72); tmp$13 (loc: -76); tmp$23 (loc: -80); tmp$14 (loc: -84); tmp$24 (loc: -88); tmp$15 (loc: -92); tmp$25 (loc: -96); tmp$16 (loc: -100); tmp$26 (loc: -104); tmp$17 (loc: -108); tmp$27 (loc: -112); tmp$18 (loc: -116); tmp$19 (loc: -120); 
# space for locals: 120 bytes
#
_main:
# block 1 
# def = 100000000000000000;
# use = 011111000000000000;
# in  = 011111011100111010;
# out = 100000011100111010;
    # -LEADER- block (1)
    # livenow=011111011100111010
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -120($sp)   # allocate stack frame

    # block (1)
    # livenow=011111011100111010
    # move 123, x
    li $t0, 123
    sw $t0, -8($fp)	# x

    # block (1)
    # livenow=111111011100111010
    # param 3
    li $t0, 3
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=111111011100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (1)
    # livenow=111111011100111010
    # retrieve tmp$2
    sw $v0, -20($fp)	# tmp$2

    # block (1)
    # livenow=111111011100111010
    # param tmp$2
    lw $t0, -20($fp)	# tmp$2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=101111011100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (1)
    # livenow=101111011100111010
    # retrieve tmp$3
    sw $v0, -24($fp)	# tmp$3

    # block (1)
    # livenow=101111011100111010
    # param 4
    li $t0, 4
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=101111011100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (1)
    # livenow=101111011100111010
    # retrieve tmp$5
    sw $v0, -32($fp)	# tmp$5

    # block (1)
    # livenow=101111011100111010
    # param tmp$5
    lw $t0, -32($fp)	# tmp$5
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=100111011100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (1)
    # livenow=100111011100111010
    # retrieve tmp$6
    sw $v0, -36($fp)	# tmp$6

    # block (1)
    # livenow=100111011100111010
    # param tmp$6
    lw $t0, -36($fp)	# tmp$6
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=100011011100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (1)
    # livenow=100011011100111010
    # retrieve tmp$7
    sw $v0, -40($fp)	# tmp$7

    # block (1)
    # livenow=100011011100111010
    # if_le tmp$3, tmp$7, label 1
    lw $t0, -24($fp)	# tmp$3
    lw $t1, -40($fp)	# tmp$7
    ble $t0, $t1, Lbl1

# block 2 
# def = 100000000000000000;
# use = 000000000000000000;
# in  = 000000011100111010;
# out = 100000011100111010;
    # -LEADER- block (2)
    # livenow=000000011100111010
    # label 0
Lbl0:

    # block (2)
    # livenow=000000011100111010
    # move 321, x
    li $t0, 321
    sw $t0, -8($fp)	# x

    # block (2)
    # livenow=100000011100111010
    # goto label 2
    j Lbl2

# block 3 
# def = 000000000000000000;
# use = 000000000000000000;
# in  = 100000011100111010;
# out = 100000011100111010;
    # -LEADER- block (3)
    # livenow=100000011100111010
    # label 1
Lbl1:

# block 4 
# def = 000000100000000000;
# use = 000000000000000000;
# in  = 100000011100111010;
# out = 100000111100111010;
    # -LEADER- block (4)
    # livenow=100000011100111010
    # label 2
Lbl2:

    # block (4)
    # livenow=100000011100111010
    # move 12, i
    li $t0, 12
    sw $t0, -4($fp)	# i

# block 5 
# def = 000000000000000000;
# use = 000000111100000000;
# in  = 100000111100111010;
# out = 100000111100111010;
    # -LEADER- block (5)
    # livenow=100000111100111010
    # label 3
Lbl3:

    # block (5)
    # livenow=100000111100111010
    # param i
    lw $t0, -4($fp)	# i
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (5)
    # livenow=100000111100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (5)
    # livenow=100000111100111010
    # retrieve tmp$10
    sw $v0, -52($fp)	# tmp$10

    # block (5)
    # livenow=100000111100111010
    # param tmp$10
    lw $t0, -52($fp)	# tmp$10
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (5)
    # livenow=100000111100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (5)
    # livenow=100000111100111010
    # retrieve tmp$11
    sw $v0, -60($fp)	# tmp$11

    # block (5)
    # livenow=100000111100111010
    # param tmp$11
    lw $t0, -60($fp)	# tmp$11
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (5)
    # livenow=100000111100111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (5)
    # livenow=100000111100111010
    # retrieve tmp$12
    sw $v0, -68($fp)	# tmp$12

    # block (5)
    # livenow=100000111100111010
    # if_le tmp$12, 0, label 5
    lw $t0, -68($fp)	# tmp$12
    li $t1, 0
    ble $t0, $t1, Lbl5

# block 6 
# def = 000000000011000000;
# use = 100000100000000000;
# in  = 100000111100111010;
# out = 100000111100111010;
    # -LEADER- block (6)
    # livenow=100000111100111010
    # label 4
Lbl4:

    # block (6)
    # livenow=100000111100111010
    # sub x, 1, tmp$14
    lw $t0, -8($fp)	# x
    li $t1, 1
    sub $t2, $t0, $t1
    sw $t2, -84($fp)	# tmp$14

    # block (6)
    # livenow=000000111110111010
    # move tmp$14, x
    lw $t0, -84($fp)	# tmp$14
    sw $t0, -8($fp)	# x

    # block (6)
    # livenow=100000111100111010
    # sub i, 1, tmp$16
    lw $t0, -4($fp)	# i
    li $t1, 1
    sub $t2, $t0, $t1
    sw $t2, -100($fp)	# tmp$16

    # block (6)
    # livenow=100000011101111010
    # move tmp$16, i
    lw $t0, -100($fp)	# tmp$16
    sw $t0, -4($fp)	# i

    # block (6)
    # livenow=100000111100111010
    # goto label 3
    j Lbl3

# block 7 
# def = 000000100000000000;
# use = 000000000000100000;
# in  = 100000000000111010;
# out = 100000100000011010;
    # -LEADER- block (7)
    # livenow=100000000000111010
    # label 5
Lbl5:

    # block (7)
    # livenow=100000000000111010
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (7)
    # livenow=100000000000111010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (7)
    # livenow=100000000000111010
    # retrieve tmp$19
    sw $v0, -120($fp)	# tmp$19

    # block (7)
    # livenow=100000000000111010
    # move tmp$19, i
    lw $t0, -120($fp)	# tmp$19
    sw $t0, -4($fp)	# i

# block 8 
# def = 000000000000000000;
# use = 000000100000011000;
# in  = 100000100000011010;
# out = 100000100000011010;
    # -LEADER- block (8)
    # livenow=100000100000011010
    # label 6
Lbl6:

    # block (8)
    # livenow=100000100000011010
    # param i
    lw $t0, -4($fp)	# i
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=100000100000011010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (8)
    # livenow=100000100000011010
    # retrieve tmp$20
    sw $v0, -56($fp)	# tmp$20

    # block (8)
    # livenow=100000100000011010
    # param tmp$20
    lw $t0, -56($fp)	# tmp$20
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=100000100000011010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (8)
    # livenow=100000100000011010
    # retrieve tmp$21
    sw $v0, -64($fp)	# tmp$21

    # block (8)
    # livenow=100000100000011010
    # if_ge tmp$21, 6, label 8
    lw $t0, -64($fp)	# tmp$21
    li $t1, 6
    bge $t0, $t1, Lbl8

# block 9 
# def = 000000000000000101;
# use = 100000100000000010;
# in  = 100000100000011010;
# out = 100000100000011010;
    # -LEADER- block (9)
    # livenow=100000100000011010
    # label 7
Lbl7:

    # block (9)
    # livenow=100000100000011010
    # add x, 2, tmp$26
    lw $t0, -8($fp)	# x
    li $t1, 2
    add $t2, $t0, $t1
    sw $t2, -104($fp)	# tmp$26

    # block (9)
    # livenow=000000100000011110
    # move tmp$26, x
    lw $t0, -104($fp)	# tmp$26
    sw $t0, -8($fp)	# x

    # block (9)
    # livenow=100000100000011010
    # param i
    lw $t0, -4($fp)	# i
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (9)
    # livenow=100000000000011010
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (9)
    # livenow=100000000000011010
    # retrieve tmp$24
    sw $v0, -88($fp)	# tmp$24

    # block (9)
    # livenow=100000000000011010
    # add tmp$24, 1, tmp$23
    lw $t0, -88($fp)	# tmp$24
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -80($fp)	# tmp$23

    # block (9)
    # livenow=100000000000011011
    # move tmp$23, i
    lw $t0, -80($fp)	# tmp$23
    sw $t0, -4($fp)	# i

    # block (9)
    # livenow=100000100000011010
    # goto label 6
    j Lbl6

# block 10 
# def = 000000000000000000;
# use = 100000000000000000;
# in  = 100000000000000000;
# out = 000000000000000000;
    # -LEADER- block (10)
    # livenow=100000000000000000
    # label 8
Lbl8:

    # block (10)
    # livenow=100000000000000000
    # param x
    lw $t0, -8($fp)	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (10)
    # livenow=000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (10)
    # livenow=000000000000000000
    # leave main

    # block (10)
    # livenow=000000000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (10)
    # livenow=000000000000000000
    # leave main

    # block (10)
    # livenow=000000000000000000
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

