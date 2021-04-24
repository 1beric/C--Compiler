#	LIVERANGE: EDGE tmp$2(4) -> i(0)
#	LIVERANGE: EDGE tmp$2(4) -> x(2)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$11(9)
#	LIVERANGE: EDGE tmp$1(1) -> i(0)
#	LIVERANGE: EDGE tmp$1(1) -> x(2)
#	LIVERANGE: EDGE tmp$1(1) -> tmp$11(9)
#	LIVERANGE: EDGE tmp$9(8) -> tmp$8(7)
#	LIVERANGE: EDGE tmp$9(8) -> tmp$11(9)
#	LIVERANGE: EDGE tmp$8(7) -> i(0)
#	LIVERANGE: EDGE tmp$8(7) -> tmp$11(9)
#	LIVERANGE: EDGE tmp$3(5) -> i(0)
#	LIVERANGE: EDGE tmp$3(5) -> tmp$11(9)
#	NODE i(0) COST - 4.000000, DEGREES - 4
#	NODE tmp$1(1) COST - 1.000000, DEGREES - 3
#	NODE x(2) COST - 1.000000, DEGREES - 2
#	NODE tmp$0(3) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(4) COST - 1.000000, DEGREES - 3
#	NODE tmp$3(5) COST - 2.000000, DEGREES - 1
#	NODE tmp$4(6) COST - 0.500000, DEGREES - 0
#	NODE tmp$8(7) COST - 1.000000, DEGREES - 3
#	NODE tmp$9(8) COST - 1.000000, DEGREES - 2
#	NODE tmp$11(9) COST - 2.000000, DEGREES - 4
#	NODE tmp$5(10) COST - 1.000000, DEGREES - 0
#	NODE tmp$5(10) IN REG $s0
#	NODE tmp$11(9) IN REG $s2
#	NODE tmp$9(8) IN REG $s1
#	NODE tmp$8(7) IN REG $s0
#	NODE tmp$4(6) IN REG $s0
#	NODE tmp$3(5) IN REG $s0
#	NODE tmp$2(4) IN REG $s0
#	NODE tmp$1(1) IN REG $s0
.text
# function sum
# formals: x (loc: 8); i (loc: 12); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -9); tmp$3 (loc: -16); tmp$4 (loc: -20); tmp$5 (loc: -24); tmp$6 (loc: -28); tmp$7 (loc: -32); tmp$8 (loc: -33); tmp$9 (loc: -40); tmp$10 (loc: -44); tmp$11 (loc: -48); 
# space for locals: 48 bytes
#
_sum:
# block 0 
# def = 01011000000;
# use = 10100000000;
# in  = 10100000010;
# out = 10100000010;
    # -LEADER- block (0)
    # livenow=10100000010
    # enter sum
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -48($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=10100000010
    # move i, tmp$1
    lw $t0, 12($fp)	# i
    move $s0, $t0 	# tmp$1

    # block (0)
    # livenow=11100000010
    # add x, tmp$1, tmp$0
    lw $t0, 8($fp)	# x
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0, -1

    # block (0)
    # livenow=10100000010
    # move deref(tmp$0), tmp$2
    lw $t0, -4($fp)	# tmp$0
    lb $t0, 0($t0)	# deref(tmp$0)
    move $s0, $t0 	# tmp$2

    # block (0)
    # livenow=10101000010
    # if_ne tmp$2, 0, label 1
    move $t0, $s0	# tmp$2
    li $t1, 0
    bne $t0, $t1, Lbl1

# block 1 
# def = 00000000000;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000000;
    # -LEADER- block (1)
    # livenow=00000000000
    # label 0
Lbl0:

    # block (1)
    # livenow=00000000000
    # leave sum
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (1)
    # livenow=00000000000
    # ret 0
    li $v0, 0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=00000000000
    # goto label 2
    j Lbl2

# block 2 
# def = 00000111101;
# use = 10100000010;
# in  = 10100000010;
# out = 00000000000;
    # -LEADER- block (2)
    # livenow=10000000010
    # label 1
Lbl1:

    # block (2)
    # livenow=10000000010
    # move i, tmp$7
    lw $t0, 12($fp)	# i
    sw $t0, -32($fp)	# tmp$7

    # block (2)
    # livenow=10000100010
    # add x, tmp$7, tmp$6
    lw $t0, 8($fp)	# x
    lw $t1, -32($fp)	# tmp$7
    add $t2, $t0, $t1
    sw $t2, -28($fp)	# tmp$6, -1

    # block (2)
    # livenow=10000000010
    # move deref(tmp$6), tmp$8
    lw $t0, -28($fp)	# tmp$6
    lb $t0, 0($t0)	# deref(tmp$6)
    move $s0, $t0 	# tmp$8

    # block (2)
    # livenow=10000001010
    # add i, 1, tmp$9
    lw $t0, 12($fp)	# i
    li $t1, 1
    add $t2, $t0, $t1
    move $s1, $t2	# tmp$9

    # block (2)
    # livenow=00000001110
    # param tmp$9
    move $t0, $s1	# tmp$9
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=00000001010
    # param addr(x)
    lw $t0, 8($fp)	# addr(x)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (2)
    # livenow=00000001010
    # call sum, 2
    jal _sum
    la $sp, 8($sp)

    # block (2)
    # livenow=00000001010
    # retrieve tmp$11
    move $s2, $v0	# tmp$11

    # block (2)
    # livenow=00000001010
    # add tmp$8, tmp$11, tmp$5
    move $t0, $s0	# tmp$8
    move $t1, $s2	# tmp$11
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$5

    # block (2)
    # livenow=00000000001
    # leave sum
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (2)
    # livenow=00000000001
    # ret tmp$5
    move $v0, $s0	# tmp$5
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# block 3 
# def = 00000000000;
# use = 00000000000;
# in  = 00000000000;
# out = 00000000000;
    # -LEADER- block (3)
    # livenow=00000000000
    # label 2
Lbl2:

    # block (3)
    # livenow=00000000000
    # leave sum
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=00000000000
    # leave sum
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function sum

#	NODE _Str0(0) COST - 1.000000, DEGREES - 0
#	NODE tmp$13(1) COST - 1.000000, DEGREES - 0
#	NODE x(3) IN REG $s0
#	NODE tmp$13(1) IN REG $s0
#	NODE tmp$13(1) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$12 (loc: -8); tmp$13 (loc: -12); 
# space for locals: 12 bytes
#
_main:
# block 4 
# def = 00;
# use = 11;
# in  = 11;
# out = 00;
    # -LEADER- block (4)
    # livenow=01
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (4)
    # livenow=01
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=01
    # param addr(_Str0)
    la $t0, __Str0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=01
    # call sum, 2
    jal _sum
    la $sp, 8($sp)

    # block (4)
    # livenow=01
    # retrieve tmp$13
    move $s0, $v0	# tmp$13

    # block (4)
    # livenow=01
    # param tmp$13
    move $t0, $s0	# tmp$13
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (4)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2

__Str0: .asciiz "hello world"
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

