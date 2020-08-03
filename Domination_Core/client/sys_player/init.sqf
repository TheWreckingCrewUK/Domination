#include "boxes\init.sqf";
#include "landscaping.sqf";



player addeventhandler ["getinman", { 
	params ["_unit", "_role", "_vehicle", "_turret"];
	_base = missionnamespace getvariable ["twc_basepos", [0,0,0]];
	if ((_base distance player) > 200) exitwith {};
	if ("ACE_VMM3" in (weaponcargo _vehicle)) exitwith {};
	if (_vehicle canadd "ACE_VMM3") then {
		_vehicle addweaponcargoglobal ["ACE_VMM3", 1];
	};
}];


	_infaction1 = ["clearbox","Wait Until Night","",{_cond = call twc_issidenearby;if (!_cond) exitwith {};[0] remoteExec ["twc_fnc_changedaynight", 2];},{((["lead", typeof player] call BIS_fnc_inString) || (["command", typeof player] call BIS_fnc_inString) || (["2ic", typeof player] call BIS_fnc_inString) || (["pilot", typeof player] call BIS_fnc_inString) || (["crew", typeof player] call BIS_fnc_inString) || ((count units group player) < 3)) && (sunormoon != 0)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_infaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_infaction1 = ["clearbox","Wait Until Day","",{_cond = call twc_issidenearby;if (!_cond) exitwith {};[1] remoteExec ["twc_fnc_changedaynight", 2];},{((["lead", typeof player] call BIS_fnc_inString) || (["command", typeof player] call BIS_fnc_inString) || (["2ic", typeof player] call BIS_fnc_inString) || (["pilot", typeof player] call BIS_fnc_inString) || (["crew", typeof player] call BIS_fnc_inString) || ((count units group player) < 3)) && (sunormoon != 1)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_infaction1,true] call ace_interact_menu_fnc_addActionToClass;

