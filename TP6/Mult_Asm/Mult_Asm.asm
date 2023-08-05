@R1
D = M
@i
M = D
@R2
M = 0
@i
D = M
@boucle
D;JGT
@fin
0;JMP
(boucle)
@R0
D = M
@R2
M = M+D
@i
M = M - 1
@i
D = M
@boucle
D;JGT
(fin)