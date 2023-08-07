//ne pas changer
@x
@r
@16383
D = A
@SP
M=D

@SP
M =M-1
@x
D = M
@SP
A = M
M = D

@SP
M = M-1
@retour
D = A
@SP
A = M
M = D

// appel à la fonction

@DOUBLE
0;JMP

(retour)
@r
M = D
@FIN
0;JMP

//ne pas changer,definition de la fonction
@FIN
0;JMP
(DOUBLE)
@SP
A = M+1
D = M
M = D+M
@SP
A = M+1
D = M

@SP
M = M+1
M = M+1
A = M
A = A-1
A = A-1
A = M
0;JMP

(FIN)