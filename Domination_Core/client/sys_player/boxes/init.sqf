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
_condition = {call twc_fnc_isplayeratbase};


	_twc_repveh = ["repveh","Recover Vehicle","",{_isflipping = _target getvariable ["twc_vehisflipping", false];

if (_isflipping) exitwith {hint "this vehicle is being recovered already";};[_target, player] remoteexec ["twc_fnc_flipvehicle", _target];},{(alive _target) && (1 < (vectorUp _target) vectorDistance (surfaceNormal getPosATL _target))}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction = ["weaponspawn","Spawn Heavy Weapons","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;

	_ammoaction = ["ammospawn","Spawn Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_ammoaction,true] call ace_interact_menu_fnc_addActionToClass;

	_ammoaction2 = ["ammospawnlight","Light Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction3 = ["ammospawnsupport","Support Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_ammoaction4 = ["ammospawnheavy","Heavy Ammo","",{},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn"],_ammoaction4,true] call ace_interact_menu_fnc_addActionToClass;
	

	_twc_repveh = ["prepveh","Prep Supplies","",{[_target, player, 2] call twc_fnc_genericfillvehicle;playSound3D ["A3\missions_f\data\sounds\click.wss", player];},{(alive _target) && (((getPos AmmoBoxSpawner) distance _target) < 20)}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["prepvehm","Prep Magazines Only","",{[_target, player, 2, true, false] call twc_fnc_genericfillvehicle;playSound3D ["A3\missions_f\data\sounds\click.wss", player];},{(alive _target) && (((getPos AmmoBoxSpawner) distance _target) < 20)}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "prepveh"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["prepvehi","Prep Items Only","",{[_target, player, 2, false, true] call twc_fnc_genericfillvehicle;playSound3D ["A3\missions_f\data\sounds\click.wss", player];},{(alive _target) && (((getPos AmmoBoxSpawner) distance _target) < 20)}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "prepveh"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_twc_repveh = ["clearsupplies","Clear Supplies","",{},{(alive _target) && (((getPos AmmoBoxSpawner) distance _target) < 20) && ((["lead", typeof player] call BIS_fnc_inString) || (["command", typeof player] call BIS_fnc_inString) || (["2ic", typeof player] call BIS_fnc_inString) || (["pilot", typeof player] call BIS_fnc_inString) || (["crew", typeof player] call BIS_fnc_inString) || ((count units group player) < 3))}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["clearsuppliesweps","Clear Weapons","",{clearweaponcargoglobal _target;playSound3D ["A3\missions_f\data\sounds\click.wss", player];},{((count (weaponcargo _target)) > 0)}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "clearsupplies"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["clearsuppliesweps2","Clear Specific Weapon","",{player setvariable ["twc_isclearingvehicleweaponcargo", time];playSound3D ["A3\missions_f\data\sounds\click.wss", player];hint "The next weapon you put in or take from the vehicle within 20 seconds will be completely removed from the vehicle";},{true}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "clearsupplies", "clearsuppliesweps"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["clearsuppliesitems","Clear All Items","",{clearitemcargoglobal _target;playSound3D ["A3\missions_f\data\sounds\click.wss", player];},{((count (itemcargo _target)) > 0)}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "clearsupplies"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["clearsuppliesiweps","Clear Specific Item","",{player setvariable ["twc_isclearingvehicleitemcargo", time];playSound3D ["A3\missions_f\data\sounds\click.wss", player];hint "The next item you put in or take from the vehicle within 20 seconds will be completely removed from the vehicle";},{true}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "clearsupplies", "clearsuppliesitems"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["clearsuppliesmags","Clear All Magazines","",{clearmagazinecargoglobal _target;playSound3D ["A3\missions_f\data\sounds\click.wss", player];},{((count (magazinecargo _target)) > 0)}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "clearsupplies"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["clearsuppliesiweps","Clear Specific Magazine","",{player setvariable ["twc_isclearingvehiclemagcargo", time];playSound3D ["A3\missions_f\data\sounds\click.wss", player]; hint "The next magazine you put in or take from the vehicle within 20 seconds will be completely removed from the vehicle";},{true}] call ace_interact_menu_fnc_createAction;
	["landvehicle",0,["ACE_MainActions", "clearsupplies", "clearsuppliesmags"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	

	_infaction1 = ["clearbox","Clear Boxes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\clearboxes.sqf"},{(["lead", typeof player] call BIS_fnc_inString) || (["command", typeof player] call BIS_fnc_inString) || (["2ic", typeof player] call BIS_fnc_inString) || (["pilot", typeof player] call BIS_fnc_inString) || (["crew", typeof player] call BIS_fnc_inString) || ((count units group player) < 3)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_infaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh = ["repveh","Repair Nearby Vehicles","",{[_target] execvm "domination_core\client\sys_player\repairvehicle.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["UK3CB_BAF_MAN_HX58_Repair_Green",0,["ACE_MainActions"],_twc_repveh,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repvehd = ["repveh","Repair Nearby Vehicles","",{[_target] execvm "domination_core\client\sys_player\repairvehicle.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["UK3CB_BAF_MAN_HX58_Repair_Sand",0,["ACE_MainActions"],_twc_repvehd,true] call ace_interact_menu_fnc_addActionToClass;

	_twc_repveh2 = ["repveh","Repair Nearby Vehicles","",{[_target] execvm "domination_core\client\sys_player\repairvehicle.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_twc_repveh2 = ["repveh","Repair Nearby Vehicles","",{[_target] execvm "domination_core\client\sys_player\repairvehicle.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["UK3CB_BAF_MAN_HX58_Container_Green",0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh2 = ["repveh","Teleport to Airbase","",{call twc_fnc_basetp},{call twc_fnc_cantp1}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_twc_repveh2 = ["repveh","Teleport to Mainbase","",{call twc_fnc_basetp},{call twc_fnc_cantp2}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_twc_repveh2,true] call ace_interact_menu_fnc_addActionToClass;

	
#include "pilots.sqf";
#include "armour.sqf";
#include "fst.sqf";
#include "HQ.sqf";


#include "supply_boxes\1990.sqf";
#include "supply_boxes\1990_us.sqf";
#include "supply_boxes\2000.sqf";
#include "supply_boxes\modern_pol.sqf";
#include "supply_boxes\modern_ger.sqf";
#include "supply_boxes\modern_uk.sqf";
#include "supply_boxes\modern_us.sqf";
	
if(["medic", typeof player] call BIS_fnc_inString)then{

	_medaction = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_medaction,true] call ace_interact_menu_fnc_addActionToClass;
		
	player additemtovest "TWC_Item_Medical_SutureKit_20";
};



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



	_vic = ["spawn762","Spawn Vehicles","",{[_target] execvm "domination_core\client\sys_player\vehicledrop.sqf"},{leader _player == _player}] call ace_interact_menu_fnc_createAction;
	["UK3CB_BAF_MAN_HX58_Container_Green",0,["ACE_MainActions"],_vic,true] call ace_interact_menu_fnc_addActionToClass;




