#include "defines.sqf";
#include "func\init.sqf";

townLocationArray = nearestLocations [getMarkerPos "base", ["NameVillage","NameCity","NameCityCapital"], twc_maxObjDistance];

[] call twc_fnc_getAO;