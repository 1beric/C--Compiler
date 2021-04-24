#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE x(1) COST - 2.000000, DEGREES - 0
#	NODE y(2) COST - 2.000000, DEGREES - 0
#	NODE z(3) COST - 2.000000, DEGREES - 0
#	NODE tmp$0(0) IN REG $s0
.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); 
# space for locals: 4 bytes
#
_main:
# block 0 
# def = 1111;
# use = 0000;
# in  = 0000;
# out = 0000;
    # -LEADER- block (0)
    # livenow=0000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame

    # block (0)
    # livenow=0000
    # move 17, tmp$0
    li $t0, 17
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=1000
    # move tmp$0, x
    move $t0, $s0	# tmp$0
    sb $t0, _x

    # block (0)
    # livenow=0000
    # move x, y
    lb $t0, _x
    sb $t0, _y

    # block (0)
    # livenow=0000
    # move x, z
    lb $t0, _x
    sb $t0, _z

    # block (0)
    # livenow=0000
    # param x
    lb $t0, _x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0000
    # leave main

    # block (0)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=0000
    # leave main

    # block (0)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
_x:  .space 1
_y:  .space 1
_z:  .space 1

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

