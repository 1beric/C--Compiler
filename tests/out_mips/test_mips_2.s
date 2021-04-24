.text
# function main
# formals: 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); 
# space for locals: 12 bytes
#
_main:
# block 0 
# def = 111;
# use = 000;
# in  = 000;
# out = 000;
    # -LEADER- block (0)
    # livenow=000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame

    # block (0)
    # livenow=000
    # move 13579, x
    li $t0, 13579
    sw $t0, _x

    # block (0)
    # livenow=000
    # move 24680, y
    li $t0, 24680
    sw $t0, _y

    # block (0)
    # livenow=000
    # move 21436, z
    li $t0, 21436
    sw $t0, _z

    # block (0)
    # livenow=000
    # param 13579
    li $t0, 13579
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=000
    # param y
    lw $t0, _y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=000
    # param z
    lw $t0, _z
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=000
    # leave main

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave main

    # block (0)
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
_y:  .space 4
.align 2
_z:  .space 4

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

