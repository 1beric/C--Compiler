#	NODE tmp$1(0) COST - 1.000000, DEGREES - 0
#	NODE x(1) COST - 0.000000, DEGREES - 0
#	NODE tmp$0(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$5(3) COST - 1.000000, DEGREES - 0
#	NODE tmp$3(4) COST - 1.000000, DEGREES - 0
#	NODE tmp$3(4) IN REG $s0
#	NODE tmp$5(3) IN REG $s0
#	NODE tmp$1(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -40); y (loc: -44); tmp$0 (loc: -48); tmp$1 (loc: -52); tmp$2 (loc: -56); tmp$3 (loc: -60); tmp$4 (loc: -64); tmp$5 (loc: -68); tmp$6 (loc: -72); 
# space for locals: 72 bytes
#
_main:
# block 0 
# def = 10111;
# use = 01000;
# in  = 01000;
# out = 00000;
    # -LEADER- block (0)
    # livenow=00000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -72($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=00000
    # move 20, tmp$1
    li $t0, 20
    move $s0, $t0 	# tmp$1

    # block (0)
    # livenow=10000
    # add addr(x), tmp$1, tmp$0
    la $t0, -40($fp)	# addr(x)
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$0, -1

    # block (0)
    # livenow=00000
    # move 4321, deref(tmp$0)
    li $t0, 4321
    lw $t1, -48($fp)	# tmp$0
    sw $t0, 0($t1)	# deref(tmp$0)

    # block (0)
    # livenow=00000
    # move 20, tmp$5
    li $t0, 20
    move $s0, $t0 	# tmp$5

    # block (0)
    # livenow=00010
    # add addr(x), tmp$5, tmp$4
    la $t0, -40($fp)	# addr(x)
    move $t1, $s0	# tmp$5
    add $t2, $t0, $t1
    sw $t2, -64($fp)	# tmp$4, -1

    # block (0)
    # livenow=00000
    # param deref(tmp$4)
    lw $t0, -64($fp)	# tmp$4
    lw $t0, 0($t0)	# deref(tmp$4)
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
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

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
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

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

