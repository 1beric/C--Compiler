#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE y(1) COST - 2.000000, DEGREES - 0
#	NODE tmp$0(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$0(2) IN REG $s0
.text
# function add
# formals: x (loc: 8); y (loc: 12); 
# locals: tmp$0 (loc: -4); 
# space for locals: 4 bytes
#
_add:
# block 0 
# def = 001;
# use = 110;
# in  = 110;
# out = 000;
    # -LEADER- block (0)
    # livenow=110
    # enter add
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=110
    # add x, y, tmp$0
    lw $t0, 8($fp)	# x
    lw $t1, 12($fp)	# y
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=001
    # leave add
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=001
    # ret tmp$0
    move $v0, $s0	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave add
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function add

#	LIVERANGE: EDGE i(1) -> f(0)
#	LIVERANGE: EDGE i(1) -> tmp$2(2)
#	LIVERANGE: EDGE i(1) -> tmp$12(3)
#	LIVERANGE: EDGE i(1) -> tmp$7(5)
#	LIVERANGE: EDGE i(1) -> tmp$8(6)
#	LIVERANGE: EDGE i(1) -> tmp$9(7)
#	LIVERANGE: EDGE i(1) -> tmp$11(8)
#	LIVERANGE: EDGE f(0) -> tmp$2(2)
#	LIVERANGE: EDGE f(0) -> tmp$12(3)
#	LIVERANGE: EDGE f(0) -> tmp$7(5)
#	LIVERANGE: EDGE f(0) -> tmp$8(6)
#	LIVERANGE: EDGE f(0) -> tmp$9(7)
#	LIVERANGE: EDGE f(0) -> tmp$11(8)
#	LIVERANGE: EDGE tmp$4(10) -> f(0)
#	LIVERANGE: EDGE tmp$4(10) -> tmp$2(2)
#	LIVERANGE: EDGE tmp$4(10) -> tmp$12(3)
#	LIVERANGE: EDGE tmp$4(10) -> tmp$7(5)
#	LIVERANGE: EDGE tmp$4(10) -> tmp$8(6)
#	LIVERANGE: EDGE tmp$4(10) -> tmp$9(7)
#	LIVERANGE: EDGE tmp$4(10) -> tmp$11(8)
#	LIVERANGE: EDGE tmp$6(9) -> i(1)
#	LIVERANGE: EDGE tmp$6(9) -> tmp$2(2)
#	LIVERANGE: EDGE tmp$6(9) -> tmp$12(3)
#	LIVERANGE: EDGE tmp$6(9) -> tmp$7(5)
#	LIVERANGE: EDGE tmp$6(9) -> tmp$8(6)
#	LIVERANGE: EDGE tmp$6(9) -> tmp$9(7)
#	LIVERANGE: EDGE tmp$6(9) -> tmp$11(8)
#	LIVERANGE: EDGE tmp$3(4) -> f(0)
#	LIVERANGE: EDGE tmp$3(4) -> i(1)
#	LIVERANGE: EDGE tmp$3(4) -> tmp$2(2)
#	LIVERANGE: EDGE tmp$3(4) -> tmp$12(3)
#	LIVERANGE: EDGE tmp$3(4) -> tmp$7(5)
#	LIVERANGE: EDGE tmp$3(4) -> tmp$8(6)
#	LIVERANGE: EDGE tmp$3(4) -> tmp$9(7)
#	LIVERANGE: EDGE tmp$3(4) -> tmp$11(8)
#	NODE f(0) COST - 32.000000, DEGREES - 9
#	NODE i(1) COST - 61.000000, DEGREES - 9
#	NODE tmp$2(2) COST - 1.000000, DEGREES - 5
#	NODE tmp$12(3) COST - 10.000000, DEGREES - 5
#	NODE tmp$3(4) COST - 20.000000, DEGREES - 7
#	NODE tmp$7(5) COST - 10.000000, DEGREES - 5
#	NODE tmp$8(6) COST - 10.000000, DEGREES - 5
#	NODE tmp$9(7) COST - 10.000000, DEGREES - 5
#	NODE tmp$11(8) COST - 10.000000, DEGREES - 4
#	NODE tmp$6(9) COST - 10.000000, DEGREES - 7
#	NODE tmp$4(10) COST - 10.000000, DEGREES - 7
#	NODE tmp$2(2) IN REG $s2
#	NODE i(1) IN REG $s1
#	NODE f(0) IN REG $s0
#	NODE tmp$4(10) IN REG $s1
#	NODE tmp$6(9) IN REG $s0
#	NODE tmp$11(8) IN REG $s2
#	NODE tmp$9(7) IN REG $s2
#	NODE tmp$8(6) IN REG $s2
#	NODE tmp$7(5) IN REG $s2
#	NODE tmp$3(4) IN REG $s3
#	NODE tmp$12(3) IN REG $s2
#	NODE tmp$2(2) IN REG $s2
#	NODE i(1) IN REG $s1
#	NODE f(0) IN REG $s0
.text
# function main
# formals: 
# locals: a (loc: -4); b (loc: -8); c (loc: -12); d (loc: -16); e (loc: -20); f (loc: -24); i (loc: -28); tmp$1 (loc: -32); tmp$2 (loc: -36); tmp$3 (loc: -40); tmp$4 (loc: -44); tmp$5 (loc: -48); tmp$6 (loc: -52); tmp$7 (loc: -56); tmp$8 (loc: -60); tmp$9 (loc: -64); tmp$10 (loc: -68); tmp$11 (loc: -72); tmp$12 (loc: -76); tmp$13 (loc: -80); tmp$14 (loc: -84); tmp$15 (loc: -88); tmp$16 (loc: -92); tmp$17 (loc: -96); tmp$18 (loc: -100); tmp$19 (loc: -104); 
# space for locals: 104 bytes
#
_main:
# block 1 
# def = 11000000000;
# use = 00000000000;
# in  = 00110111100;
# out = 11110111100;
    # -LEADER- block (1)
    # livenow=00110111100
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -104($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (1)
    # livenow=00110111100
    # move 1, f
    li $t0, 1
    move $s0, $t0 	# f

    # block (1)
    # livenow=10110111100
    # move 7, i
    li $t0, 7
    move $s1, $t0 	# i

# block 2 
# def = 00000000000;
# use = 01000000000;
# in  = 11110111100;
# out = 11110111100;
    # -LEADER- block (2)
    # livenow=11110111100
    # label 0
Lbl0:

    # block (2)
    # livenow=11110111100
    # if_le i, 0, label 2
    move $t0, $s1	# i
    li $t1, 0
    ble $t0, $t1, Lbl2

# block 3 
# def = 00001000011;
# use = 11110111100;
# in  = 11110111100;
# out = 11110111100;
    # -LEADER- block (3)
    # livenow=11110111100
    # label 1
Lbl1:

    # block (3)
    # livenow=11110111100
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # param i
    move $t0, $s1	# i
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # call add, 2
    jal _add
    la $sp, 8($sp)

    # block (3)
    # livenow=11110111100
    # retrieve tmp$10
    sw $v0, -68($fp)	# tmp$10, -1

    # block (3)
    # livenow=11110111100
    # param 1
    li $t0, 1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # param tmp$10
    lw $t0, -68($fp)	# tmp$10
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # call add, 2
    jal _add
    la $sp, 8($sp)

    # block (3)
    # livenow=11110111100
    # retrieve tmp$12
    move $s2, $v0	# tmp$12

    # block (3)
    # livenow=11110111100
    # param tmp$12
    move $t0, $s2	# tmp$12
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # param 2
    li $t0, 2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # call add, 2
    jal _add
    la $sp, 8($sp)

    # block (3)
    # livenow=11110111100
    # retrieve tmp$13
    sw $v0, -80($fp)	# tmp$13, -1

    # block (3)
    # livenow=11110111100
    # uminus 5, tmp$14
    li $t0, 5
    neg $t2, $t0
    sw $t2, -84($fp)	# tmp$14, -1

    # block (3)
    # livenow=11111111100
    # param tmp$14
    lw $t0, -84($fp)	# tmp$14
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # param tmp$13
    lw $t0, -80($fp)	# tmp$13
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # call add, 2
    jal _add
    la $sp, 8($sp)

    # block (3)
    # livenow=11110111100
    # retrieve tmp$16
    sw $v0, -92($fp)	# tmp$16, -1

    # block (3)
    # livenow=11110111100
    # param tmp$16
    lw $t0, -92($fp)	# tmp$16
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # param 1
    li $t0, 1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # call add, 2
    jal _add
    la $sp, 8($sp)

    # block (3)
    # livenow=11110111100
    # retrieve tmp$17
    sw $v0, -96($fp)	# tmp$17, -1

    # block (3)
    # livenow=11110111100
    # param 1
    li $t0, 1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # param tmp$17
    lw $t0, -96($fp)	# tmp$17
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (3)
    # livenow=11110111100
    # call add, 2
    jal _add
    la $sp, 8($sp)

    # block (3)
    # livenow=11110111100
    # retrieve tmp$19
    sw $v0, -104($fp)	# tmp$19, -1

    # block (3)
    # livenow=11110111100
    # mul f, tmp$19, tmp$6
    move $t0, $s0	# f
    lw $t1, -104($fp)	# tmp$19
    mul $t2, $t0, $t1
    move $s0, $t2	# tmp$6

    # block (3)
    # livenow=01110111110
    # move tmp$6, f
    move $t0, $s0	# tmp$6
    move $s0, $t0 	# f

    # block (3)
    # livenow=11110111100
    # sub i, 1, tmp$4
    move $t0, $s1	# i
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$4

    # block (3)
    # livenow=10110111101
    # move tmp$4, i
    move $t0, $s1	# tmp$4
    move $s1, $t0 	# i

    # block (3)
    # livenow=11110111100
    # goto label 0
    j Lbl0

# block 4 
# def = 00000000000;
# use = 10000000000;
# in  = 10000000000;
# out = 00000000000;
    # -LEADER- block (4)
    # livenow=10000000000
    # label 2
Lbl2:

    # block (4)
    # livenow=10000000000
    # param f
    move $t0, $s0	# f
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=00000000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
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

