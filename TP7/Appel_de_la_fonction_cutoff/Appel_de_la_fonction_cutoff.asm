@x
@y
@cutoff 
@r
@16383
D=A
@SP
M=D


@SP
M = M-1
@cutoff
D = M
@SP
A = M
M = D


@SP
M = M - 1
@y
D = M
@SP
A = M
M = D


@SP
M = M -1
@x
D = M
@SP
A = M
M = D


@SP
M = M - 1
@retour
D = A
@SP
A = M
M = D

// appel la fonction

@F1
0;JMP

(retour)
@r
M = D
@FIN
0;JMP
(F1)
(CUTOFF)
(FIN)