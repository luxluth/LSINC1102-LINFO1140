// if(x==a) or (x>b) :
//  y=a
// else:
//  y=-1
// JEQ

@x
M=1
D=M

@b
M=1

@a
M=1
D=M-D
@INIF
D;JEQ

@x
D=M

@b
D=D-M
@INIF
D;JGT
@ELSE
D;JLT

(INIF)
    @a
    D=M
    @y
    M=D
(ELSE)
    @y
    M=-1

