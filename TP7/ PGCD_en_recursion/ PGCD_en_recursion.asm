(PGCD)
//complétez ici

// if a == b
@SP
A = M
A = A + 1 //x

D = M
A = A + 1
D = M - D // y-x
@ab
D;JEQ // x=y jump à la fin

// elif a > b
@SP
A = M
A = A + 1 // x


D = M
A = A + 1
D = D - M // x-y
@elif
D;JGT

//else

@SP
A = M
A = A + 1 //x

D = M
A = A + 1
D = M - D // y-x

@SP
A = M
A = A + 1 //x
A = A + 1
M = D
@PGCD
0;JMP

(ab)
@SP
A = M
A = A + 1
D = M
@SP
A = M
A = M
0;JMP

(elif)
@SP
A = M
A = A + 1
M = D
@PGCD
0;JMP
