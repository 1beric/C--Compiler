#	LIVERANGE: EDGE w(4) -> u(1)
#	LIVERANGE: EDGE v(3) -> u(1)
#	LIVERANGE: EDGE u(1) -> x(2)
#	LIVERANGE: EDGE tmp$0(0) -> x(2)
#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE u(1) COST - 2.000000, DEGREES - 3
#	NODE x(2) COST - 3.000000, DEGREES - 1
#	NODE v(3) COST - 2.000000, DEGREES - 1
#	NODE w(4) COST - 2.000000, DEGREES - 1
#	NODE w(4) IN REG $s1
#	NODE v(3) IN REG $s1
#	NODE u(1) IN REG $s0
#	NODE tmp$0(0) IN REG $s0
.text
# function f
# formals: x (loc: 8); 
# locals: u (loc: -1); v (loc: -8); w (loc: -9); tmp$0 (loc: -16); tmp$1 (loc: -20); tmp$2 (loc: -24); tmp$3 (loc: -28); 
# space for locals: 28 bytes
#
_f:
# block 0 
# def = 11011;
# use = 00100;
# in  = 00100;
# out = 00000;
    # -LEADER- block (0)
    # livenow=00100
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -28($sp)   # allocate stack frame

    # block (0)
    # livenow=00100
    # move 38, tmp$0
    li $t0, 38
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=10100
    # move tmp$0, u
    move $t0, $s0	# tmp$0
    move $s0, $t0 	# u

    # block (0)
    # livenow=01100
    # param x
    move $t0, $s1	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=01000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=01000
    # move 55, tmp$2
    li $t0, 55
    sw $t0, -24($fp)	# tmp$2

    # block (0)
    # livenow=01010
    # move tmp$2, w
    lw $t0, -24($fp)	# tmp$2
    move $s1, $t0 	# w

    # block (0)
    # livenow=01001
    # param u
    move $t0, $s0	# u
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00001
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00001
    # param 345
    li $t0, 345
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00001
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00001
    # param w
    move $t0, $s1	# w
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000
    # param 678
    li $t0, 678
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000
    # leave f

    # block (0)
    # livenow=00000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00000
    # leave f

    # block (0)
    # livenow=00000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

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
    # param 123
    li $t0, 123
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

