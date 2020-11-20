/*
* Written by [TWC] jayman
*
* Creates the ammo box with an an event handler. This should decrease lag
* while always keeping the box full. Basically it reloads as soon as you close it
*/
_marker = "crate";  // marker used to spawn.
_boxType = "CUP_BAF_VehicleBox";  // the type of ammobox used.

// create and fill the box.
crateBox = _boxType createVehicleLocal (getMarkerPos _marker);
crateBox setPosATL (getMarkerPos _marker);
crateBox allowDamage false;

[crateBox] execVM "Domination_Core\client\sys_player\boxes\base_box\main_ammo.sqf";
/*
player addEventHandler ["InventoryClosed", {
	if((_this select 1) == crateBox)then{
		[_this select 1]execVM "Domination_Core\client\sys_player\boxes\base_box\main_ammo.sqf";
	};
}];
*/
//_condition = {true};
//only allow spawning of ammo if they're at main base
_condition = {call twc_fnc_isplayeratbaseorpb};

twc_fnc_getammospawnloc = {
	_pos = getpos AmmoBoxSpawner;
	_markerstring = ("respawn_"+ (str (side player)) + "_forwardbase");
	if ((player distance (getmarkerpos _markerstring)) < (500)) then {
		_pos = (getmarkerpos _markerstring);
	};
	_pos
};


//"ACE_MainActions","weaponspawn"
//"ACE_MainActions","vehiclespawn"
//"ACE_MainActions","ammospawn","ammospawnlight"
//"ACE_MainActions","ammospawn","ammospawnsupport"
//"ACE_MainActions","ammospawn","ammospawnheavy"
	
_hasheavy = false;
{	

	_infaction1 = ["clearbox","Clear Boxes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\clearboxes.sqf"},{(["lead", typeof player] call BIS_fnc_inString) || (["command", typeof player] call BIS_fnc_inString) || (["2ic", typeof player] call BIS_fnc_inString) || (["pilot", typeof player] call BIS_fnc_inString) || (["crew", typeof player] call BIS_fnc_inString) || ((count units group player) < 3)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions"],_infaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_ammoaction = ["ammospawn","Spawn Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;

	_ammoaction2 = ["ammospawnlight","Light Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions","ammospawn"],_ammoaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction3 = ["ammospawnsupport","Support Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions","ammospawn"],_ammoaction3,true] call ace_interact_menu_fnc_addActionToClass;
		
	_vehaction = ["vehiclespawn","Spawn Vehicles","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	if (!_hasheavy) then {
		_ammoaction = ["weaponspawn","Spawn Heavy Weapons","",{},_condition] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;
	
		_ammoaction4 = ["ammospawnheavy","Heavy Ammo","",{},_condition] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction4,true] call ace_interact_menu_fnc_addActionToClass;

		_twc_repveh2 = ["repveh","Repair Nearby Vehicles","",{[_target] execvm "domination_core\client\sys_player\repairvehicle.sqf"},{true}] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;
	};
	
	

	_twc_repveh2 = ["repveh","Teleport to Airbase","",{call twc_fnc_basetp},{call twc_fnc_cantp1}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh2 = ["repveh","Teleport to Mainbase","",{call twc_fnc_basetp},{call twc_fnc_cantp2}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;

		


	#include "supply_boxes\1990.sqf";
	#include "supply_boxes\1990_us.sqf";
	#include "supply_boxes\2000.sqf";
	#include "supply_boxes\modern_pol.sqf";
	#include "supply_boxes\modern_ger.sqf";
	#include "supply_boxes\modern_uk.sqf";
	#include "supply_boxes\modern_us.sqf";

	if(["medic", typeof player] call BIS_fnc_inString)then{

		_medaction = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
		[_x,0,["ACE_MainActions"],_medaction,true] call ace_interact_menu_fnc_addActionToClass;
			
		player additemtovest "TWC_Item_Medical_SutureKit_20";
	};
	
	#include "pilots.sqf";
	#include "armour.sqf";
	#include "fst.sqf";
	#include "HQ.sqf";

	_hasheavy = true;
} foreach ["Land_InfoStand_V1_F", "UK3CB_BAF_MAN_HX58_Container_Green"];



//if(["quartermaster", typeof player] call BIS_fnc_inString)then{
if([player] call TWC_Core_fnc_ismanagement)then{
	execVM "domination_core\client\zeus\camera.sqf";
	_vehaction1 = ["base_Interact","Base","",{},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _vehaction1] call ace_interact_menu_fnc_addActionToObject;

	_action2 = ["Zeus","Spectator On","",{execVM "domination_core\client\zeus\spectator_on.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action2] call ace_interact_menu_fnc_addActionToObject;
	_action3 = ["Zeus","Spectator Off","",{execVM "domination_core\client\zeus\spectator_off.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action3] call ace_interact_menu_fnc_addActionToObject;
	_action4 = ["Zeus","Basemode On","",{execVM "domination_core\client\zeus\basemode_on.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action4] call ace_interact_menu_fnc_addActionToObject;
	_action5 = ["Zeus","Basemode Off","",{execVM "domination_core\client\zeus\basemode_off.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action5] call ace_interact_menu_fnc_addActionToObject;
	
	_action6 = ["Zeus","Repair Current Vehicle","",{execVM "domination_core\client\zeus\zrepair.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action6] call ace_interact_menu_fnc_addActionToObject;
	_action6 = ["Zeus","Enemy Siren","",{execVM "domination_core\server\sys_basedefence\INF_Alarm.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action6] call ace_interact_menu_fnc_addActionToObject;
	
	
	_action7 = ["Zeus","IDF Siren","",{{
	[_x, "TWC_sound_idfsiren"] call CBA_fnc_globalSay3d;
} forEach sirenlist;
},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action7] call ace_interact_menu_fnc_addActionToObject;
	
	_action8 = ["Zeus","Clear Siren","",{execVM "domination_core\server\sys_basedefence\INF_Alarmclear.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions", "base_Interact"], _action8] call ace_interact_menu_fnc_addActionToObject;

};



	_vic = ["spawn762","Spawn Vehicles","",{[_target, true] execvm "domination_core\client\sys_player\vehicledrop.sqf"},{leader player == player}] call ace_interact_menu_fnc_createAction;
	["UK3CB_BAF_MAN_HX58_Container_Green",0,["ACE_MainActions"],_vic,true] call ace_interact_menu_fnc_addActionToClass;




