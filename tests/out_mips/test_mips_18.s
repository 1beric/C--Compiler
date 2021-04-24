#	LIVERANGE: EDGE tmp$9(12) -> b(8)
#	LIVERANGE: EDGE tmp$10(11) -> a(4)
#	LIVERANGE: EDGE tmp$10(11) -> b(8)
#	LIVERANGE: EDGE tmp$11(10) -> a(4)
#	LIVERANGE: EDGE tmp$11(10) -> b(8)
#	LIVERANGE: EDGE tmp$12(9) -> a(4)
#	LIVERANGE: EDGE tmp$12(9) -> b(8)
#	LIVERANGE: EDGE b(8) -> a(4)
#	LIVERANGE: EDGE tmp$5(7) -> a(4)
#	LIVERANGE: EDGE tmp$4(6) -> a(4)
#	LIVERANGE: EDGE tmp$7(5) -> a(4)
#	NODE x(0) COST - 7.000000, DEGREES - 0
#	NODE y(1) COST - 5.000000, DEGREES - 0
#	NODE z(2) COST - 5.000000, DEGREES - 0
#	NODE tmp$3(3) COST - 1.000000, DEGREES - 0
#	NODE a(4) COST - 7.000000, DEGREES - 6
#	NODE tmp$7(5) COST - 2.000000, DEGREES - 0
#	NODE tmp$4(6) COST - 2.000000, DEGREES - 1
#	NODE tmp$5(7) COST - 1.000000, DEGREES - 1
#	NODE b(8) COST - 3.000000, DEGREES - 5
#	NODE tmp$12(9) COST - 2.000000, DEGREES - 2
#	NODE tmp$11(10) COST - 2.000000, DEGREES - 2
#	NODE tmp$10(11) COST - 2.000000, DEGREES - 2
#	NODE tmp$9(12) COST - 2.000000, DEGREES - 1
#	NODE tmp$8(13) COST - 1.000000, DEGREES - 0
#	NODE c(14) COST - 2.000000, DEGREES - 0
#	NODE c(14) IN REG $s0
#	NODE tmp$8(13) IN REG $s0
#	NODE tmp$9(12) IN REG $s0
#	NODE tmp$10(11) IN REG $s2
#	NODE tmp$11(10) IN REG $s2
#	NODE tmp$12(9) IN REG $s2
#	NODE b(8) IN REG $s1
#	NODE tmp$5(7) IN REG $s1
#	NODE tmp$4(6) IN REG $s1
#	NODE tmp$7(5) IN REG $s1
#	NODE a(4) IN REG $s0
#	NODE tmp$3(3) IN REG $s0
.text
# function main
# formals: 
# locals: a (loc: -1); b (loc: -2); c (loc: -3); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); tmp$5 (loc: -28); tmp$6 (loc: -32); tmp$7 (loc: -36); tmp$8 (loc: -40); tmp$9 (loc: -44); tmp$10 (loc: -48); tmp$11 (loc: -52); tmp$12 (loc: -56); 
# space for locals: 56 bytes
#
_main:
# block 0 
# def = 111111111111111;
# use = 000000000000000;
# in  = 000000000000000;
# out = 000000000000000;
    # -LEADER- block (0)
    # livenow=000000000000000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -56($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=000000000000000
    # move 2, x
    li $t0, 2
    sw $t0, _x

    # block (0)
    # livenow=000000000000000
    # move 3, y
    li $t0, 3
    sw $t0, _y

    # block (0)
    # livenow=000000000000000
    # move 4, z
    li $t0, 4
    sw $t0, _z

    # block (0)
    # livenow=000000000000000
    # move 194, tmp$3
    li $t0, 194
    move $s0, $t0 	# tmp$3

    # block (0)
    # livenow=000100000000000
    # move tmp$3, a
    move $t0, $s0	# tmp$3
    move $s0, $t0 	# a

    # block (0)
    # livenow=000010000000000
    # move 5, tmp$7
    li $t0, 5
    move $s1, $t0 	# tmp$7

    # block (0)
    # livenow=000011000000000
    # div a, tmp$7, tmp$6
    move $t0, $s0	# a
    move $t1, $s1	# tmp$7
    div $t2, $t0, $t1
    sw $t2, -32($fp)	# tmp$6, -1

    # block (0)
    # livenow=000010100000000
    # mul tmp$6, 4, tmp$5
    lw $t0, -32($fp)	# tmp$6
    li $t1, 4
    mul $t2, $t0, $t1
    move $s1, $t2	# tmp$5

    # block (0)
    # livenow=000010010000000
    # move tmp$5, b
    move $t0, $s1	# tmp$5
    move $s1, $t0 	# b

    # block (0)
    # livenow=000010001000000
    # move 5, tmp$12
    li $t0, 5
    move $s2, $t0 	# tmp$12

    # block (0)
    # livenow=000010001100000
    # div a, tmp$12, tmp$11
    move $t0, $s0	# a
    move $t1, $s2	# tmp$12
    div $t2, $t0, $t1
    move $s2, $t2	# tmp$11

    # block (0)
    # livenow=000010001010000
    # mul tmp$11, 4, tmp$10
    move $t0, $s2	# tmp$11
    li $t1, 4
    mul $t2, $t0, $t1
    move $s2, $t2	# tmp$10

    # block (0)
    # livenow=000010001001000
    # sub tmp$10, a, tmp$9
    move $t0, $s2	# tmp$10
    move $t1, $s0	# a
    sub $t2, $t0, $t1
    move $s0, $t2	# tmp$9

    # block (0)
    # livenow=000000001000100
    # add tmp$9, b, tmp$8
    move $t0, $s0	# tmp$9
    move $t1, $s1	# b
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$8

    # block (0)
    # livenow=000000000000010
    # move tmp$8, c
    move $t0, $s0	# tmp$8
    move $s0, $t0 	# c

    # block (0)
    # livenow=000000000000001
    # param c
    move $t0, $s0	# c
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=000000000000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000000000000000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=000000000000000
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

