#include "defines.sqf";
#include "func\init.sqf";


basemode = 0;
publicvariable "basemode";

townLocationArray = nearestLocations [getMarkerPos "base", ["NameVillage","NameCity","NameCityCapital"], twc_maxObjDistance];

[] call twc_fnc_getAO;