#	LIVERANGE: EDGE tmp$1(6) -> a(7)
#	LIVERANGE: EDGE tmp$2(4) -> b(5)
#	LIVERANGE: EDGE tmp$2(4) -> a(7)
#	LIVERANGE: EDGE tmp$3(2) -> c(3)
#	LIVERANGE: EDGE tmp$3(2) -> b(5)
#	LIVERANGE: EDGE tmp$3(2) -> a(7)
#	NODE d(0) COST - 2.000000, DEGREES - 0
#	NODE e(1) COST - 2.000000, DEGREES - 0
#	NODE tmp$3(2) COST - 2.000000, DEGREES - 2
#	NODE c(3) COST - 2.000000, DEGREES - 1
#	NODE tmp$2(4) COST - 2.000000, DEGREES - 2
#	NODE b(5) COST - 2.000000, DEGREES - 2
#	NODE tmp$1(6) COST - 2.000000, DEGREES - 1
#	NODE a(7) COST - 2.000000, DEGREES - 2
#	NODE tmp$0(8) COST - 1.000000, DEGREES - 0
#	NODE tmp$0(8) IN REG $s0
#	NODE a(7) IN REG $s1
#	NODE tmp$1(6) IN REG $s0
#	NODE b(5) IN REG $s1
#	NODE tmp$2(4) IN REG $s0
#	NODE c(3) IN REG $s1
#	NODE tmp$3(2) IN REG $s0
#	NODE e(1) IN REG $s0
#	NODE d(0) IN REG $s0
.text
# function f
# formals: a (loc: 8); b (loc: 12); c (loc: 16); d (loc: 20); e (loc: 24); 
# locals: tmp$0 (loc: -4); tmp$1 (loc: -8); tmp$2 (loc: -12); tmp$3 (loc: -16); 
# space for locals: 16 bytes
#
_f:
# block 0 
# def = 001010101;
# use = 110101010;
# in  = 110101010;
# out = 000000000;
    # -LEADER- block (0)
    # livenow=110101010
    # enter f
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -16($sp)   # allocate stack frame

    # block (0)
    # livenow=110101010
    # mul d, e, tmp$3
    move $t0, $s0	# d
    move $t1, $s0	# e
    mul $t2, $t0, $t1
    move $s0, $t2	# tmp$3

    # block (0)
    # livenow=001101010
    # add c, tmp$3, tmp$2
    move $t0, $s1	# c
    move $t1, $s0	# tmp$3
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$2

    # block (0)
    # livenow=000011010
    # mul b, tmp$2, tmp$1
    move $t0, $s1	# b
    move $t1, $s0	# tmp$2
    mul $t2, $t0, $t1
    move $s0, $t2	# tmp$1

    # block (0)
    # livenow=000000110
    # add a, tmp$1, tmp$0
    move $t0, $s1	# a
    move $t1, $s0	# tmp$1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$0

    # block (0)
    # livenow=000000001
    # leave f

    # block (0)
    # livenow=000000001
    # ret tmp$0
    move $v0, $s0	# tmp$0
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=000000000
    # leave f

    # block (0)
    # livenow=000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function f

