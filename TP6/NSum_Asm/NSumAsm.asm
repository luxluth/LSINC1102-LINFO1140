// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@n
@s
@i
M = 1
@s
M = 0
@n
D = M
@i
D = D - M
@boucle
D;JGE
@fin
0;JMP
(boucle)
@i
D = M
@s
M = M + D
@i
M = M + 1
@n
D = M
@i
D = D - M
@boucle
D;JGE
(fin)
