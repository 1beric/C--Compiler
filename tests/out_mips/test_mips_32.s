#	LIVERANGE: EDGE x(4) -> v(3)
#	LIVERANGE: EDGE x(4) -> w(6)
#	LIVERANGE: EDGE tmp$3(7) -> v(3)
#	LIVERANGE: EDGE tmp$3(7) -> w(6)
#	LIVERANGE: EDGE w(6) -> u(1)
#	LIVERANGE: EDGE w(6) -> v(3)
#	LIVERANGE: EDGE tmp$2(5) -> u(1)
#	LIVERANGE: EDGE tmp$2(5) -> v(3)
#	LIVERANGE: EDGE v(3) -> u(1)
#	LIVERANGE: EDGE tmp$1(2) -> u(1)
#	LIVERANGE: EDGE tmp$1(2) -> x(4)
#	LIVERANGE: EDGE u(1) -> x(4)
#	LIVERANGE: EDGE tmp$0(0) -> x(4)
#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE u(1) COST - 2.000000, DEGREES - 5
#	NODE tmp$1(2) COST - 1.000000, DEGREES - 2
#	NODE v(3) COST - 2.000000, DEGREES - 5
#	NODE x(4) COST - 3.000000, DEGREES - 4
#	NODE tmp$2(5) COST - 1.000000, DEGREES - 2
#	NODE w(6) COST - 2.000000, DEGREES - 4
#	NODE tmp$3(7) COST - 1.000000, DEGREES - 2
#	NODE tmp$3(7) IN REG $s0
#	NODE w(6) IN REG $s2
#	NODE tmp$2(5) IN REG $s2
#	NODE v(3) IN REG $s1
#	NODE tmp$1(2) IN REG $s1
#	NODE u(1) IN REG $s0
#	NODE tmp$0(0) IN REG $s0
.text
# function f
# formals: x (loc: 8); 
# locals: u (loc: -1); v (loc: -2); w (loc: -3); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); 
# space for locals: 20 bytes
#
_f:
# block 0 
# def = 11110111;
# use = 00001000;
# in  = 00001000;
# out = 00000000;
    # -LEADER- block (0)
    # livenow=00001000
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -20($sp)   # allocate stack frame

    # block (0)
    # livenow=00001000
    # move 23, tmp$0
    li $t0, 23
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=10001000
    # move tmp$0, u
    move $t0, $s0	# tmp$0
    move $s0, $t0 	# u

    # block (0)
    # livenow=01001000
    # move 34, tmp$1
    li $t0, 34
    move $s1, $t0 	# tmp$1

    # block (0)
    # livenow=01101000
    # move tmp$1, v
    move $t0, $s1	# tmp$1
    move $s1, $t0 	# v

    # block (0)
    # livenow=01011000
    # param x
    move $t0, $s2	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=01010000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=01010000
    # move 45, tmp$2
    li $t0, 45
    move $s2, $t0 	# tmp$2

    # block (0)
    # livenow=01010100
    # move tmp$2, w
    move $t0, $s2	# tmp$2
    move $s2, $t0 	# w

    # block (0)
    # livenow=01010010
    # param u
    move $t0, $s0	# u
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00010010
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00010010
    # move 67, tmp$3
    li $t0, 67
    move $s0, $t0 	# tmp$3

    # block (0)
    # livenow=00010011
    # move tmp$3, x
    move $t0, $s0	# tmp$3
    move $s2, $t0 	# x

    # block (0)
    # livenow=00011010
    # param v
    move $t0, $s1	# v
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00001010
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00001010
    # param w
    move $t0, $s2	# w
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00001000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00001000
    # param x
    move $t0, $s2	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000
    # leave f

    # block (0)
    # livenow=00000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00000000
    # leave f

    # block (0)
    # livenow=00000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	LIVERANGE -- ERR VAL(7) WAS NULL a
#	LIVERANGE -- ERR VAL(6) WAS NULL b
#	LIVERANGE -- ERR VAL(5) WAS NULL a
#	LIVERANGE -- ERR VAL(3) WAS NULL b
#	NODE tmp$4(0) IN REG $s0
#	NODE tmp$4(0) IN REG $s0
.text
# function main
# formals: 
# locals: tmp$4 (loc: -4); 
# space for locals: 4 bytes
#
_main:
# block 1 
# def = ;
# use = ;
# in  = ;
# out = ;
    # -LEADER- block (1)
    # livenow=
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame

    # block (1)
    # livenow=
    # param 12
    li $t0, 12
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=
    # leave main

    # block (1)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=
    # leave main

    # block (1)
    # livenow=
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

