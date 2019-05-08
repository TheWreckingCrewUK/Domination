#include "sys_player\init.sqf";
#include "sys_restrict\init.sqf";
#include "sys_cleanup\init.sqf";
#include "sys_forwardbase\init.sqf";
#include "func\init.sqf";
//#include "news.sqf";
//#include "sys_ragdoll\init.sqf";

_alphaaction = ["SpawnsmallAlphaCreate","TWC News","",{call twc_news},{true}] call ace_interact_menu_fnc_createAction;
["TWC_Item_Public_Base_LOCSTAT",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;


twc_fnc_crewcount = compile preprocessfilelinenumbers "Domination_Core\server\sys_mechanised\crewcount.sqf";
twc_news = compile preprocessfilelinenumbers "Domination_Core\client\news.sqf";
twc_fnc_aps = compile preprocessfilelinenumbers "Domination_Core\client\func\fn_APS.sqf";

if (isNil "fixedWingPilots") then {
	fixedWingPilots = ["Modern_British_JetPilot"];
};

twc_reinwarnmsg = {

	_title ="<t color='#ff0000' size='1.5' shadow='1' shadowColor='#000000' align='center'>ENEMY ACTION</t>";
	_text1 = "<br />ENEMY FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";
	_warning = parsetext (_title + _text1);
	[_warning] remoteExec ["hint"];
};

cutText ["","Black IN",0.001];
// wait till init
waitUntil {!isNull player};
cutText ["","Black IN",0.001];

if ((!(forcedMap select 0)) && ((forcedMap select 1))) then {player setdamage 1};

twc_firstspawned = 0;

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	
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
	player setvehicleammo 0.2;
};

twc_lastspawned = time;
if (twc_firstspawned > 1) exitwith {};
twc_firstspawned = time;
twc_serstarttime = time;

if (typeOf player in fixedWingPilots) then {
	["TWC_PilotConnected", [getPlayerUID player]] call CBA_fnc_serverEvent;
};

/*
player addEventHandler ["Hit", {[] spawn {if !(vehicle player == player) exitwith{};if (stance player == "PRONE") exitwith {};if ((random 1)>1.5) exitwith{}; _this = player; _this setUnconscious true; sleep 0.1; _this setUnconscious false}}]
*/

if (sunormoon == 0) then {
	player addweapon "rhsusf_ANPVS_14";
};

if (!(["infantry", str (group player)] call BIS_fnc_inString)) then {
execvm "domination_core\client\sys_restrict\attachmentcount.sqf" 
};

player addEventHandler ["Fired", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
	if (_ammo == "rhs_ammo_smaw_SR") exitwith {};
	if ((_ammo isKindOf ["GrenadeCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["RocketCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["MissileCore", configFile >> "CfgAmmo"]) || (_ammo isKindOf ["G_40mm_Smoke", configFile >> "CfgAmmo"])) then {[_projectile] call twc_fnc_aps};
}];
/*
player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	
	_clear = 1;
	_array = attachedobjects _vehicle;
	{if (typeof _x == "CBA_B_InvisibleTarget") then {
		_clear = 0;
	};
	} foreach _array;
	
	if (_clear == 0) exitwith {};
	
	_object = "CBA_B_InvisibleTarget" createvehicle (getpos _vehicle);
	_object attachto [_vehicle, [0, 0, ((boundingBox _vehicle) #1#2) - 2]];
	//[_object] spawn twc_fnc_baseobject;
	
	
	_object setunittrait ['camouflageCoef', 500];
	_object setvehiclelock "locked";
	_object allowdamage false;
	_object setvehicleammo 0;

	_varname = (str getpos _object) + "baseobj";

	missionnamespace setvariable [_varname, _object];

	_trg2 = createTrigger ['EmptyDetector', getpos _object];
	_trg2 setTriggerArea [100, 100, 0, false]; 
	_trg2 setTriggerActivation ['EAST', 'PRESENT', true];
	_trg2 setTriggerTimeout [0,0,0,True];
	_trg2 setTriggerStatements ["this || (missionNamespace getvariable ['twc_overridebaseobjs_SALT', 0] == 1)","_varname = (str getpos thistrigger) + 'baseobj';_object = nearestObject [thistrigger, 'CBA_B_InvisibleTarget'];deletevehicle (gunner _object);deletevehicle (_object)", ""];

	_trg2 attachto [_vehicle];

	_vehicle addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		_array = attachedobjects _unit;
		{
			if (typeof _x == "CBA_B_InvisibleTarget") then {
				deletevehicle (gunner _x);
				deletevehicle (_x);
			};
		} foreach _array;
	}];
	
	_vehicle addEventHandler ["Hit", {
		params ["_unit", "_source", "_damage", "_instigator"];
		if (((damage _unit) < 0.5) && (_unit getHitPointDamage "hitEngine" < 0.9)) exitwith {};
		_array = attachedobjects _unit;
		{
			if (typeof _x == "CBA_B_InvisibleTarget") then {
				deletevehicle (gunner _x);
				deletevehicle (_x);
			};
		} foreach _array;
	}];
	
}];
*/

}];