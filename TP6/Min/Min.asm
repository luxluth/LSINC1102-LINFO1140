@min
// Commence
@32767
D = A
@min
M = D

@1000
D = M
@l
M = D

@i
M = 1

(LOOP)
@i
D = M
@1000
A = A + D
D = M
@min
D = D - M
@IF
D;JLT
@ELSE
0;JMP

(IF)
@i
D = M
@1000
A = A + D
D = M
@min
M = D
@i
D= M
@l
D = D - M
@LOOP
D;JLE
@END
0;JMP

(ELSE)
@i
M = M + 1
D = M
@l
D = D - M
@LOOP
D;JLE

(END)