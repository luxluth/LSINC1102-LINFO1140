@noir
M=-1
@white
M=0

@jumpafter
M=0

@DEBUT
0;JMP

(CLEAR)
    @16384
    D=A
    @pos
    M=D

    @8192
    D=A
    @count
    M=D
    
    (CLEARLOOP)
	    @white
        D=M

        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @CLEARLOOP
	    D;JGT


(TOP)
    @17421
    D=A
    @pos
    M=D

    @6
    D=A
    @count
    M=D
    
    (TOPLOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @TOPLOOP
	    D;JGT



(TOPR)
    //@17458
    @17453
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (TOPRLOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @TOPRLOOP
	    D;JGT
(TOPL)
    @17458
    //@17453
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (TOPLLOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @TOPLLOOP
	    D;JGT
(MIDDLE)
    @20493
    D=A
    @pos
    M=D

    @6
    D=A
    @count
    M=D
    
    (MIDDLELOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @MIDDLELOOP
	    D;JGT

(BOTTOML)
    @20525
    //@17453
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (BOTTOMLLOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @BOTTOMLLOOP
	    D;JGT


(BOTTOMR)
    @20530
    //@17453
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (BOTTOMRLOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @BOTTOMRLOOP
	    D;JGT


(BOTTOM)
    @23565
    D=A
    @pos
    M=D

    @6
    D=A
    @count
    M=D
    
    (BOTTOMLOOP)
        @noir
	    D=M
	
        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @BOTTOMLOOP
	    D;JGT



(DEBUT)
@end
M=A
@jumpafter
M=PC+D
@TOP
0;JMP

