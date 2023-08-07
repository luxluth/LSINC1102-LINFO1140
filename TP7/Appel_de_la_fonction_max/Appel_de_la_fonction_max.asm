//ne pas changer
@x
@y
@r
@16383
D =A
@SP
M = D

//x
@SP
M = M-1
@x
D = M
@SP
A = M
M = D

//y
@SP
M =M-1
@y
D = M
@SP
A = M
M = D

// retour
@SP
M = M-1
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
(MAX)
(FIN)