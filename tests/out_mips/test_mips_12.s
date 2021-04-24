#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE x(1) COST - 4.000000, DEGREES - 0
#	NODE u(2) COST - 4.000000, DEGREES - 0
#	NODE y(3) COST - 4.000000, DEGREES - 0
#	NODE v(4) COST - 4.000000, DEGREES - 0
#	NODE tmp$0(0) IN REG $s0
.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); 
# space for locals: 8 bytes
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
    la $sp, -8($sp)   # allocate stack frame

    # block (0)
    # livenow=00000
    # move 17, tmp$0
    li $t0, 17
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=10000
    # move tmp$0, x
    move $t0, $s0	# tmp$0
    sb $t0, _x

    # block (0)
    # livenow=00000
    # move x, u
    lb $t0, _x
    sw $t0, _u

    # block (0)
    # livenow=00000
    # move u, y
    lw $t0, _u
    sb $t0, _y

    # block (0)
    # livenow=00000
    # move y, v
    lb $t0, _y
    sw $t0, _v

    # block (0)
    # livenow=00000
    # param y
    lb $t0, _y
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
    sw $t0, _u

    # block (0)
    # livenow=00000
    # move u, x
    lw $t0, _u
    sb $t0, _x

    # block (0)
    # livenow=00000
    # move x, v
    lb $t0, _x
    sw $t0, _v

    # block (0)
    # livenow=00000
    # move v, y
    lw $t0, _v
    sb $t0, _y

    # block (0)
    # livenow=00000
    # param y
    lb $t0, _y
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
_u:  .space 4
.align 2
_v:  .space 4
_x:  .space 1
_y:  .space 1

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

