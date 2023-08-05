// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@x
@a
@b
@i
// Commencez ici
@x
D = M
@a
D = D - M
@condition2
D;JGT
@i
M = 0
@fin
0;JMP
(condition2)
@b
D = M
@x
D = D - M
@if
D;JGT
@i
M = 0
@fin
0;JMP
(if)
@i
M = 1
(fin)