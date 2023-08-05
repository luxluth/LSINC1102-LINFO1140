@x
M=1
D=M

@a
M=1
D=D-M

@ax
M=D

@x
D=M

@b
M=1
D=M-D

@bx
M=D


@ax
D=M
@ONE
D;JGT
@ELSE
D;JLE

(ONE)
    @bx
    D=M
    @FIRSTCOND
    D;JGT

(FIRSTCOND)
    @i
    M=1

(ELSE)
    @i
    M=0




