(CUTOFF)
@SP
A = M + 1
A = A+1
D = M

@SP
A = M+1
D = D - M
M = D

@SP
A = M +1
A = A + 1
A = A + 1
D = D - M

@IF
D;JGT

D = 0

@FINREC
0;JMP

(IF)

@SP
A = M+1
D = M

(FINREC)

@SP
M = M + 1
M = M + 1
M = M + 1
M = M + 1
A = M
A = A - 1
A = A - 1
A = A - 1
A = A - 1
A = M
0;JMP