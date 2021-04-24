#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE tmp$0(1) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(2) IN REG $s0
#	NODE tmp$0(1) IN REG $s0
#	NODE x(0) IN REG $s0
.text
# function f
# formals: x (loc: 8); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -9); 
# space for locals: 12 bytes
#
_f:
# block 0 
# def = 011;
# use = 100;
# in  = 100;
# out = 000;
    # -LEADER- block (0)
    # livenow=100
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame

    # block (0)
    # livenow=100
    # add x, 1, tmp$0
    move $t0, $s0	# x
    li $t1, 1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=010
    # move tmp$0, tmp$2
    move $t0, $s0	# tmp$0
    move $s0, $t0 	# tmp$2

    # block (0)
    # livenow=001
    # leave f

    # block (0)
    # livenow=001
    # ret tmp$2
    move $v0, $s0	# tmp$2
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave f

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	LIVERANGE: EDGE y(1) -> tmp$9(5)
#	LIVERANGE: EDGE tmp$5(4) -> tmp$9(5)
#	LIVERANGE: EDGE y(1) -> tmp$4(2)
#	LIVERANGE: EDGE y(1) -> x(3)
#	LIVERANGE: EDGE tmp$3(0) -> tmp$4(2)
#	LIVERANGE: EDGE tmp$3(0) -> x(3)
#	LIVERANGE: EDGE tmp$3(0) -> tmp$9(5)
#	NODE tmp$3(0) COST - 1.000000, DEGREES - 2
#	NODE y(1) COST - 5.000000, DEGREES - 3
#	NODE tmp$4(2) COST - 1.000000, DEGREES - 2
#	NODE x(3) COST - 6.000000, DEGREES - 2
#	NODE tmp$5(4) COST - 1.000000, DEGREES - 1
#	NODE tmp$9(5) COST - 2.000000, DEGREES - 2
#	NODE tmp$7(6) COST - 1.000000, DEGREES - 0
#	NODE tmp$4(2) IN REG $s1
#	NODE y(1) IN REG $s0
#	NODE tmp$3(0) IN REG $s0
#	NODE tmp$7(6) IN REG $s0
#	NODE tmp$9(5) IN REG $s1
#	NODE tmp$5(4) IN REG $s0
#	NODE x(3) IN REG $s1
#	NODE tmp$4(2) IN REG $s1
#	NODE y(1) IN REG $s0
#	NODE tmp$3(0) IN REG $s0
#	NODE tmp$3(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); y (loc: -5); tmp$3 (loc: -12); tmp$4 (loc: -16); tmp$5 (loc: -20); tmp$6 (loc: -24); tmp$7 (loc: -28); tmp$8 (loc: -32); tmp$9 (loc: -36); 
# space for locals: 36 bytes
#
_main:
# block 1 
# def = 1100101;
# use = 0011010;
# in  = 0011010;
# out = 0000000;
    # -LEADER- block (1)
    # livenow=0011010
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -36($sp)   # allocate stack frame

    # block (1)
    # livenow=0011010
    # move 1, tmp$3
    li $t0, 1
    move $s0, $t0 	# tmp$3

    # block (1)
    # livenow=1011010
    # move tmp$3, y
    move $t0, $s0	# tmp$3
    move $s0, $t0 	# y

    # block (1)
    # livenow=0111010
    # param y
    move $t0, $s0	# y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0011010
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=0011010
    # retrieve tmp$4
    move $s1, $v0	# tmp$4

    # block (1)
    # livenow=0011010
    # param tmp$4
    move $t0, $s1	# tmp$4
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0011010
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=0011010
    # retrieve tmp$6
    sw $v0, -24($fp)	# tmp$6, -1

    # block (1)
    # livenow=0011010
    # add tmp$4, tmp$6, tmp$5
    move $t0, $s1	# tmp$4
    lw $t1, -24($fp)	# tmp$6
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$5

    # block (1)
    # livenow=0000110
    # move tmp$5, y
    move $t0, $s0	# tmp$5
    move $s0, $t0 	# y

    # block (1)
    # livenow=0100010
    # param 81
    li $t0, 81
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0100010
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=0100010
    # retrieve tmp$9
    move $s1, $v0	# tmp$9

    # block (1)
    # livenow=0100010
    # add y, tmp$9, tmp$7
    move $t0, $s0	# y
    move $t1, $s1	# tmp$9
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$7

    # block (1)
    # livenow=0000001
    # param tmp$7
    move $t0, $s0	# tmp$7
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (1)
    # livenow=0000000
    # leave main

    # block (1)
    # livenow=0000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=0000000
    # leave main

    # block (1)
    # livenow=0000000
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

