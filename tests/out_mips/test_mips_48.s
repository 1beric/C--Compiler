#	NODE x(0) COST - 1.000000, DEGREES - 0
.text
# function id
# formals: x (loc: 8); 
# locals: 
# space for locals: 0 bytes
#
_id:
# block 0 
# def = 0;
# use = 1;
# in  = 1;
# out = 0;
    # -LEADER- block (0)
    # livenow=1
    # enter id
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -0($sp)   # allocate stack frame

    # block (0)
    # livenow=1
    # leave id

    # block (0)
    # livenow=1
    # ret x
    lw $v0, 8($fp)	# x
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=0
    # leave id

    # block (0)
    # livenow=0
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function id

#	LIVERANGE: EDGE i(0) -> x(2)
#	LIVERANGE: EDGE i(0) -> tmp$15(5)
#	LIVERANGE: EDGE i(0) -> tmp$14(8)
#	LIVERANGE: EDGE i(0) -> tmp$17(11)
#	LIVERANGE: EDGE i(0) -> tmp$18(14)
#	LIVERANGE: EDGE i(0) -> tmp$35(17)
#	LIVERANGE: EDGE i(0) -> tmp$34(22)
#	LIVERANGE: EDGE i(0) -> tmp$43(27)
#	LIVERANGE: EDGE i(0) -> tmp$47(32)
#	LIVERANGE: EDGE i(0) -> tmp$42(37)
#	LIVERANGE: EDGE i(0) -> tmp$71(42)
#	LIVERANGE: EDGE i(0) -> tmp$75(47)
#	LIVERANGE: EDGE i(0) -> tmp$50(52)
#	LIVERANGE: EDGE i(0) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$2(4) -> x(2)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$15(5)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$14(8)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$17(11)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$18(14)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$35(17)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$2(4) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$5(1) -> i(0)
#	LIVERANGE: EDGE tmp$5(1) -> x(2)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$15(5)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$14(8)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$17(11)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$18(14)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$35(17)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$5(1) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$54(51) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$56(49) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$57(48) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$58(46) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$58(46) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$60(44) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$60(44) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$61(43) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$61(43) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$62(41) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$62(41) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$62(41) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$44(39) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$44(39) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$44(39) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$65(38) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$65(38) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$65(38) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$41(36) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$41(36) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$41(36) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$41(36) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$20(34) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$20(34) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$20(34) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$20(34) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$21(33) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$21(33) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$21(33) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$21(33) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$40(31) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$40(31) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$40(31) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$40(31) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$40(31) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$24(29) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$24(29) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$24(29) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$24(29) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$24(29) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$25(28) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$25(28) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$25(28) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$25(28) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$25(28) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$26(26) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$26(26) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$26(26) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$26(26) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$26(26) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$26(26) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$28(24) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$28(24) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$28(24) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$28(24) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$28(24) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$28(24) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$36(23) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$36(23) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$36(23) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$36(23) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$36(23) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$36(23) -> tmp$50(52)
#	LIVERANGE: EDGE res(21) -> tmp$34(22)
#	LIVERANGE: EDGE res(21) -> tmp$43(27)
#	LIVERANGE: EDGE res(21) -> tmp$47(32)
#	LIVERANGE: EDGE res(21) -> tmp$42(37)
#	LIVERANGE: EDGE res(21) -> tmp$71(42)
#	LIVERANGE: EDGE res(21) -> tmp$75(47)
#	LIVERANGE: EDGE res(21) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$32(19) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$33(18) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$35(17)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$7(15) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$18(14)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$35(17)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$9(12) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$17(11)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$18(14)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$35(17)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$11(9) -> tmp$50(52)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$14(8)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$17(11)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$18(14)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$35(17)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$34(22)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$43(27)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$47(32)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$42(37)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$71(42)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$75(47)
#	LIVERANGE: EDGE tmp$3(6) -> tmp$50(52)
#	NODE i(0) COST - 71.000000, DEGREES - 15
#	NODE tmp$5(1) COST - 10.000000, DEGREES - 14
#	NODE x(2) COST - 0.000000, DEGREES - 3
#	NODE tmp$4(3) COST - 10.000000, DEGREES - 0
#	NODE tmp$2(4) COST - 10.000000, DEGREES - 13
#	NODE tmp$15(5) COST - 1.000000, DEGREES - 3
#	NODE tmp$3(6) COST - 20.000000, DEGREES - 10
#	NODE tmp$12(7) COST - 1.000000, DEGREES - 0
#	NODE tmp$14(8) COST - 1.000000, DEGREES - 4
#	NODE tmp$11(9) COST - 1.000000, DEGREES - 10
#	NODE tmp$10(10) COST - 1.000000, DEGREES - 0
#	NODE tmp$17(11) COST - 1.000000, DEGREES - 5
#	NODE tmp$9(12) COST - 1.000000, DEGREES - 9
#	NODE tmp$8(13) COST - 1.000000, DEGREES - 0
#	NODE tmp$18(14) COST - 1.000000, DEGREES - 6
#	NODE tmp$7(15) COST - 1.000000, DEGREES - 8
#	NODE tmp$6(16) COST - 1.000000, DEGREES - 0
#	NODE tmp$35(17) COST - 2.000000, DEGREES - 7
#	NODE tmp$33(18) COST - 1.000000, DEGREES - 7
#	NODE tmp$32(19) COST - 1.000000, DEGREES - 7
#	NODE tmp$31(20) COST - 1.000000, DEGREES - 0
#	NODE res(21) COST - 5.000000, DEGREES - 7
#	NODE tmp$34(22) COST - 1.000000, DEGREES - 10
#	NODE tmp$36(23) COST - 2.000000, DEGREES - 6
#	NODE tmp$28(24) COST - 1.000000, DEGREES - 6
#	NODE tmp$27(25) COST - 1.000000, DEGREES - 0
#	NODE tmp$26(26) COST - 1.000000, DEGREES - 6
#	NODE tmp$43(27) COST - 2.000000, DEGREES - 13
#	NODE tmp$25(28) COST - 1.000000, DEGREES - 5
#	NODE tmp$24(29) COST - 1.000000, DEGREES - 5
#	NODE tmp$23(30) COST - 1.000000, DEGREES - 0
#	NODE tmp$40(31) COST - 2.000000, DEGREES - 5
#	NODE tmp$47(32) COST - 2.000000, DEGREES - 16
#	NODE tmp$21(33) COST - 1.000000, DEGREES - 4
#	NODE tmp$20(34) COST - 1.000000, DEGREES - 4
#	NODE tmp$19(35) COST - 1.000000, DEGREES - 0
#	NODE tmp$41(36) COST - 1.000000, DEGREES - 4
#	NODE tmp$42(37) COST - 2.000000, DEGREES - 19
#	NODE tmp$65(38) COST - 1.000000, DEGREES - 3
#	NODE tmp$44(39) COST - 2.000000, DEGREES - 3
#	NODE tmp$63(40) COST - 1.000000, DEGREES - 0
#	NODE tmp$62(41) COST - 1.000000, DEGREES - 3
#	NODE tmp$71(42) COST - 2.000000, DEGREES - 22
#	NODE tmp$61(43) COST - 1.000000, DEGREES - 2
#	NODE tmp$60(44) COST - 1.000000, DEGREES - 2
#	NODE tmp$46(45) COST - 2.000000, DEGREES - 0
#	NODE tmp$58(46) COST - 1.000000, DEGREES - 2
#	NODE tmp$75(47) COST - 2.000000, DEGREES - 25
#	NODE tmp$57(48) COST - 1.000000, DEGREES - 1
#	NODE tmp$56(49) COST - 1.000000, DEGREES - 1
#	NODE tmp$55(50) COST - 1.000000, DEGREES - 0
#	NODE tmp$54(51) COST - 1.000000, DEGREES - 1
#	NODE tmp$50(52) COST - 2.000000, DEGREES - 28
#	NODE tmp$53(53) COST - 1.000000, DEGREES - 0
#	NODE tmp$52(54) COST - 1.000000, DEGREES - 0
#	NODE tmp$51(55) COST - 1.000000, DEGREES - 0
# NEED TO SPILL THIS NODE 47, 0.142857!!!
# NEED TO SPILL THIS NODE 52, 0.181818!!!
# NEED TO SPILL THIS NODE 37, 0.181818!!!
.text
# function main
# formals: 
# locals: res (loc: -4); i (loc: -8); tmp$0 (loc: -12); tmp$1 (loc: -16); tmp$2 (loc: -20); tmp$3 (loc: -24); tmp$4 (loc: -28); tmp$5 (loc: -32); tmp$6 (loc: -36); tmp$7 (loc: -40); tmp$8 (loc: -44); tmp$9 (loc: -48); tmp$10 (loc: -52); tmp$20 (loc: -56); tmp$11 (loc: -60); tmp$30 (loc: -64); tmp$21 (loc: -68); tmp$12 (loc: -72); tmp$40 (loc: -76); tmp$31 (loc: -80); tmp$22 (loc: -84); tmp$13 (loc: -88); tmp$50 (loc: -92); tmp$41 (loc: -96); tmp$32 (loc: -100); tmp$23 (loc: -104); tmp$14 (loc: -108); tmp$60 (loc: -112); tmp$51 (loc: -116); tmp$42 (loc: -120); tmp$33 (loc: -124); tmp$24 (loc: -128); tmp$15 (loc: -132); tmp$70 (loc: -136); tmp$61 (loc: -140); tmp$52 (loc: -144); tmp$43 (loc: -148); tmp$34 (loc: -152); tmp$25 (loc: -156); tmp$16 (loc: -160); tmp$80 (loc: -164); tmp$71 (loc: -168); tmp$62 (loc: -172); tmp$53 (loc: -176); tmp$44 (loc: -180); tmp$35 (loc: -184); tmp$26 (loc: -188); tmp$17 (loc: -192); tmp$72 (loc: -196); tmp$63 (loc: -200); tmp$54 (loc: -204); tmp$45 (loc: -208); tmp$36 (loc: -212); tmp$27 (loc: -216); tmp$18 (loc: -220); tmp$73 (loc: -224); tmp$64 (loc: -228); tmp$55 (loc: -232); tmp$46 (loc: -236); tmp$37 (loc: -240); tmp$28 (loc: -244); tmp$19 (loc: -248); tmp$74 (loc: -252); tmp$65 (loc: -256); tmp$56 (loc: -260); tmp$47 (loc: -264); tmp$38 (loc: -268); tmp$29 (loc: -272); tmp$75 (loc: -276); tmp$66 (loc: -280); tmp$57 (loc: -284); tmp$48 (loc: -288); tmp$39 (loc: -292); tmp$76 (loc: -296); tmp$67 (loc: -300); tmp$58 (loc: -304); tmp$49 (loc: -308); tmp$77 (loc: -312); tmp$68 (loc: -316); tmp$59 (loc: -320); tmp$78 (loc: -324); tmp$69 (loc: -328); tmp$79 (loc: -332); 
# space for locals: 332 bytes
#
_main:
# block 1 
# def = 10000000000000000000000000000000000000000000000000000000;
# use = 00000000000000000000000000000000000000000000000000000000;
# in  = 00100100100100100100001000010000100001000010000100001000;
# out = 10100100100100100100001000010000100001000010000100001000;
    # -LEADER- block (1)
    # livenow=00100100100100100100001000010000100001000010000100001000
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -332($sp)   # allocate stack frame

    # block (1)
    # livenow=00100100100100100100001000010000100001000010000100001000
    # move 0, i
    li $t0, 0
    sw $t0, -8($fp)	# i

# block 2 
# def = 00000000000000000000000000000000000000000000000000000000;
# use = 10000000000000000000000000000000000000000000000000000000;
# in  = 10100100100100100100001000010000100001000010000100001000;
# out = 10100100100100100100001000010000100001000010000100001000;
    # -LEADER- block (2)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # label 0
Lbl0:

    # block (2)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # if_ge i, 10, label 2
    lw $t0, -8($fp)	# i
    li $t1, 10
    bge $t0, $t1, Lbl2

# block 3 
# def = 01011000000000000000000000000000000000000000000000000000;
# use = 10100000000000000000000000000000000000000000000000000000;
# in  = 10100100100100100100001000010000100001000010000100001000;
# out = 10100100100100100100001000010000100001000010000100001000;
    # -LEADER- block (3)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # label 1
Lbl1:

    # block (3)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # mul i, 4, tmp$5
    lw $t0, -8($fp)	# i
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -32($fp)	# tmp$5

    # block (3)
    # livenow=11100100100100100100001000010000100001000010000100001000
    # add addr(x), tmp$5, tmp$4
    la $t0, _x
    lw $t1, -32($fp)	# tmp$5
    add $t2, $t0, $t1
    sw $t2, -28($fp)	# tmp$4

    # block (3)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # move i, deref(tmp$4)
    lw $t0, -8($fp)	# i
    lw $t1, -28($fp)	# tmp$4
    sw $t0, 0($t1)	# deref(tmp$4)

    # block (3)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # add i, 1, tmp$2
    lw $t0, -8($fp)	# i
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -20($fp)	# tmp$2

    # block (3)
    # livenow=00101100100100100100001000010000100001000010000100001000
    # move tmp$2, i
    lw $t0, -20($fp)	# tmp$2
    sw $t0, -8($fp)	# i

    # block (3)
    # livenow=10100100100100100100001000010000100001000010000100001000
    # goto label 0
    j Lbl0

# block 4 
# def = 00000011011011011011110111101111011110111101111011110111;
# use = 00100100100100100100001000010000100001000010000100001000;
# in  = 00100100100100100100001000010000100001000010000100001000;
# out = 00000000000000000000000000000000000000000000000000000000;
    # -LEADER- block (4)
    # livenow=00000100100100100100001000010000100001000010000100001000
    # label 2
Lbl2:

    # block (4)
    # livenow=00000100100100100100001000010000100001000010000100001000
    # param 5
    li $t0, 5
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000100100100100100001000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000100100100100100001000010000100001000010000100001000
    # retrieve tmp$15
    sw $v0, -132($fp)	# tmp$15

    # block (4)
    # livenow=00000100100100100100001000010000100001000010000100001000
    # mul tmp$15, 4, tmp$13
    lw $t0, -132($fp)	# tmp$15
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -88($fp)	# tmp$13

    # block (4)
    # livenow=00000010100100100100001000010000100001000010000100001000
    # add addr(x), tmp$13, tmp$12
    la $t0, _x
    lw $t1, -88($fp)	# tmp$13
    add $t2, $t0, $t1
    sw $t2, -72($fp)	# tmp$12

    # block (4)
    # livenow=00000000100100100100001000010000100001000010000100001000
    # param deref(tmp$12)
    lw $t0, -72($fp)	# tmp$12
    lw $t0, 0($t0)	# deref(tmp$12)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000100100100100001000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000100100100100001000010000100001000010000100001000
    # retrieve tmp$16
    sw $v0, -160($fp)	# tmp$16

    # block (4)
    # livenow=00000000100100100100001000010000100001000010000100001000
    # mul tmp$16, 4, tmp$11
    lw $t0, -160($fp)	# tmp$16
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -60($fp)	# tmp$11

    # block (4)
    # livenow=00000000010100100100001000010000100001000010000100001000
    # add addr(x), tmp$11, tmp$10
    la $t0, _x
    lw $t1, -60($fp)	# tmp$11
    add $t2, $t0, $t1
    sw $t2, -52($fp)	# tmp$10

    # block (4)
    # livenow=00000000000100100100001000010000100001000010000100001000
    # param deref(tmp$10)
    lw $t0, -52($fp)	# tmp$10
    lw $t0, 0($t0)	# deref(tmp$10)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000100100100001000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000100100100001000010000100001000010000100001000
    # retrieve tmp$17
    sw $v0, -192($fp)	# tmp$17

    # block (4)
    # livenow=00000000000100100100001000010000100001000010000100001000
    # mul tmp$17, 4, tmp$9
    lw $t0, -192($fp)	# tmp$17
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$9

    # block (4)
    # livenow=00000000000010100100001000010000100001000010000100001000
    # add addr(x), tmp$9, tmp$8
    la $t0, _x
    lw $t1, -48($fp)	# tmp$9
    add $t2, $t0, $t1
    sw $t2, -44($fp)	# tmp$8

    # block (4)
    # livenow=00000000000000100100001000010000100001000010000100001000
    # param deref(tmp$8)
    lw $t0, -44($fp)	# tmp$8
    lw $t0, 0($t0)	# deref(tmp$8)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000100100001000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000100100001000010000100001000010000100001000
    # retrieve tmp$18
    sw $v0, -220($fp)	# tmp$18

    # block (4)
    # livenow=00000000000000100100001000010000100001000010000100001000
    # mul tmp$18, 4, tmp$7
    lw $t0, -220($fp)	# tmp$18
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -40($fp)	# tmp$7

    # block (4)
    # livenow=00000000000000010100001000010000100001000010000100001000
    # add addr(x), tmp$7, tmp$6
    la $t0, _x
    lw $t1, -40($fp)	# tmp$7
    add $t2, $t0, $t1
    sw $t2, -36($fp)	# tmp$6

    # block (4)
    # livenow=00000000000000000100001000010000100001000010000100001000
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000100001000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000100001000010000100001000010000100001000
    # retrieve tmp$35
    sw $v0, -184($fp)	# tmp$35

    # block (4)
    # livenow=00000000000000000100001000010000100001000010000100001000
    # add tmp$35, 1, tmp$33
    lw $t0, -184($fp)	# tmp$35
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -124($fp)	# tmp$33

    # block (4)
    # livenow=00000000000000000010001000010000100001000010000100001000
    # mul tmp$33, 4, tmp$32
    lw $t0, -124($fp)	# tmp$33
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -100($fp)	# tmp$32

    # block (4)
    # livenow=00000000000000000001001000010000100001000010000100001000
    # add addr(x), tmp$32, tmp$31
    la $t0, _x
    lw $t1, -100($fp)	# tmp$32
    add $t2, $t0, $t1
    sw $t2, -80($fp)	# tmp$31

    # block (4)
    # livenow=00000000000000000000001000010000100001000010000100001000
    # add deref(tmp$31), 1, tmp$30
    lw $t0, -80($fp)	# tmp$31
    lw $t0, 0($t0)	# deref(tmp$31)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -64($fp)	# tmp$30

    # block (4)
    # livenow=00000000000000000000011000010000100001000010000100001000
    # param tmp$30
    lw $t0, -64($fp)	# tmp$30
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000001000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000001000010000100001000010000100001000
    # retrieve tmp$39
    sw $v0, -292($fp)	# tmp$39

    # block (4)
    # livenow=00000000000000000000001000010000100001000010000100001000
    # add tmp$39, 1, tmp$29
    lw $t0, -292($fp)	# tmp$39
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -272($fp)	# tmp$29

    # block (4)
    # livenow=00000000000000000000000100010000100001000010000100001000
    # mul tmp$29, 4, tmp$28
    lw $t0, -272($fp)	# tmp$29
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -244($fp)	# tmp$28

    # block (4)
    # livenow=00000000000000000000000010010000100001000010000100001000
    # add addr(x), tmp$28, tmp$27
    la $t0, _x
    lw $t1, -244($fp)	# tmp$28
    add $t2, $t0, $t1
    sw $t2, -216($fp)	# tmp$27

    # block (4)
    # livenow=00000000000000000000000000010000100001000010000100001000
    # add deref(tmp$27), 1, tmp$26
    lw $t0, -216($fp)	# tmp$27
    lw $t0, 0($t0)	# deref(tmp$27)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -188($fp)	# tmp$26

    # block (4)
    # livenow=00000000000000000000000000110000100001000010000100001000
    # param tmp$26
    lw $t0, -188($fp)	# tmp$26
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000010000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000010000100001000010000100001000
    # retrieve tmp$43
    sw $v0, -148($fp)	# tmp$43

    # block (4)
    # livenow=00000000000000000000000000010000100001000010000100001000
    # add tmp$43, 1, tmp$25
    lw $t0, -148($fp)	# tmp$43
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -156($fp)	# tmp$25

    # block (4)
    # livenow=00000000000000000000000000001000100001000010000100001000
    # mul tmp$25, 4, tmp$24
    lw $t0, -156($fp)	# tmp$25
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -128($fp)	# tmp$24

    # block (4)
    # livenow=00000000000000000000000000000100100001000010000100001000
    # add addr(x), tmp$24, tmp$23
    la $t0, _x
    lw $t1, -128($fp)	# tmp$24
    add $t2, $t0, $t1
    sw $t2, -104($fp)	# tmp$23

    # block (4)
    # livenow=00000000000000000000000000000000100001000010000100001000
    # add deref(tmp$23), 1, tmp$22
    lw $t0, -104($fp)	# tmp$23
    lw $t0, 0($t0)	# deref(tmp$23)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -84($fp)	# tmp$22

    # block (4)
    # livenow=00000000000000000000000000000001100001000010000100001000
    # param tmp$22
    lw $t0, -84($fp)	# tmp$22
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000000000100001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000000000100001000010000100001000
    # retrieve tmp$47
    sw $v0, -264($fp)	# tmp$47

    # block (4)
    # livenow=00000000000000000000000000000000100001000010000100001000
    # add tmp$47, 1, tmp$21
    lw $t0, -264($fp)	# tmp$47
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -68($fp)	# tmp$21

    # block (4)
    # livenow=00000000000000000000000000000000010001000010000100001000
    # mul tmp$21, 4, tmp$20
    lw $t0, -68($fp)	# tmp$21
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -56($fp)	# tmp$20

    # block (4)
    # livenow=00000000000000000000000000000000001001000010000100001000
    # add addr(x), tmp$20, tmp$19
    la $t0, _x
    lw $t1, -56($fp)	# tmp$20
    add $t2, $t0, $t1
    sw $t2, -248($fp)	# tmp$19

    # block (4)
    # livenow=00000000000000000000000000000000000001000010000100001000
    # add deref(tmp$6), 1, tmp$49
    lw $t0, -36($fp)	# tmp$6
    lw $t0, 0($t0)	# deref(tmp$6)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -308($fp)	# tmp$49

    # block (4)
    # livenow=00000000000000000000000000000000000011000010000100001000
    # move tmp$49, deref(tmp$19)
    lw $t0, -308($fp)	# tmp$49
    lw $t1, -248($fp)	# tmp$19
    sw $t0, 0($t1)	# deref(tmp$19)

    # block (4)
    # livenow=00000000000000000000000000000000000001000010000100001000
    # param 0
    li $t0, 0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000001000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000001000010000100001000
    # retrieve tmp$67
    sw $v0, -300($fp)	# tmp$67

    # block (4)
    # livenow=00000000000000000000000000000000000001000010000100001000
    # add tmp$67, 1, tmp$65
    lw $t0, -300($fp)	# tmp$67
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -256($fp)	# tmp$65

    # block (4)
    # livenow=00000000000000000000000000000000000000100010000100001000
    # mul tmp$65, 4, tmp$64
    lw $t0, -256($fp)	# tmp$65
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -228($fp)	# tmp$64

    # block (4)
    # livenow=00000000000000000000000000000000000000010010000100001000
    # add addr(x), tmp$64, tmp$63
    la $t0, _x
    lw $t1, -228($fp)	# tmp$64
    add $t2, $t0, $t1
    sw $t2, -200($fp)	# tmp$63

    # block (4)
    # livenow=00000000000000000000000000000000000000000010000100001000
    # add deref(tmp$63), 1, tmp$62
    lw $t0, -200($fp)	# tmp$63
    lw $t0, 0($t0)	# deref(tmp$63)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -172($fp)	# tmp$62

    # block (4)
    # livenow=00000000000000000000000000000000000000000110000100001000
    # param tmp$62
    lw $t0, -172($fp)	# tmp$62
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000010000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000010000100001000
    # retrieve tmp$71
    sw $v0, -168($fp)	# tmp$71

    # block (4)
    # livenow=00000000000000000000000000000000000000000010000100001000
    # add tmp$71, 1, tmp$61
    lw $t0, -168($fp)	# tmp$71
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -140($fp)	# tmp$61

    # block (4)
    # livenow=00000000000000000000000000000000000000000001000100001000
    # mul tmp$61, 4, tmp$60
    lw $t0, -140($fp)	# tmp$61
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -112($fp)	# tmp$60

    # block (4)
    # livenow=00000000000000000000000000000000000000000000100100001000
    # add addr(x), tmp$60, tmp$59
    la $t0, _x
    lw $t1, -112($fp)	# tmp$60
    add $t2, $t0, $t1
    sw $t2, -320($fp)	# tmp$59

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000100001000
    # add deref(tmp$59), 1, tmp$58
    lw $t0, -320($fp)	# tmp$59
    lw $t0, 0($t0)	# deref(tmp$59)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -304($fp)	# tmp$58

    # block (4)
    # livenow=00000000000000000000000000000000000000000000001100001000
    # param tmp$58
    lw $t0, -304($fp)	# tmp$58
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000100001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000100001000
    # retrieve tmp$75
    sw $v0, -276($fp)	# tmp$75

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000100001000
    # add tmp$75, 1, tmp$57
    lw $t0, -276($fp)	# tmp$75
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -284($fp)	# tmp$57

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000010001000
    # mul tmp$57, 4, tmp$56
    lw $t0, -284($fp)	# tmp$57
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -260($fp)	# tmp$56

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000001001000
    # add addr(x), tmp$56, tmp$55
    la $t0, _x
    lw $t1, -260($fp)	# tmp$56
    add $t2, $t0, $t1
    sw $t2, -232($fp)	# tmp$55

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000001000
    # add deref(tmp$55), 1, tmp$54
    lw $t0, -232($fp)	# tmp$55
    lw $t0, 0($t0)	# deref(tmp$55)
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -204($fp)	# tmp$54

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000011000
    # param tmp$54
    lw $t0, -204($fp)	# tmp$54
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000001000
    # call id, 1
    jal _id
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000001000
    # retrieve tmp$79
    sw $v0, -332($fp)	# tmp$79

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000001000
    # add tmp$79, 1, tmp$53
    lw $t0, -332($fp)	# tmp$79
    li $t1, 1
    add $t2, $t0, $t1
    sw $t2, -176($fp)	# tmp$53

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000100
    # mul tmp$53, 4, tmp$52
    lw $t0, -176($fp)	# tmp$53
    li $t1, 4
    mul $t2, $t0, $t1
    sw $t2, -144($fp)	# tmp$52

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000010
    # add addr(x), tmp$52, tmp$51
    la $t0, _x
    lw $t1, -144($fp)	# tmp$52
    add $t2, $t0, $t1
    sw $t2, -116($fp)	# tmp$51

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000000
    # param deref(tmp$51)
    lw $t0, -116($fp)	# tmp$51
    lw $t0, 0($t0)	# deref(tmp$51)
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000000
    # leave main

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000000
    # leave main

    # block (4)
    # livenow=00000000000000000000000000000000000000000000000000000000
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

