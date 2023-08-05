@x
@a
@b
@y

// Commence ici
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
@elif
D;JEQ
@else
0;JMP
(if)
@a
D = M
@y
M = D
@fin
0;JMP
(elif)
@b
D = M
@y
M = D
@fin
0;JMP
(else)
@a
D = M
@b
D = D + M
@y
M = D
(fin)