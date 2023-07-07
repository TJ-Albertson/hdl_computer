// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

    //init answer memory to 0
    @2
    M=0

    //Check if either var is zero, jump to zero if
    @0
    D=M
    @ZERO
    D;JEQ
    @1
    D=M
    @ZERO
    D;JEQ

//
(LOOP)
    @0
    D=M
    @INFINITE_LOOP
    D;JEQ

    @1
    D=M

    @2
    M=M+D

    @0
    M=M-1

    @LOOP
    0;JMP

(ZERO)
    @2
    M=0
    @INFINITE_LOOP
    0;JMP
 
(INFINITE_LOOP)
    @INFINITE_LOOP
    0;JMP

