#	LIVERANGE: EDGE y(0) -> i(1)
#	LIVERANGE: EDGE y(0) -> x(2)
#	LIVERANGE: EDGE i(1) -> x(2)
#	LIVERANGE: EDGE tmp$5(5) -> y(0)
#	LIVERANGE: EDGE tmp$5(5) -> x(2)
#	LIVERANGE: EDGE tmp$3(4) -> i(1)
#	LIVERANGE: EDGE tmp$3(4) -> x(2)
#	LIVERANGE: EDGE tmp$2(3) -> y(0)
#	LIVERANGE: EDGE tmp$2(3) -> i(1)
#	LIVERANGE: EDGE tmp$2(3) -> x(2)
#	NODE y(0) COST - 32.000000, DEGREES - 4
#	NODE i(1) COST - 70.000000, DEGREES - 4
#	NODE x(2) COST - 30.000000, DEGREES - 4
#	NODE tmp$2(3) COST - 10.000000, DEGREES - 2
#	NODE tmp$3(4) COST - 10.000000, DEGREES - 2
#	NODE tmp$5(5) COST - 10.000000, DEGREES - 2
#	NODE tmp$5(5) IN REG $s1
#	NODE tmp$3(4) IN REG $s0
#	NODE tmp$2(3) IN REG $s1
#	NODE y(0) IN REG $s0
.text
# function f
# formals: i (loc: 8); 
# locals: y (loc: -4); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); tmp$6 (loc: -32); 
# space for locals: 32 bytes
#
_f:
# block 0 
# def = 100000;
# use = 000000;
# in  = 011000;
# out = 111000;
    # -LEADER- block (0)
    # livenow=011000
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -32($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=011000
    # move 1, y
    li $t0, 1
    move $s0, $t0 	# y

# block 1 
# def = 000000;
# use = 010000;
# in  = 111000;
# out = 111000;
    # -LEADER- block (1)
    # livenow=111000
    # label 0
Lbl0:

    # block (1)
    # livenow=111000
    # if_le i, 0, label 2
    lw $t0, 8($fp)	# i
    li $t1, 0
    ble $t0, $t1, Lbl2

# block 2 
# def = 000111;
# use = 111000;
# in  = 111000;
# out = 111000;
    # -LEADER- block (2)
    # livenow=111000
    # label 1
Lbl1:

    # block (2)
    # livenow=111000
    # mul x, i, tmp$2
    lw $t0, _x
    lw $t1, 8($fp)	# i
    mul $t2, $t0, $t1
    move $s1, $t2	# tmp$2

    # block (2)
    # livenow=111100
    # move tmp$2, x
    move $t0, $s1	# tmp$2
    sw $t0, _x

    # block (2)
    # livenow=111000
    # mul 2, y, tmp$3
    li $t0, 2
    move $t1, $s0	# y
    mul $t2, $t0, $t1
    move $s0, $t2	# tmp$3

    # block (2)
    # livenow=011010
    # move tmp$3, y
    move $t0, $s0	# tmp$3
    move $s0, $t0 	# y

    # block (2)
    # livenow=111000
    # sub i, 1, tmp$5
    lw $t0, 8($fp)	# i
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$5

    # block (2)
    # livenow=101001
    # move tmp$5, i
    move $t0, $s1	# tmp$5
    sw $t0, 8($fp)	# i

    # block (2)
    # livenow=111000
    # goto label 0
    j Lbl0

# block 3 
# def = 000000;
# use = 100000;
# in  = 100000;
# out = 000000;
    # -LEADER- block (3)
    # livenow=100000
    # label 2
Lbl2:

    # block (3)
    # livenow=100000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=100000
    # ret y
    move $v0, $s0	# y
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=000000
    # leave f
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	LIVERANGE: EDGE tmp$8(1) -> tmp$10(2)
#	LIVERANGE -- ERR VAL(4) WAS NULL a
#	NODE x(0) COST - 35.000000, DEGREES - 0
#	NODE tmp$8(1) COST - 1.000000, DEGREES - 1
#	NODE tmp$10(2) COST - 1.000000, DEGREES - 1
#	NODE a(3) IN REG $s0
#	NODE tmp$10(2) IN REG $s2
#	NODE tmp$8(1) IN REG $s1
#	NODE tmp$10(2) IN REG $s2
#	NODE tmp$8(1) IN REG $s1
#	NODE a(3) IN REG $s0
.text
# function main
# formals: 
# locals: a (loc: -4); tmp$7 (loc: -8); tmp$8 (loc: -12); tmp$9 (loc: -16); tmp$10 (loc: -20); 
# space for locals: 20 bytes
#
_main:
# block 4 
# def = 101;
# use = 010;
# in  = 010;
# out = 000;
    # -LEADER- block (4)
    # livenow=010
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -20($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (4)
    # livenow=010
    # move 1, x
    li $t0, 1
    sw $t0, _x

    # block (4)
    # livenow=010
    # param 6
    li $t0, 6
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=010
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (4)
    # livenow=010
    # retrieve tmp$9
    sw $v0, -16($fp)	# tmp$9, -1

    # block (4)
    # livenow=010
    # add tmp$9, x, tmp$10
    lw $t0, -16($fp)	# tmp$9
    lw $t1, _x
    add $t2, $t0, $t1
    move $s2, $t2	# tmp$10

    # block (4)
    # livenow=001
    # move tmp$10, x
    move $t0, $s2	# tmp$10
    sw $t0, _x

    # block (4)
    # livenow=001
    # param tmp$10
    move $t0, $s2	# tmp$10
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=000
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
_x:  .space 4

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

