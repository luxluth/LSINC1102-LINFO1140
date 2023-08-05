// Initialize keyboard values
@48
D=A
@ZERO
M=D

@49
D=A
@ONE
M=D

@50
D=A
@TWO
M=D

@51
D=A
@THREE
M=D

@52
D=A
@FOUR
M=D

@53
D=A
@FIVE
M=D

@54
D=A
@SIX
M=D

@55
D=A
@SEVEN
M=D

@56
D=A
@HEIGHT
M=D

@57
D=A
@NINE
M=D

@drawing
M=0
// black color
@noir
M=-1


@MAIN
0;JMP

(DRAWZERO)
    @drawing
    M=0
    
    @CLEAR
    0;JMP
    (LINEC0)

    @TOP
    0;JMP
    (LINET0)
    
    @TOPR
    0;JMP
    (LINETR0)

    @TOPL
    0;JMP
    (LINETL0)

    @BOTTOM
    0;JMP 
    (LINEB0)

    @BOTTOMR
    0;JMP
    (LINEBR0)

    @BOTTOML
    0;JMP
    (LINEBL0)

    @DRAWEND
    0;JMP

(DRAWONE)
    @drawing
    M=1

    @CLEAR
    0;JMP
    (LINEC1)
    
    @TOPR
    0;JMP
    (LINETR1)

    @BOTTOMR
    0;JMP
    (LINEBR1)

    @DRAWEND
    0;JMP

(DRAWTWO)
    @2
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC2)

    @TOP
    0;JMP
    (LINET2)

    @TOPR
    0;JMP
    (LINETR2)
    
    @MIDDLE
    0;JMP
    (LINEM2)
    
    @BOTTOML
    0;JMP
    (LINEBL2)

    @BOTTOM
    0;JMP
    (LINEB2)

    @DRAWEND
    0;JMP

(DRAWTHREE)
    @3
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC3)
    
    @TOP
    0;JMP
    (LINET3)

    @TOPR
    0;JMP
    (LINETR3)

    @MIDDLE
    0;JMP
    (LINEM3)

    @BOTTOMR
    0;JMP
    (LINEBR3)

    @BOTTOM
    0;JMP
    (LINEB3)

    @DRAWEND
    0;JMP

(DRAWFOUR)
    @4
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC4)

    @TOPL
    0;JMP
    (LINETL4)

    @MIDDLE
    0;JMP
    (LINEM4)

    @TOPR
    0;JMP
    (LINETR4)

    @BOTTOMR
    0;JMP
    (LINEBR4)

    @DRAWEND
    0;JMP

(DRAWFIVE)
    @5
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC5)

    @TOP
    0;JMP
    (LINET5)

    @TOPL
    0;JMP
    (LINETL5)

    @MIDDLE
    0;JMP
    (LINEM5)

    @BOTTOMR
    0;JMP
    (LINEBR5)

    @BOTTOM
    0;JMP
    (LINEB5)

    @DRAWEND
    0;JMP

(DRAWSIX)
    @6
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC6)

    @TOP
    0;JMP
    (LINET6)

    @TOPL
    0;JMP
    (LINETL6)

    @BOTTOML
    0;JMP
    (LINEBL6)

    @BOTTOM
    0;JMP
    (LINEB6)

    @BOTTOMR
    0;JMP
    (LINEBR6)

    @MIDDLE
    0;JMP
    (LINEM6)

    @DRAWEND
    0;JMP

(DRAWSEVEN)
    @7
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC7)

    @TOP 
    0;JMP
    (LINET7)

    @TOPR
    0;JMP
    (LINETR7)

    @BOTTOMR
    0;JMP
    (LINEBR7)

    @DRAWEND
    0;JMP

(DRAWHEIGHT)
    @8
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC8)

    @TOP
    0;JMP
    (LINET8)

    @TOPR
    0;JMP
    (LINETR8)

    @TOPL
    0;JMP
    (LINETL8)

    @MIDDLE
    0;JMP
    (LINEM8)

    @BOTTOML
    0;JMP
    (LINEBL8)

    @BOTTOMR
    0;JMP
    (LINEBR8)

    @BOTTOM 
    0;JMP
    (LINEB8)

    @DRAWEND
    0;JMP

(DRAWNINE)
    @9
    D=A
    @drawing
    M=D

    @CLEAR
    0;JMP
    (LINEC9)

    @TOP
    0;JMP
    (LINET9)

    @TOPR
    0;JMP
    (LINETR9)

    @TOPL
    0;JMP
    (LINETL9)

    @MIDDLE
    0;JMP
    (LINEM9)

    @BOTTOMR
    0;JMP
    (LINEBR9)

    @BOTTOM
    0;JMP
    (LINEB9)

    @DRAWEND
    0;JMP

// cadran functions
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
    
    // ZERO
    @drawing
    D=M
    @LINET0
    D;JEQ

    // TWO
    @drawing
    D=M
    @2
    D=D-A
    @LINET2
    D;JEQ

    // THREE
    @drawing
    D=M
    @3
    D=D-A
    @LINET3
    D;JEQ

    // FIVE
    @drawing
    D=M
    @5
    D=D-A
    @LINET5
    D;JEQ

    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINET6
    D;JEQ

    // SEVEN
    @drawing
    D=M
    @7
    D=D-A
    @LINET7
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINET8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINET9
    D;JEQ

(TOPR)
    @17458
    //@17453
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

    // ZERO
    @drawing
    D=M
    @LINETR0
    D;JEQ

    // ONE
    D=D-1
    @LINETR1
    D;JEQ

    // TWO
    @drawing
    D=M
    @2
    D=D-A
    @LINETR2
    D;JEQ

    // THREE
    @drawing
    D=M
    @3
    D=D-A
    @LINETR3
    D;JEQ

    // FOUR
    @drawing
    D=M
    @4
    D=D-A
    @LINETR4
    D;JEQ

    // SEVEN
    @drawing
    D=M
    @7
    D=D-A
    @LINETR7
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINETR8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINETR9
    D;JEQ

(TOPL)
    // @17458
    @17453
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

    // ZERO
    @drawing
    D=M
    @LINETL0
    D;JEQ

    // FOUR
    @drawing
    D=M
    @4
    D=D-A
    @LINETL4
    D;JEQ

    // FIVE
    @drawing
    D=M
    @5
    D=D-A
    @LINETL5
    D;JEQ

    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINETL6
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINETL8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINETL9
    D;JEQ


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


    // TWO
    @drawing
    D=M
    @2
    D=D-A
    @LINEM2
    D;JEQ

    // THREE
    @drawing
    D=M
    @3
    D=D-A
    @LINEM3
    D;JEQ

    // FOUR
    @drawing
    D=M
    @4
    D=D-A
    @LINEM4
    D;JEQ

    // FIVE
    @drawing
    D=M
    @5
    D=D-A
    @LINEM5
    D;JEQ

    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINEM6
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINEM8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINEM9
    D;JEQ


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

    // ZERO
    @drawing
    D=M
    @LINEBL0
    D;JEQ

    // TWO
    @drawing
    D=M
    @2
    D=D-A
    @LINEBL2
    D;JEQ


    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINEBL6
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINEBL8
    D;JEQ


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

    // ZERO
    @drawing
    D=M
    @LINEBR0
    D;JEQ

    // ONE
    D=D-1
    @LINEBR1
    D;JEQ

    // THREE
    @drawing
    D=M
    @3
    D=D-A
    @LINEBR3
    D;JEQ

    // FOUR
    @drawing
    D=M
    @4
    D=D-A
    @LINEBR4
    D;JEQ

    // FIVE
    @drawing
    D=M
    @5
    D=D-A
    @LINEBR5
    D;JEQ

    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINEBR6
    D;JEQ

    // SEVEN
    @drawing
    D=M
    @7
    D=D-A
    @LINEBR7
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINEBR8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINEBR9
    D;JEQ


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

    // ZERO
    @drawing
    D=M
    @LINEB0
    D;JEQ

    // TWO
    @drawing
    D=M
    @2
    D=D-A
    @LINEB2
    D;JEQ

    // THREE
    @drawing
    D=M
    @3
    D=D-A
    @LINEB3
    D;JEQ

    // FIVE
    @drawing
    D=M
    @5
    D=D-A
    @LINEB5
    D;JEQ

    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINEB6
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINEB8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINEB9
    D;JEQ

(CLEAR)
    // top clear 
    @17421
    D=A
    @pos
    M=D

    @6
    D=A
    @count
    M=D
    
    (CTOPLOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @CTOPLOOP
	    D;JGT
    
    // top-right clear
    @17453
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (CTOPRLOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @CTOPRLOOP
	    D;JGT

    // top-left clear
    @17458
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (CTOPLLOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @CTOPLLOOP
	    D;JGT

    // middle clear
    @20493
    D=A
    @pos
    M=D

    @6
    D=A
    @count
    M=D
    
    (CMIDDLELOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @CMIDDLELOOP
	    D;JGT


    // bottom-left clear
    @20525
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (CBOTTOMLLOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @CBOTTOMLLOOP
	    D;JGT
    
    // bottom-right clear
    @20530
    //@17453
    D=A
    @pos
    M=D

    @32
    D=A
    @count
    M=D
    
    (CBOTTOMRLOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	    
        @96
        D=A

        @pos
	    M=M+D
	
        @count
	    MD=M-1
    
	    @CBOTTOMRLOOP
	    D;JGT

    // bottom clear
    @23565
    D=A
    @pos
    M=D

    @6
    D=A
    @count
    M=D
    
    (CBOTTOMLOOP)
	    D=0
	
        @pos
	    A=M
	    M=D
	
        @pos
	    M=M+1
	
        @count
	    MD=M-1
    
	    @CBOTTOMLOOP
	    D;JGT


    // ZERO
    @drawing
    D=M
    @LINEC0
    D;JEQ

    // ONE
    D=D-1
    @LINEC1
    D;JEQ

    // TWO
    @drawing
    D=M
    @2
    D=D-A
    @LINEC2
    D;JEQ

    // THREE
    @drawing
    D=M
    @3
    D=D-A
    @LINEC3
    D;JEQ

    // FOUR
    @drawing
    D=M
    @4
    D=D-A
    @LINEC4
    D;JEQ

    // FIVE
    @drawing
    D=M
    @5
    D=D-A
    @LINEC5
    D;JEQ

    // SIX
    @drawing
    D=M
    @6
    D=D-A
    @LINEC6
    D;JEQ

    // SEVEN
    @drawing
    D=M
    @7
    D=D-A
    @LINEC7
    D;JEQ

    // HEIGHT
    @drawing
    D=M
    @8
    D=D-A
    @LINEC8
    D;JEQ

    // NINE
    @drawing
    D=M
    @9
    D=D-A
    @LINEC9
    D;JEQ


(MAIN)
// Main
    @temp
    M=0
(LOOP)
    @24576 // keyboard 
    D=M
    @temp
    M=D
    @LOOP
    D;JEQ

    //ZERO
    @ZERO
    D=M
    @temp
    D=M-D
    @DRAWZERO
    D;JEQ
    
    //ONE
    @ONE
    D=M
    @temp
    D=M-D
    @DRAWONE
    D;JEQ
    
    // TWO
    @TWO
    D=M
    @temp
    D=M-D
    @DRAWTWO
    D;JEQ

    // THREE
    @THREE
    D=M
    @temp
    D=M-D
    @DRAWTHREE
    D;JEQ

    // FOUR
    @FOUR
    D=M
    @temp
    D=M-D
    @DRAWFOUR
    D;JEQ

    // FIVE
    @FIVE
    D=M
    @temp
    D=M-D
    @DRAWFIVE
    D;JEQ

    // SIX
    @SIX
    D=M
    @temp
    D=M-D
    @DRAWSIX
    D;JEQ

    // SEVEN
    @SEVEN
    D=M
    @temp
    D=M-D
    @DRAWSEVEN
    D;JEQ

    // HEIGHT
    @HEIGHT
    D=M
    @temp
    D=M-D
    @DRAWHEIGHT
    D;JEQ

    // NINE
    @NINE
    D=M
    @temp
    D=M-D
    @condition
    M=D
    @DRAWNINE
    D;JEQ

    (DRAWEND)
    @LOOP
    0;JMP

(END)

