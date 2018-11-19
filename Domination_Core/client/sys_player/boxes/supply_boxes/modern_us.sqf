if((typeOf player) in ["Modern_USMC_Squadleader","Modern_USMC_Teamleader"])then{

	_charlieaction = ["SpawnsmallcharlieCreate","Spawn Small Charlie Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateUSMC.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Marksman Rifle","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\marksmancrateus.sqf"},{(count units group player) >= 8}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_charlieaction1 = ["Spawnheartscrateus","Spawn Hearts and Minds Kit","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\heartsminds_us.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_charlieaction2 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_charlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
		_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav.sqf"},{(count units group player > 3)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},{(count units group player > 3)}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
};

