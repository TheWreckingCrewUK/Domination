if((typeOf player) in ["1990_British_quartermaster_Desert"])then{

	_qm90action1 = ["spawnl111","Spawn L111A1 HMG","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL111A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_qm90action1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_qm90action3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_qm90action3,true] call ace_interact_menu_fnc_addActionToClass;

	_qm90action4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_qm90action4,true] call ace_interact_menu_fnc_addActionToClass;

};

if((typeOf player) in ["1990_British_mg_assistant_Desert"])then{

	_mgaction = ["Spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_mgaction,true] call ace_interact_menu_fnc_addActionToClass;
	
};


if((typeOf player) in ["twc_men_1990_us_w_SquadLeader","twc_men_1990_us_w_teamleader"])then{

	_charlieaction = ["SpawnsmallcharlieCreate","Spawn US Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateUS90.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction,true] call ace_interact_menu_fnc_addActionToClass;


	_charlieaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
			_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
};



if((typeOf player) in ["1990_British_2IC_Desert","1990_British_SectionCommander_Desert"])then{

	
	_90alphaaction = ["Spawnsmall90AlphaCreate","Spawn Ammo Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk90.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_90alphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90alphaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_90alphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90alphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	
	_90charlieaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90charlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_90charlieaction5 = ["SpawnmedCreate","Spawn Milan Crate","",{"UK3CB_BAF_Box_Milan_Ammo" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90charlieaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_90charlieaction5 = ["SpawnmedCreate","Spawn 40mm Ammo","",{"UK3CB_BAF_Box_L134A1_Ammo" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90charlieaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
			_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
		
};

if((typeOf player) in ["1990_RM_British_2IC_Mix","1990_RM_British_SectionCommander_Mix"])then{

	
	_90rmalphaaction = ["Spawnsmall90AlphaCreate","Spawn Ammo Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk90RM.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmalphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_90rmalphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmalphaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_90rmalphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmalphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_90rmaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90rmaction2,true] call ace_interact_menu_fnc_addActionToClass;

	_90charlieaction5 = ["SpawnmedCreate","Spawn Milan Crate","",{"UK3CB_BAF_Box_Milan_Ammo" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90charlieaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_90charlieaction5 = ["SpawnmedCreate","Spawn 40mm Ammo","",{"UK3CB_BAF_Box_L134A1_Ammo" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_90charlieaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
			_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
};

