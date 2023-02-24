// N'enlevez pas ces lignes
load Not4.hdl,
output-file Not4.out,
compare-to Not4.cmp,
output-list in%B1.4.1 out%B1.4.1;

// Commencez ici
set in %B0000,
eval,
output;

// set in 1111,
set in %B1111,
eval,
output;

// set in 1010,
set in %B1010,
eval,
output;

// set in 0011,
set in %B0011,
eval,
output;

// set in 0001,
set in %B0001,
eval,
output;
