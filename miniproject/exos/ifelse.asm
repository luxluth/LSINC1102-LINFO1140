@x
M=1
D=M
@y
M=1
M=M+1
M=M+1
@t
M=D
@y
D=M
@t
M=M-D
@CDONE
M;JNE
@CDTWO
D;JEQ

(CDONE)
    @x
    D=M // valeur de x dans D
    @a
    M=D // mettre la valeur de x dans a
    @y
    D=M // valeur de y dans D
    @a
    M=M+D // valeur a + valeur y

(CDTWO)
    @x
    D=M // valeur de x dans D
    @a
    M=D // valeur x dans a
    @y
    D=M // valeur de y dans D
    @a
    M=M-D // valeur de a - y

    


