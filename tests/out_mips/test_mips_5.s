.text
# function main
# formals: 
# locals: u (loc: -4); v (loc: -8); x (loc: -12); y (loc: -16); z (loc: -20); tmp$0 (loc: -24); tmp$1 (loc: -28); tmp$2 (loc: -32); tmp$3 (loc: -36); tmp$4 (loc: -40); 
# space for locals: 40 bytes
#
_main:
# block 0 
# def = ;
# use = ;
# in  = ;
# out = ;
    # -LEADER- block (0)
    # livenow=
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -40($sp)   # allocate stack frame

    # block (0)
    # livenow=
    # param 111
    li $t0, 111
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=
    # param 222
    li $t0, 222
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=
    # param 333
    li $t0, 333
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=
    # param 444
    li $t0, 444
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=
    # param 555
    li $t0, 555
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=
    # leave main

    # block (0)
    # livenow=
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=
    # leave main

    # block (0)
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

