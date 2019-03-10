#include "sys_player\init.sqf";
#include "sys_restrict\init.sqf";
#include "sys_cleanup\init.sqf";
#include "sys_forwardbase\init.sqf";
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
cutText ["","Black IN",0.001];
// wait till init
waitUntil {!isNull player};
cutText ["","Black IN",0.001];

if ((!(forcedMap select 0)) && ((forcedMap select 1))) then {player setdamage 1};

twc_firstspawned = 0;

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
if (twc_firstspawned == 1) exitwith {};
twc_firstspawned = 1;


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