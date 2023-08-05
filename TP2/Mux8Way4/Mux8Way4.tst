// N'enlevez pas ces lignes
load Mux8Way4.hdl,
output-file Mux8Way4.out,
compare-to Mux8Way4.cmp, // pas mettre sur inginious 
output-list a%B1.4.1 b%B1.4.1 c%B1.4.1 d%B1.4.1 e%B1.4.1 f%B1.4.1 g%B1.4.1 h%B1.4.1 sel%B2.3.2 out%B1.4.1;

// Commencez ici
set a %B0001,
set b %B0010,
set c %B0011,
set d %B0100,
set e %B0101,
set f %B0110,
set g %B0111,
set h %B1000,
set sel %B101,
eval,
output;

set a %B0001,
set b %B0010,
set c %B0011,
set d %B0100,
set e %B0101,
set f %B0110,
set g %B0111,
set h %B1000,
set sel %B110,
eval,
output;

set a %B0001,
set b %B0010,
set c %B0011,
set d %B0100,
set e %B0101,
set f %B0110,
set g %B0111,
set h %B1000,
set sel %B111,
eval,
output;