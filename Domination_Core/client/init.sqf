
#include "func\init.sqf";
#include "sys_player\init.sqf";
#include "sys_restrict\init.sqf";
#include "sys_cleanup\init.sqf";
#include "sys_forwardbase\init.sqf";
#include "interactions\init.sqf";
//#include "news.sqf";
//#include "sys_ragdoll\init.sqf";



twc_fnc_crewcount = compile preprocessfilelinenumbers "Domination_Core\server\sys_mechanised\crewcount.sqf";
twc_fnc_aps = compile preprocessfilelinenumbers "Domination_Core\client\func\fn_APS.sqf";

if (isNil "fixedWingPilots") then {
	fixedWingPilots = ["Modern_British_JetPilot"];
};

twc_rearmvehicle = {
params ["_vehicle"];
	_vehicle setVehicleAmmo 1; 
};


twc_reinwarnmsg = {

	_title ="<t color='#ff0000' size='1.5' shadow='1' shadowColor='#000000' align='center'>ENEMY ACTION</t>";
	_text1 = "<br />ENEMY FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";
	_warning = parsetext (_title + _text1);
	[_warning] remoteExec ["hint"];
};
waituntil {!isnil "twc_missionname"};
twc_pubcamo = 500;
if (["90", twc_missionname] call BIS_fnc_inString) then {
	twc_pubcamo = 20;
};
if (["00", twc_missionname] call BIS_fnc_inString) then {
	twc_pubcamo = 50;
};

cutText ["","Black IN",0.001];
// wait till init
waitUntil {!isNull player};
cutText ["","Black IN",0.001];

if ((!(forcedMap select 0)) && ((forcedMap select 1))) then {player setdamage 1};

twc_firstspawned = 0;

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	if ((!(["sniper", typeof player] call BIS_fnc_inString)) && (!(["spotter", typeof player] call BIS_fnc_inString)) && (!(["uksf", typeof player] call BIS_fnc_inString))) then {
		player setunittrait ["camouflageCoef", twc_pubcamo];
	};
twc_client_nightcamo = {
	_namount = 3;
	_damount = twc_pubcamo;
	if (((["sniper", typeof player] call BIS_fnc_inString)) || ((["spotter", typeof player] call BIS_fnc_inString))) then {
		_namount = 0.5;
		_damount = 1;
	};
	if (((["uksf", typeof player] call BIS_fnc_inString))) then {
		_namount = 1;
		_damount = 5;
	};
	player setunittrait ["camouflageCoef", _damount];
	while {(sunOrMoon == 1)} do {
		sleep 120;
	};
	player setunittrait ["camouflageCoef", _namount];
	while {(sunOrMoon == 0)} do {
		sleep 120;
	};
	player setunittrait ["camouflageCoef", _damount];
	
	[] spawn twc_client_nightcamo;
	
};
[] spawn twc_client_nightcamo;
	if ((!(isnull _corpse)) && ((_corpse distance twc_basepos) < 500)) then {
	[_corpse] spawn {
		params ["_corpse"];
		_corpse setvehicleammo 0;
		clearweaponcargoglobal _corpse;
		clearitemcargoglobal _corpse;
	};
};


 _armourcrew = ["Modern_British_VehicleCrew",
 "Modern_British_VehicleCommander",
 "Modern_USMC_VehicleCommander",
 "Modern_USMC_VehicleCrew",
 "1990_British_Vehicle_Commander",
 "1990_British_Vehicle_Crew",
 "1990_British_Tank_Commander_Desert",
 "1990_British_Tank_Crew_Desert",
 "2000_British_Vehicle_Commander",
 "2000_British_Vehicle_Crew"];
 
 if (typeof player in _armourcrew) then {
 
	//[player] remoteExec ["twc_fnc_crewcount", 2];
	
	_crewcount = 0;

	{if (typeof _x in _armourcrew) then {_crewcount = _crewcount + 1;}} foreach units group player;

	group player setvariable ["armourcount", _crewcount, true];
	
	if ((["infantry", str (group player)] call BIS_fnc_inString)) then {
		if ((group player getvariable ["twc_ismechanised", 0]) == 0) then {
			group player setvariable ["twc_ismechanised", 1, true];
		};
	};
};

if ((group player getvariable ["twc_ismechanised", 0]) == 1) then {
	_crewcount = 0;

	{if (typeof _x in _armourcrew) then {_crewcount = _crewcount + 1;}} foreach units group player;
	group player setvariable ["armourcount", _crewcount, true];
		if ((group player getvariable ["armourcount", 3]) == 0) then {
			group player setvariable ["twc_ismechanised", 0, true];
		};
	
};

if ((time > (twc_serstarttime + 600)) && (twc_firstspawned > 1)) exitwith {

	_items = (backpackitems player);
	{player removeitemfrombackpack _x} foreach (backpackitems player);
	player setvehicleammo 0.8;
	{
		player additemtobackpack _x;
	} foreach _items;
};




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//persistent loadout stuff

[] spawn {
sleep 10;
player addEventHandler ["Inventoryclosed", {
	_array =profilenamespace getvariable ["twcpubloadout" + (typeof player), []];
	if ((str _array) == (str ([uniformitems player, vestitems player, backpackitems player]))) exitwith {};
	profilenamespace setvariable ["twcpubloadout" + (typeof player), [uniformitems player, vestitems player, backpackitems player]];
	saveprofilenamespace;
}];

player addEventHandler ["Reloaded", {
	profilenamespace setvariable ["twcpubloadout" + (typeof player), [uniformitems player, vestitems player, backpackitems player]];
	saveprofilenamespace;
}];

player addEventHandler ["killed", {
	profilenamespace setvariable ["twcpubloadout" + (typeof player), [uniformitems player, vestitems player, backpackitems player]];
	[] spawn {
		sleep 3;
		saveprofilenamespace;
	};
}];
};
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




twc_lastspawned = time;
if (twc_firstspawned > 1) exitwith {

_role = typeof vehicle player;

_profile = profilenamespace getvariable ["twcpubloadout" + _role, []];

if ((count _profile) > 0) then {
	profilenamespace setvariable ["twcpubloadout" + _role, [uniformitems player, vestitems player, backpackitems player]];
	saveprofilenamespace;
};
};
twc_firstspawned = time;
twc_serstarttime = time;
[player] call twc_fnc_buildmagarray_set;

[] spawn {
sleep 2;
call twc_fnc_pubstartingloadout;


if (typeOf player in fixedWingPilots) then {
//	["TWC_PilotConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
};


if ((["uksf", typeof player] call BIS_fnc_inString)) then {

	if (typeOf vehicle player in ["Modern_UKSF_Marksman"]) then {
		player addweapon "UK3CB_BAF_Javelin_CLU";
		player addweapon "UK3CB_BAF_Javelin_Slung_Tube";
	};

	if ((secondaryweapon player) == "") then {
		player addweapon "CUP_launch_M136";
	};

};


if (sunormoon == 0) then {
	player addweapon "CUP_NVG_PVS14";
};

if (!(["infantry", str (group player)] call BIS_fnc_inString)) then {
execvm "domination_core\client\sys_restrict\attachmentcount.sqf" 
};


player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	if (_ammo == "CUP_SMAW_Spotting") exitwith {};
	if ((_ammo isKindOf ["GrenadeCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["RocketCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["MissileCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["G_40mm_Smoke", configFile >> "CfgAmmo"])) then {[_projectile] call twc_fnc_aps};
}];
};

}];