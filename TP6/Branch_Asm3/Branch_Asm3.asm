// Ne pas supprimer ces lignes, il s'agit de l'initialisation des variables dans le bon ordre
@x
@a
@b
@y
// Commencez ici
@x
D = M
@a
D = D - M
@if
D;JEQ
@x
D = M
@b
D = D - M
@if
D;JGT
@y
M = -1
@fin
0;JMP
(if)
@a
D = M
@y
M = D
(fin)
