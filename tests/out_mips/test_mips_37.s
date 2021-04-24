#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE tmp$0(1) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$2(2) IN REG $s0
#	NODE tmp$0(1) IN REG $s0
#	NODE x(0) IN REG $s0
.text
# function f
# formals: x (loc: 8); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -9); 
# space for locals: 12 bytes
#
_f:
# block 0 
# def = 011;
# use = 100;
# in  = 100;
# out = 000;
    # -LEADER- block (0)
    # livenow=100
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -12($sp)   # allocate stack frame

    # block (0)
    # livenow=100
    # add x, 1, tmp$0
    lb $t0, 8($fp)	# x
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -4($fp)	# tmp$0

    # block (0)
    # livenow=010
    # move tmp$0, tmp$2
    lw $t0, -4($fp)	# tmp$0
    sb $t0, -9($fp)	# tmp$2

    # block (0)
    # livenow=001
    # leave f

    # block (0)
    # livenow=001
    # ret tmp$2
    lb $v0, -9($fp)	# tmp$2
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000
    # leave f

    # block (0)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

#	NODE x(0) COST - 8.000000, DEGREES - 0
#	NODE tmp$4(1) COST - 1.000000, DEGREES - 0
#	NODE tmp$6(2) COST - 2.000000, DEGREES - 0
#	NODE tmp$5(3) COST - 1.000000, DEGREES - 0
#	NODE tmp$6(2) IN REG $s0
#	NODE tmp$4(1) IN REG $s0
#	NODE x(0) IN REG $s0
#	NODE tmp$5(3) IN REG $s0
#	NODE tmp$6(2) IN REG $s0
#	NODE tmp$4(1) IN REG $s0
#	NODE x(0) IN REG $s0
#	NODE x(0) IN REG $s0
.text
# function main
# formals: 
# locals: tmp$3 (loc: -4); tmp$4 (loc: -8); tmp$5 (loc: -12); tmp$6 (loc: -16); 
# space for locals: 16 bytes
#
_main:
# block 1 
# def = 1001;
# use = 0110;
# in  = 0110;
# out = 0000;
    # -LEADER- block (1)
    # livenow=0110
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -16($sp)   # allocate stack frame

    # block (1)
    # livenow=0110
    # move 12345, x
    li $t0, 12345
    sw $t0, _x

    # block (1)
    # livenow=0110
    # param 12345
    li $t0, 12345
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0110
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=0110
    # retrieve tmp$4
    sw $v0, -8($fp)	# tmp$4

    # block (1)
    # livenow=0110
    # move tmp$4, x
    lw $t0, -8($fp)	# tmp$4
    sw $t0, _x

    # block (1)
    # livenow=0110
    # param tmp$4
    lw $t0, -8($fp)	# tmp$4
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0010
    # call f, 1
    jal _f
    la $sp, 4($sp)

    # block (1)
    # livenow=0010
    # retrieve tmp$6
    sw $v0, -16($fp)	# tmp$6

    # block (1)
    # livenow=0010
    # add x, tmp$6, tmp$5
    lw $t0, _x
    lw $t1, -16($fp)	# tmp$6
    add $t2, $t0, $t1
    sw $t2, -12($fp)	# tmp$5

    # block (1)
    # livenow=0001
    # move tmp$5, x
    lw $t0, -12($fp)	# tmp$5
    sw $t0, _x

    # block (1)
    # livenow=0001
    # param tmp$5
    lw $t0, -12($fp)	# tmp$5
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (1)
    # livenow=0000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (1)
    # livenow=0000
    # leave main

    # block (1)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (1)
    # livenow=0000
    # leave main

    # block (1)
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

