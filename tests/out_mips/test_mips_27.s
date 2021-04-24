#	NODE v(0) COST - 1.000000, DEGREES - 0
#	NODE u(1) COST - 1.000000, DEGREES - 0
#	NODE x(2) COST - 1.000000, DEGREES - 0
#	NODE w(3) COST - 1.000000, DEGREES - 0
.text
# function g
# formals: u (loc: 8); v (loc: 12); w (loc: 16); x (loc: 20); 
# locals: 
# space for locals: 0 bytes
#
_g:
# block 0 
# def = 0000;
# use = 1111;
# in  = 1111;
# out = 0000;
    # -LEADER- block (0)
    # livenow=1111
    # enter g
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (0)
    # livenow=1111
    # param v
    move $t0, $s0	# v
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0111
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0111
    # param u
    move $t0, $s0	# u
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0011
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0011
    # param x
    move $t0, $s0	# x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0001
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0001
    # param w
    move $t0, $s0	# w
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=0000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=0000
    # leave g

    # block (0)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=0000
    # leave g

    # block (0)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function g

