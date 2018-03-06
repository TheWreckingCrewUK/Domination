#include "defines.sqf";
#include "func\init.sqf";


basemode = 0;
publicvariable "basemode";

if(isNil "townLocationArray") then{
	townLocationArray = [];
};

if(isNil "customlocations") then{
	customlocations = [];
};


if(isNil "twc_is90") then{
	twc_is90 = 0;
	publicVariable "twc_is90";
};



{_location = createLocation [ "NameVillage" , getpos _x, 100, 100];
_location setText "Location " + str floor random 999;
townLocationArray = townLocationArray + (nearestLocations [getpos _x, ["NameVillage","NameCity","NameCityCapital","nameLocal"], 2]);} foreach customlocations;

townLocationArray = townLocationArray + (nearestLocations [getMarkerPos "base", ["NameVillage","NameCity","NameCityCapital"], twc_maxObjDistance]);

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