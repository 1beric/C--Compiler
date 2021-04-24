#	NODE i0(0) COST - 3.000000, DEGREES - 0
#	NODE c2(1) COST - 5.000000, DEGREES - 0
#	NODE i1(2) COST - 3.000000, DEGREES - 0
#	NODE c0(3) COST - 3.000000, DEGREES - 0
#	NODE i2(4) COST - 3.000000, DEGREES - 0
#	NODE c1(5) COST - 2.000000, DEGREES - 0
#	NODE i2(4) IN REG $s0
#	NODE c2(1) IN REG $s0
.text
# function main
# formals: 
# locals: c2 (loc: -1); i2 (loc: -8); tmp$0 (loc: -12); 
# space for locals: 12 bytes
#
_main:
# block 0 
# def = 111111;
# use = 000000;
# in  = 000000;
# out = 000000;
    # -LEADER- block (0)
    # livenow=000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame

    # block (0)
    # livenow=000000
    # move 255, i0
    li $t0, 255
    sw $t0, _i0

    # block (0)
    # livenow=000000
    # move i0, c2
    lw $t0, _i0
    move $s0, $t0 	# c2

    # block (0)
    # livenow=010000
    # move c2, i1
    move $t0, $s0	# c2
    sw $t0, _i1

    # block (0)
    # livenow=000000
    # move i1, c0
    lw $t0, _i1
    sb $t0, _c0

    # block (0)
    # livenow=000000
    # move c0, i2
    lb $t0, _c0
    move $s0, $t0 	# i2

    # block (0)
    # livenow=000010
    # move i2, c2
    move $t0, $s0	# i2
    move $s0, $t0 	# c2

    # block (0)
    # livenow=010000
    # move c2, c1
    move $t0, $s0	# c2
    sb $t0, _c1

    # block (0)
    # livenow=010000
    # param 255
    li $t0, 255
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=010000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=010000
    # param i1
    lw $t0, _i1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=010000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=010000
    # param c0
    lb $t0, _c0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=010000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=010000
    # param c0
    lb $t0, _c0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=010000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=010000
    # param c1
    lb $t0, _c1
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=010000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=010000
    # param c2
    move $t0, $s0	# c2
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=000000
    # leave main

    # block (0)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000000
    # leave main

    # block (0)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
_c0:  .space 1
_c1:  .space 1
.align 2
_i0:  .space 4
.align 2
_i1:  .space 4

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

