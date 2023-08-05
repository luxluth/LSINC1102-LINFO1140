// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@n
@i
@tab

@n
D = M
@tab
M = D
@i
M = 1
(BOUCLE)
@i
D = M
@n
D = D-M
@fin
D;JGT
@i
D = M
@tab
A = A+D
M = D
@i
M = M+1
@BOUCLE
0;JMP
(fin)
