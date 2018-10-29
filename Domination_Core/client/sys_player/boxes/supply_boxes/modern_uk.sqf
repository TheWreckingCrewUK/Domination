if((typeOf player) in ["Modern_Artillery_Gunner","Modern_Artillery_Commander"])then{

	_artaction = ["SpawnsmallcharlieCreate","Spawn L16 Smoke Rounds","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_Smoke.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction1 = ["Spawnheartscrateus","Spawn L16 Ilumination Rounds","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_Illum.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_artaction2 = ["SpawnmedCreate","Spawn L16 HE Rounds","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_HE.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
		_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

};


if((typeOf player) in ["Modern_British_Squadleader","Modern_British_2IC", "Modern_British_Squadleader_Light","Modern_British_2IC_COIN_Light"])then{

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Small UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn NLAW Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratenlaw.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_alphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction5,true] call ace_interact_menu_fnc_addActionToClass;	
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
			_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
};

	if((typeOf player) in ["Modern_British_Squadleader_Light","Modern_British_2IC_COIN_Light"])then{
		_UKaction5 = ["SpawnmedCreate","Spawn Loaded WMIK","",{execvm "domination_core\client\sys_player\vehicles\patrolwmik.sqf"},{((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
		_UKaction5 = ["SpawnmedCreate","Spawn Loaded Mastiff","",{execvm "domination_core\client\sys_player\vehicles\patrolmastiff.sqf"},{(count units group player > 3) && ((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	};

if((typeOf player) in ["Modern_British_Sniper", "Modern_British_Spotter"])then{

	_snaction1 = ["Spawnsnipbox","Spawn Sniper Ammo Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratesniper.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
};

if((typeOf player) in ["Modern_British_Recce_Commander"])then{

	_snaction1 = ["Spawnsnipbox","Spawn Ammo Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrateRecce.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_snaction1 = ["Spawnsnipbox","Spawn Loaded GMG Jackal","",{execvm "domination_core\client\sys_player\vehicles\reccejackal.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
};


