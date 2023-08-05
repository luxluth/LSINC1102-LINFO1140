// N'enlevez pas ces lignes
load Mux4.hdl,
output-file Mux4.out,
compare-to Mux4.cmp, //pas besoin sur inginious
output-list a%B1.4.1 b%B1.4.1 sel%D2.1.2 out%B1.4.1;

// Commencez ici
set a %B0000,
set b %B0000,
set sel 0,
eval,
output;

set a %B0000,
set b %B0000,
set sel 1,
eval,
output;

set a %B0000,
set b %B0001,
set sel 0,
eval,
output;

set a %B0000,
set b %B0001,
set sel 1,
eval,
output;

set a %B1001,
set b %B0000,
set sel 0,
eval,
output;

set a %B1001,
set b %B0000,
set sel 1,
eval,
output;

set a %B1010,
set b %B0101,
set sel 0,
eval,
output;

set a %B1010,
set b %B0101,
set sel 1,
eval,
output;
