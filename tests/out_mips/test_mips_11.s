.text
# function main
# formals: 
# locals: u (loc: -4); x (loc: -44); tmp$0 (loc: -48); tmp$1 (loc: -52); tmp$2 (loc: -56); tmp$3 (loc: -60); tmp$4 (loc: -64); tmp$5 (loc: -68); tmp$6 (loc: -72); tmp$7 (loc: -76); tmp$8 (loc: -80); tmp$9 (loc: -84); tmp$10 (loc: -88); tmp$11 (loc: -92); tmp$12 (loc: -96); 
# space for locals: 96 bytes
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
    la $sp, -96($sp)   # allocate stack frame

    # block (0)
    # livenow=0000000000
    # move 28, tmp$1
    li $t0, 28
    sw $t0, -52($fp)	# tmp$1

    # block (0)
    # livenow=1000000000
    # add addr(y), tmp$1, tmp$0
    la $t0, _y
    lw $t1, -52($fp)	# tmp$1
    add $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$0

    # block (0)
    # livenow=0000000000
    # move 1234, deref(tmp$0)
    li $t0, 1234
    lw $t1, -48($fp)	# tmp$0
    sw $t0, 0($t1)	# deref(tmp$0)

    # block (0)
    # livenow=0000000000
    # move 0, tmp$5
    li $t0, 0
    sw $t0, -68($fp)	# tmp$5

    # block (0)
    # livenow=0001000000
    # add addr(x), tmp$5, tmp$4
    la $t0, -44($fp)	# addr(x)
    lw $t1, -68($fp)	# tmp$5
    add $t2, $t0, $t1
    sw $t2, -64($fp)	# tmp$4

    # block (0)
    # livenow=0000000000
    # move 28, tmp$8
    li $t0, 28
    sw $t0, -80($fp)	# tmp$8

    # block (0)
    # livenow=0000001000
    # add addr(y), tmp$8, tmp$7
    la $t0, _y
    lw $t1, -80($fp)	# tmp$8
    add $t2, $t0, $t1
    sw $t2, -76($fp)	# tmp$7

    # block (0)
    # livenow=0000000000
    # move deref(tmp$7), deref(tmp$4)
    lw $t0, -76($fp)	# tmp$7
    lw $t0, 0($t0)	# deref(tmp$7)
    lw $t1, -64($fp)	# tmp$4
    sw $t0, 0($t1)	# deref(tmp$4)

    # block (0)
    # livenow=0000000000
    # move 0, tmp$11
    li $t0, 0
    sw $t0, -92($fp)	# tmp$11

    # block (0)
    # livenow=0000000010
    # add addr(x), tmp$11, tmp$10
    la $t0, -44($fp)	# addr(x)
    lw $t1, -92($fp)	# tmp$11
    add $t2, $t0, $t1
    sw $t2, -88($fp)	# tmp$10

    # block (0)
    # livenow=0000000000
    # param deref(tmp$10)
    lw $t0, -88($fp)	# tmp$10
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

