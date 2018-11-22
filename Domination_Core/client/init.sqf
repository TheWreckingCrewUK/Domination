#include "sys_player\init.sqf";
#include "sys_restrict\init.sqf";
#include "sys_cleanup\init.sqf";
#include "sys_forwardbase\init.sqf";
//#include "sys_ragdoll\init.sqf";

twc_fnc_crewcount = compile preprocessfilelinenumbers "Domination_Core\server\sys_mechanised\crewcount.sqf";

twc_fnc_aps = compile preprocessfilelinenumbers "Domination_Core\client\func\fn_APS.sqf";

if (isNil "fixedWingPilots") then {
	fixedWingPilots = ["Modern_British_JetPilot"];
};

// wait till init
waitUntil {!isNull player};

if ((!(forcedMap select 0)) && ((forcedMap select 1))) then {player setdamage 1};

if (typeOf player in fixedWingPilots) then {
	["TWC_PilotConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
};

/*
player addEventHandler ["Hit", {[] spawn {if !(vehicle player == player) exitwith{};if (stance player == "PRONE") exitwith {};if ((random 1)>1.5) exitwith{}; _this = player; _this setUnconscious true; sleep 0.1; _this setUnconscious false}}]
*/

if (!(["infantry", str (group player)] call BIS_fnc_inString)) then {
execvm "domination_core\client\sys_restrict\attachmentcount.sqf" 
};

player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	if (_ammo == "rhs_ammo_smaw_SR") exitwith {};
	if ((_ammo isKindOf ["GrenadeCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["RocketCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["MissileCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["G_40mm_Smoke", configFile >> "CfgAmmo"])) then {[_projectile] call twc_fnc_aps};
}];
