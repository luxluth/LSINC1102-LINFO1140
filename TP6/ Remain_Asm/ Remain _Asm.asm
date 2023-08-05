@a
@b
@r
// Commencez 1c1
@a
D = M
@r
M = D
@r
D = M
@b
D = D - M
@boucle
D;JGE
@fin
0;JMP
(boucle)
@b
D = M
@r
M = M - D
@r
D = M
@b
D = D - M
@boucle
D;JGE
(fin)