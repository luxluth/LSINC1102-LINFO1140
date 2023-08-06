// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@i
@x
// commencez ici
@x
D = M
@i
M = D
@i
D = M
D = D-1
@boucle
D;JGE
@ici
0;JMP
(boucle)
@i
D = M
@x
A = A + D
D = M
A = A + 1
M = D
@i
M = M - 1
D = M
D = D - 1
@boucle
D;JGE
(ici)
@x
A = A +1
M = 0
@x
M = M + 1
