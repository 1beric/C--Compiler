#	NODE tmp$1(0) COST - 1.000000, DEGREES - 0
#	NODE x(1) COST - 0.000000, DEGREES - 0
#	NODE tmp$0(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$5(3) COST - 1.000000, DEGREES - 0
#	NODE tmp$3(4) COST - 1.000000, DEGREES - 0
#	NODE tmp$6(5) COST - 1.000000, DEGREES - 0
#	NODE tmp$8(6) COST - 1.000000, DEGREES - 0
#	NODE tmp$13(7) COST - 1.000000, DEGREES - 0
#	NODE y(8) COST - 0.000000, DEGREES - 0
#	NODE tmp$10(9) COST - 1.000000, DEGREES - 0
#	NODE tmp$17(10) COST - 1.000000, DEGREES - 0
#	NODE tmp$16(11) COST - 1.000000, DEGREES - 0
#	NODE tmp$11(12) COST - 1.000000, DEGREES - 0
#	NODE tmp$20(13) COST - 1.000000, DEGREES - 0
#	NODE tmp$25(14) COST - 1.000000, DEGREES - 0
#	NODE tmp$24(15) COST - 1.000000, DEGREES - 0
#	NODE tmp$28(16) COST - 1.000000, DEGREES - 0
#	NODE tmp$15(17) COST - 1.000000, DEGREES - 0
#	NODE tmp$31(18) COST - 1.000000, DEGREES - 0
#	NODE tmp$30(19) COST - 1.000000, DEGREES - 0
#	NODE tmp$34(20) COST - 1.000000, DEGREES - 0
#	NODE tmp$33(21) COST - 1.000000, DEGREES - 0
#	NODE tmp$22(22) COST - 1.000000, DEGREES - 0
#	NODE tmp$36(23) COST - 1.000000, DEGREES - 0
#	NODE tmp$40(24) COST - 1.000000, DEGREES - 0
#	NODE tmp$23(25) COST - 1.000000, DEGREES - 0
#	NODE tmp$23(25) IN REG $s0
#	NODE tmp$40(24) IN REG $s0
#	NODE tmp$22(22) IN REG $s0
#	NODE tmp$34(20) IN REG $s0
#	NODE tmp$31(18) IN REG $s0
#	NODE tmp$15(17) IN REG $s0
#	NODE tmp$28(16) IN REG $s0
#	NODE tmp$25(14) IN REG $s0
#	NODE tmp$11(12) IN REG $s0
#	NODE tmp$17(10) IN REG $s0
#	NODE tmp$10(9) IN REG $s0
#	NODE tmp$13(7) IN REG $s0
#	NODE tmp$6(5) IN REG $s0
#	NODE tmp$3(4) IN REG $s0
#	NODE tmp$5(3) IN REG $s0
#	NODE tmp$1(0) IN REG $s0
.text
# function main
# formals: 
# locals: u (loc: -4); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); tmp$6 (loc: -32); tmp$7 (loc: -36); tmp$8 (loc: -40); tmp$9 (loc: -44); tmp$10 (loc: -48); tmp$20 (loc: -52); tmp$11 (loc: -56); tmp$30 (loc: -60); tmp$21 (loc: -64); tmp$12 (loc: -68); tmp$40 (loc: -72); tmp$31 (loc: -76); tmp$22 (loc: -80); tmp$13 (loc: -84); tmp$41 (loc: -88); tmp$32 (loc: -92); tmp$23 (loc: -96); tmp$14 (loc: -100); tmp$33 (loc: -104); tmp$24 (loc: -108); tmp$15 (loc: -112); tmp$34 (loc: -116); tmp$25 (loc: -120); tmp$16 (loc: -124); tmp$35 (loc: -128); tmp$26 (loc: -132); tmp$17 (loc: -136); tmp$36 (loc: -140); tmp$27 (loc: -144); tmp$18 (loc: -148); tmp$37 (loc: -152); tmp$28 (loc: -156); tmp$19 (loc: -160); tmp$38 (loc: -164); tmp$29 (loc: -168); tmp$39 (loc: -172); 
# space for locals: 172 bytes
#
_main:
# block 0 
# def = 10111111011111111111111111;
# use = 01000000100000000000000000;
# in  = 01000000100000000000000000;
# out = 00000000000000000000000000;
    # -LEADER- block (0)
    # livenow=00000000000000000000000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -172($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=00000000000000000000000000
    # move 16, tmp$1
    li $t0, 16
    move $s0, $t0 	# tmp$1

    # block (0)
    # livenow=10000000000000000000000000
    # add addr(x), tmp$1, tmp$0
    la $t0, _x
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    sw $t2, -8($fp)	# tmp$0, -1

    # block (0)
    # livenow=00000000000000000000000000
    # move 111111, deref(tmp$0)
    li $t0, 111111
    lw $t1, -8($fp)	# tmp$0
    sw $t0, 0($t1)	# deref(tmp$0)

    # block (0)
    # livenow=00000000000000000000000000
    # move 20, tmp$5
    li $t0, 20
    move $s0, $t0 	# tmp$5

    # block (0)
    # livenow=00010000000000000000000000
    # add addr(x), tmp$5, tmp$4
    la $t0, _x
    move $t1, $s0	# tmp$5
    add $t2, $t0, $t1
    sw $t2, -24($fp)	# tmp$4, -1

    # block (0)
    # livenow=00000000000000000000000000
    # move 222222, deref(tmp$4)
    li $t0, 222222
    lw $t1, -24($fp)	# tmp$4
    sw $t0, 0($t1)	# deref(tmp$4)

    # block (0)
    # livenow=00000000000000000000000000
    # move 24, tmp$9
    li $t0, 24
    sw $t0, -44($fp)	# tmp$9

    # block (0)
    # livenow=00000100000000000000000000
    # add addr(x), tmp$9, tmp$8
    la $t0, _x
    lw $t1, -44($fp)	# tmp$9
    add $t2, $t0, $t1
    sw $t2, -40($fp)	# tmp$8, -1

    # block (0)
    # livenow=00000000000000000000000000
    # move 333333, deref(tmp$8)
    li $t0, 333333
    lw $t1, -40($fp)	# tmp$8
    sw $t0, 0($t1)	# deref(tmp$8)

    # block (0)
    # livenow=00000000000000000000000000
    # move 28, tmp$13
    li $t0, 28
    move $s0, $t0 	# tmp$13

    # block (0)
    # livenow=00000001000000000000000000
    # add addr(y), tmp$13, tmp$12
    la $t0, _y
    move $t1, $s0	# tmp$13
    add $t2, $t0, $t1
    sw $t2, -68($fp)	# tmp$12, -1

    # block (0)
    # livenow=00000000000000000000000000
    # move 444444, deref(tmp$12)
    li $t0, 444444
    lw $t1, -68($fp)	# tmp$12
    sw $t0, 0($t1)	# deref(tmp$12)

    # block (0)
    # livenow=00000000000000000000000000
    # move 32, tmp$17
    li $t0, 32
    move $s0, $t0 	# tmp$17

    # block (0)
    # livenow=00000000001000000000000000
    # add addr(y), tmp$17, tmp$16
    la $t0, _y
    move $t1, $s0	# tmp$17
    add $t2, $t0, $t1
    sw $t2, -124($fp)	# tmp$16, -1

    # block (0)
    # livenow=00000000000000000000000000
    # move 555555, deref(tmp$16)
    li $t0, 555555
    lw $t1, -124($fp)	# tmp$16
    sw $t0, 0($t1)	# deref(tmp$16)

    # block (0)
    # livenow=00000000000000000000000000
    # move 36, tmp$21
    li $t0, 36
    sw $t0, -64($fp)	# tmp$21

    # block (0)
    # livenow=00000000000010000000000000
    # add addr(y), tmp$21, tmp$20
    la $t0, _y
    lw $t1, -64($fp)	# tmp$21
    add $t2, $t0, $t1
    sw $t2, -52($fp)	# tmp$20, -1

    # block (0)
    # livenow=00000000000000000000000000
    # move 666666, deref(tmp$20)
    li $t0, 666666
    lw $t1, -52($fp)	# tmp$20
    sw $t0, 0($t1)	# deref(tmp$20)

    # block (0)
    # livenow=00000000000000000000000000
    # move 16, tmp$25
    li $t0, 16
    move $s0, $t0 	# tmp$25

    # block (0)
    # livenow=00000000000000100000000000
    # add addr(x), tmp$25, tmp$24
    la $t0, _x
    move $t1, $s0	# tmp$25
    add $t2, $t0, $t1
    sw $t2, -108($fp)	# tmp$24, -1

    # block (0)
    # livenow=00000000000000000000000000
    # param deref(tmp$24)
    lw $t0, -108($fp)	# tmp$24
    lw $t0, 0($t0)	# deref(tmp$24)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # move 20, tmp$28
    li $t0, 20
    move $s0, $t0 	# tmp$28

    # block (0)
    # livenow=00000000000000001000000000
    # add addr(x), tmp$28, tmp$27
    la $t0, _x
    move $t1, $s0	# tmp$28
    add $t2, $t0, $t1
    sw $t2, -144($fp)	# tmp$27, -1

    # block (0)
    # livenow=00000000000000000000000000
    # param deref(tmp$27)
    lw $t0, -144($fp)	# tmp$27
    lw $t0, 0($t0)	# deref(tmp$27)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # move 24, tmp$31
    li $t0, 24
    move $s0, $t0 	# tmp$31

    # block (0)
    # livenow=00000000000000000010000000
    # add addr(x), tmp$31, tmp$30
    la $t0, _x
    move $t1, $s0	# tmp$31
    add $t2, $t0, $t1
    sw $t2, -60($fp)	# tmp$30, -1

    # block (0)
    # livenow=00000000000000000000000000
    # param deref(tmp$30)
    lw $t0, -60($fp)	# tmp$30
    lw $t0, 0($t0)	# deref(tmp$30)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # move 28, tmp$34
    li $t0, 28
    move $s0, $t0 	# tmp$34

    # block (0)
    # livenow=00000000000000000000100000
    # add addr(y), tmp$34, tmp$33
    la $t0, _y
    move $t1, $s0	# tmp$34
    add $t2, $t0, $t1
    sw $t2, -104($fp)	# tmp$33, -1

    # block (0)
    # livenow=00000000000000000000000000
    # param deref(tmp$33)
    lw $t0, -104($fp)	# tmp$33
    lw $t0, 0($t0)	# deref(tmp$33)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # move 32, tmp$37
    li $t0, 32
    sw $t0, -152($fp)	# tmp$37

    # block (0)
    # livenow=00000000000000000000001000
    # add addr(y), tmp$37, tmp$36
    la $t0, _y
    lw $t1, -152($fp)	# tmp$37
    add $t2, $t0, $t1
    sw $t2, -140($fp)	# tmp$36, -1

    # block (0)
    # livenow=00000000000000000000000000
    # param deref(tmp$36)
    lw $t0, -140($fp)	# tmp$36
    lw $t0, 0($t0)	# deref(tmp$36)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # move 36, tmp$40
    li $t0, 36
    move $s0, $t0 	# tmp$40

    # block (0)
    # livenow=00000000000000000000000010
    # add addr(y), tmp$40, tmp$39
    la $t0, _y
    move $t1, $s0	# tmp$40
    add $t2, $t0, $t1
    sw $t2, -172($fp)	# tmp$39, -1

    # block (0)
    # livenow=00000000000000000000000000
    # param deref(tmp$39)
    lw $t0, -172($fp)	# tmp$39
    lw $t0, 0($t0)	# deref(tmp$39)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00000000000000000000000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=00000000000000000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00000000000000000000000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=00000000000000000000000000
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
_z:  .space 40

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

