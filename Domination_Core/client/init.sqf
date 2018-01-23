#include "sys_player\init.sqf";
#include "sys_restrict\init.sqf";
#include "sys_cleanup\init.sqf";

if (isNil "_fixedWingPilots") then {
	_fixedWingPilots = ["Modern_British_JetPilot"];
};

// wait till init
waitUntil {!isNull player};

if (typeOf player in _fixedWingPilots) then {
	["TWC_PilotConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
};