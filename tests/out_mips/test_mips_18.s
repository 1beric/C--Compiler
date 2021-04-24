#	NODE x(0) COST - 15.000000, DEGREES - 0
#	NODE tmp$6(1) COST - 0.500000, DEGREES - 0
#	NODE tmp$1(2) COST - 1.000000, DEGREES - 0
#	NODE tmp$1(2) IN REG $s0
#	NODE tmp$6(1) IN REG $s0
#	NODE x(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); y (loc: -8); tmp$0 (loc: -12); tmp$1 (loc: -16); tmp$2 (loc: -20); tmp$3 (loc: -24); tmp$4 (loc: -28); tmp$5 (loc: -32); tmp$6 (loc: -36); tmp$7 (loc: -40); tmp$8 (loc: -44); tmp$9 (loc: -48); tmp$10 (loc: -52); tmp$20 (loc: -56); tmp$11 (loc: -60); tmp$21 (loc: -64); tmp$12 (loc: -68); tmp$13 (loc: -72); tmp$14 (loc: -76); tmp$15 (loc: -80); tmp$16 (loc: -84); tmp$17 (loc: -88); tmp$18 (loc: -92); tmp$19 (loc: -96); 
# space for locals: 96 bytes
#
_main:
# block 0 
# def = 100;
# use = 000;
# in  = 000;
# out = 100;
    # -LEADER- block (0)
    # livenow=000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -96($sp)   # allocate stack frame

    # block (0)
    # livenow=000
    # move 12, x
    li $t0, 12
    sw $t0, -4($fp)	# x

    # block (0)
    # livenow=100
    # if_le 12, 0, label 1
    li $t0, 12
    li $t1, 0
    ble $t0, $t1, Lbl1

# block 1 
# def = 010;
# use = 100;
# in  = 100;
# out = 100;
    # -LEADER- block (1)
    # livenow=100
    # label 0
Lbl0:

    # block (1)
    # livenow=100
    # add x, 1, tmp$6
    lw $t0, -4($fp)	# x
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -36($fp)	# tmp$6

    # block (1)
    # livenow=010
    # move tmp$6, x
    lw $t0, -36($fp)	# tmp$6
    sw $t0, -4($fp)	# x

    # block (1)
    # livenow=100
    # goto label 2
    j Lbl2

# block 2 
# def = 000;
# use = 000;
# in  = 100;
# out = 100;
    # -LEADER- block (2)
    # livenow=100
    # label 1
Lbl1:

# block 3 
# def = 000;
# use = 100;
# in  = 100;
# out = 100;
    # -LEADER- block (3)
    # livenow=100
    # label 2
Lbl2:

    # block (3)
    # livenow=100
    # if_le x, 0, label 4
    lw $t0, -4($fp)	# x
    li $t1, 0
    ble $t0, $t1, Lbl4

# block 4 
# def = 001;
# use = 100;
# in  = 100;
# out = 100;
    # -LEADER- block (4)
    # livenow=100
    # label 3
Lbl3:

    # block (4)
    # livenow=100
    # add x, 1, tmp$16
    lw $t0, -4($fp)	# x
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -84($fp)	# tmp$16

    # block (4)
    # livenow=001
    # move tmp$16, x
    lw $t0, -84($fp)	# tmp$16
    sw $t0, -4($fp)	# x

    # block (4)
    # livenow=100
    # goto label 5
    j Lbl5

# block 5 
# def = 000;
# use = 000;
# in  = 100;
# out = 100;
    # -LEADER- block (5)
    # livenow=100
    # label 4
Lbl4:

# block 6 
# def = 000;
# use = 100;
# in  = 100;
# out = 000;
    # -LEADER- block (6)
    # livenow=100
    # label 5
Lbl5:

    # block (6)
    # livenow=100
    # param x
    lw $t0, -4($fp)	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (6)
    # livenow=000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (6)
    # livenow=000
    # leave main

    # block (6)
    # livenow=000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (6)
    # livenow=000
    # leave main

    # block (6)
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

