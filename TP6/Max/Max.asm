@max
//Commencez ici
@max // max a = 0
M=0
@1000
D=M
@l // 1 = tab [0]
M = D

@i // i = 0
M=0
(DBOUCLE) // while
@l
D=M
@i
D=M-D
@FBOUCLE // while 1 < 1:
D;JGE

@i
D=M
@1001
A=A+D
D=M

@max
D=D-M
@FINIF // if tab[1] > max:
D;JLE

@i
D=M
@1001
A=A+D
D=M
@max // max = tab[1]
M=D
(FINIF)
@i // i+=1
M=M+1
@DBOUCLE
0;JMP
(FBOUCLE)