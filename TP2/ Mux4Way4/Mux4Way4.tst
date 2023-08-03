// N'enlevez pas ces lignes
load Mux4Way4.hdl,
output-file Mux4Way4.out,
compare-to Mux4Way4.cmp, // pas mettre sur inginious 
output-list a%B1.4.1 b%B1.4.1 c%B1.4.1 d%B1.4.1 sel%B2.2.2 out%B1.4.1;

// Commencez ici
set a %B0000,
set b %B0000,
set c %B0000,
set d %B0000,
set sel %B00,
eval,
output;

set a %B0000,
set b %B0000,
set c %B0000,
set d %B0000,
set sel %B01,
eval,
output;

set a %B0000,
set b %B0000,
set c %B0000,
set d %B0000,
set sel %B10,
eval,
output;

set a %B0000,
set b %B0000,
set d %B0000,
set sel %B11,
eval,
output;

set a %B0001,
set b %B1001,
set c %B1010,
set d %B0101,
set sel %B00,
eval,
output;

set a %B0001,
set b %B1001,
set c %B1010,
set d %B0101,
set sel %B01,
eval,
output;

set a %B0001,
set b %B1001,
set c %B1010,
set d %B0101,
set sel %B10,
eval,
output;

set a %B0001,
set b %B1001,
set c %B1010,
set d %B0101,
set sel %B11,
eval,
output;