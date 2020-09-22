if((typeOf player) in ["Modern_ger_commander","Modern_ger_commander_d", "Modern_ger_subcommander","Modern_ger_subcommander_d"])then{

	_UKaction = ["SpawnsmallanaCreate","Spawn Small German Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateger.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
		_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_alphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction6 = ["spawn40","Spawn Large Empty Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\largeemptycrate.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_fstaction6,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	

	_UKaction5 = ["Spawnrockets","Spawn AT Rockets","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateCGrockets.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Tandem","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_tandem.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "weaponspawn"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};


