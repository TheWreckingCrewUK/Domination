#include "sys_player\init.sqf";
#include "sys_restrict\init.sqf";
#include "sys_cleanup\init.sqf";
#include "sys_forwardbase\init.sqf";
//#include "sys_ragdoll\init.sqf";

if (isNil "fixedWingPilots") then {
	fixedWingPilots = ["Modern_British_JetPilot"];
};

// wait till init
waitUntil {!isNull player};

if (typeOf player in fixedWingPilots) then {
	["TWC_PilotConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
};

/*
player addEventHandler ["Hit", {[] spawn {if !(vehicle player == player) exitwith{};if (stance player == "PRONE") exitwith {};if ((random 1)>1.5) exitwith{}; _this = player; _this setUnconscious true; sleep 0.1; _this setUnconscious false}}]
*/

if (!(["infantry", str (group player)] call BIS_fnc_inString)) then {
execvm "domination_core\client\sys_restrict\attachmentcount.sqf" 
};

sleep 20;

_forceMapForced = forcedMap select 0;
_openMapForced = forcedMap select 1;
if (_forceMapForced || _openMapForced) then {player setdamage 1};