#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE x(1) COST - 4.000000, DEGREES - 0
#	NODE u(2) COST - 4.000000, DEGREES - 0
#	NODE y(3) COST - 4.000000, DEGREES - 0
#	NODE v(4) COST - 4.000000, DEGREES - 0
#	NODE v(4) IN REG $s0
#	NODE y(3) IN REG $s0
#	NODE u(2) IN REG $s0
#	NODE x(1) IN REG $s0
#	NODE tmp$0(0) IN REG $s0
.text
# function main
# formals: 
# locals: u (loc: -4); v (loc: -8); x (loc: -9); y (loc: -10); tmp$0 (loc: -16); tmp$1 (loc: -20); 
# space for locals: 20 bytes
#
_main:
# block 0 
# def = 11111;
# use = 00000;
# in  = 00000;
# out = 00000;
    # -LEADER- block (0)
    # livenow=00000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -20($sp)   # allocate stack frame

    # block (0)
    # livenow=00000
    # move 17, tmp$0
    li $t0, 17
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=10000
    # move tmp$0, x
    move $t0, $s0	# tmp$0
    move $s0, $t0 	# x

    # block (0)
    # livenow=01000
    # move x, u
    move $t0, $s0	# x
    move $s0, $t0 	# u

    # block (0)
    # livenow=00100
    # move u, y
    move $t0, $s0	# u
    move $s0, $t0 	# y

    # block (0)
    # livenow=00010
    # param y
    move $t0, $s0	# y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000
    # move 255, u
    li $t0, 255
    move $s0, $t0 	# u

    # block (0)
    # livenow=00100
    # move u, x
    move $t0, $s0	# u
    move $s0, $t0 	# x

    # block (0)
    # livenow=01000
    # move x, v
    move $t0, $s0	# x
    move $s0, $t0 	# v

    # block (0)
    # livenow=00001
    # move v, y
    move $t0, $s0	# v
    move $s0, $t0 	# y

    # block (0)
    # livenow=00010
    # param y
    move $t0, $s0	# y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000
    # leave main

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
    # leave main

    # block (0)
    # livenow=00000
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

