#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(1) COST - 2.000000, DEGREES - 0
#	NODE tmp$2(1) IN REG $s0
#	NODE tmp$0(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); y (loc: -8); tmp$0 (loc: -12); tmp$1 (loc: -16); tmp$2 (loc: -20); tmp$3 (loc: -24); tmp$4 (loc: -28); 
# space for locals: 28 bytes
#
_main:
# block 0 
# def = 11;
# use = 00;
# in  = 00;
# out = 00;
    # -LEADER- block (0)
    # livenow=00
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -28($sp)   # allocate stack frame

    # block (0)
    # livenow=00
    # move 11, tmp$0
    li $t0, 11
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=10
    # add 2, tmp$0, tmp$4
    li $t0, 2
    move $t1, $s0	# tmp$0
    add $t2, $t0, $t1
    sw $t2, -28($fp)	# tmp$4, -1

    # block (0)
    # livenow=01
    # param tmp$4
    lw $t0, -28($fp)	# tmp$4
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00
    # leave main

    # block (0)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00
    # leave main

    # block (0)
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

