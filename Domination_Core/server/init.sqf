#include "defines.sqf";
#include "func\init.sqf";


basemode = 0;
publicvariable "basemode";

townLocationArray = nearestLocations [getMarkerPos "base", ["NameVillage","NameCity","NameCityCapital"], twc_maxObjDistance];

[] call twc_fnc_getAO;

_pilotConnectedList = [];

// apparently onPlayerConnected is unreliable...
// so we call this when we know it's a pilot and connected via client
// _caller = player id
["TWC_PilotConnected", {
	params ["_caller"];

	_pilotConnectedList pushBack _caller;
	
	if (count _pilotConnectedList > 0) then {
		[] call twc_fnc_spawnJet;
	};
}] call CBA_fnc_addEventHandler;

["TWC_PilotDisconnected", "onPlayerDisconnected", {
	_pilotConnectedList - [_uid];
	
	if (count _pilotConnectedList < 1) then {
		[] call twc_fnc_noMorePilots;
	};
}] call BIS_fnc_addStackedEventHandler;