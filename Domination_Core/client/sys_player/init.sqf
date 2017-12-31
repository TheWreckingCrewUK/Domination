#include "boxes\init.sqf";

//rating monitor to curb base AA shooting down friendlies

if (rating player < -1000) then {player addRating 2000};