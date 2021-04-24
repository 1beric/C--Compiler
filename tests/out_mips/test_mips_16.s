#	NODE x(0) COST - 1.000000, DEGREES - 0
.text
# function f
# formals: x (loc: 8); 
# locals: 
# space for locals: 0 bytes
#
_f:
# block 0 
# def = 0;
# use = 1;
# in  = 1;
# out = 0;
    # -LEADER- block (0)
    # livenow=1
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (0)
    # livenow=1
    # param x
    move $t0, $s0	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0
    # leave f

    # block (0)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=0
    # leave f

    # block (0)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	NODE x(0) COST - 2.000000, DEGREES - 0
.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); 
# space for locals: 4 bytes
#
_main:
# block 1 
# def = 1;
# use = 0;
# in  = 0;
# out = 0;
    # -LEADER- block (1)
    # livenow=0
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -4($sp)   # allocate stack frame

    # block (1)
    # livenow=0
    # move 12345, x
    li $t0, 12345
    sw $t0, _x

    # block (1)
    # livenow=0
    # param 12345
    li $t0, 12345
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=0
    # leave main

    # block (1)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=0
    # leave main

    # block (1)
    # livenow=0
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

