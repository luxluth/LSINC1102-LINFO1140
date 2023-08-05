//ne pas changer
@x
@r
@16383
D = A
@SP
M=D

//complétez ici
@x
D = M
@SP
M = M - 1
A = M
M = D

@retour
D = A
@SP
M = M - 1
A = M
M = D

@INC
0;JMP


(retour)
@r
M = D