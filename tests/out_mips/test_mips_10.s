#	NODE tmp$1(0) COST - 1.000000, DEGREES - 0
#	NODE y(1) COST - 0.000000, DEGREES - 0
#	NODE tmp$0(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$5(3) COST - 1.000000, DEGREES - 0
#	NODE x(4) COST - 0.000000, DEGREES - 0
#	NODE tmp$4(5) COST - 1.000000, DEGREES - 0
#	NODE tmp$8(6) COST - 1.000000, DEGREES - 0
#	NODE tmp$7(7) COST - 1.000000, DEGREES - 0
#	NODE tmp$11(8) COST - 1.000000, DEGREES - 0
#	NODE tmp$9(9) COST - 1.000000, DEGREES - 0
#	NODE tmp$9(9) IN REG $s0
#	NODE tmp$11(8) IN REG $s0
#	NODE tmp$7(7) IN REG $s0
#	NODE tmp$8(6) IN REG $s0
#	NODE tmp$4(5) IN REG $s0
#	NODE x(4) IN REG $s0
#	NODE tmp$5(3) IN REG $s0
#	NODE tmp$0(2) IN REG $s0
#	NODE y(1) IN REG $s0
#	NODE tmp$1(0) IN REG $s0
.text
# function main
# formals: 
# locals: u (loc: -4); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); tmp$6 (loc: -32); tmp$7 (loc: -36); tmp$8 (loc: -40); tmp$9 (loc: -44); tmp$10 (loc: -48); tmp$11 (loc: -52); tmp$12 (loc: -56); 
# space for locals: 56 bytes
#
_main:
# block 0 
# def = 1011011111;
# use = 0100100000;
# in  = 0100100000;
# out = 0000000000;
    # -LEADER- block (0)
    # livenow=0000000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -56($sp)   # allocate stack frame

    # block (0)
    # livenow=0000000000
    # move 28, tmp$1
    li $t0, 28
    move $s0, $t0 	# tmp$1

    # block (0)
    # livenow=1000000000
    # add addr(y), tmp$1, tmp$0
    la $t0, _y
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=0000000000
    # move 1234, deref(tmp$0)
    li $t0, 1234
    move $t1, $s0	# tmp$0
    sw $t0, 0($t1)	# deref(tmp$0)

    # block (0)
    # livenow=0000000000
    # move 0, tmp$5
    li $t0, 0
    move $s0, $t0 	# tmp$5

    # block (0)
    # livenow=0001000000
    # add addr(x), tmp$5, tmp$4
    la $t0, _x
    move $t1, $s0	# tmp$5
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$4

    # block (0)
    # livenow=0000000000
    # move 28, tmp$8
    li $t0, 28
    move $s0, $t0 	# tmp$8

    # block (0)
    # livenow=0000001000
    # add addr(y), tmp$8, tmp$7
    la $t0, _y
    move $t1, $s0	# tmp$8
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$7

    # block (0)
    # livenow=0000000000
    # move deref(tmp$7), deref(tmp$4)
    lw $t0, -36($fp)	# tmp$7
    lw $t0, 0($t0)	# deref(tmp$7)
    move $t1, $s0	# tmp$4
    sw $t0, 0($t1)	# deref(tmp$4)

    # block (0)
    # livenow=0000000000
    # move 0, tmp$11
    li $t0, 0
    move $s0, $t0 	# tmp$11

    # block (0)
    # livenow=0000000010
    # add addr(x), tmp$11, tmp$10
    la $t0, _x
    move $t1, $s0	# tmp$11
    add $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$10, -1

    # block (0)
    # livenow=0000000000
    # param deref(tmp$10)
    lw $t0, -48($fp)	# tmp$10
    lw $t0, 0($t0)	# deref(tmp$10)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0000000000
    # leave main

    # block (0)
    # livenow=0000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=0000000000
    # leave main

    # block (0)
    # livenow=0000000000
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
_x:  .space 40
.align 2
_y:  .space 40

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

