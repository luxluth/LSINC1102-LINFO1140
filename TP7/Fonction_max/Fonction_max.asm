(MAX)
// Implémentez ici le corps de la fonction

@SP
A = M + 1 // A = 16382
D = M // D = X

@SP
A = M + 1
A =  A+ 1 // A = 16383
D = M - D // D = y - X

@if
D;JLE

@SP
A = M + 1
A = A + 1
D = M
@SP
A = M // 16381
A = M // adresse de retour
M = D // adresse de retour = y
0;JMP

(if)
@SP
A = M + 1 // A = 16382
D = M // D = X
@SP
A = M // 16381
A = M // adresse de retour
M = D // adresse de retour
0;JMP