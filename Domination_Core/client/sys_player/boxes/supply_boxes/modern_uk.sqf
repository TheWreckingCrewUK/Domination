if((typeOf player) in ["Modern_Artillery_Gunner","Modern_Artillery_Commander"])then{

	_artaction = ["SpawnsmallcharlieCreate","Spawn L16 Smoke Rounds","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_Smoke.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction1 = ["Spawnheartscrateus","Spawn L16 Ilumination Rounds","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_Illum.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_artaction2 = ["SpawnmedCreate","Spawn L16 HE Rounds","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
		_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

};


if((typeOf player) in ["Modern_British_Squadleader","Modern_British_2IC", "Modern_British_Squadleader_Light","Modern_British_2IC_COIN_Light"])then{

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Small UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn","ammospawnlight"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn NLAW Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratenlaw.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","weaponspawn"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Tandem","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_tandem.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_alphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction5,true] call ace_interact_menu_fnc_addActionToClass;	
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
		
	_alphaaction6 = ["spawn40","Spawn Night Ops Equipment","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
};
if((typeOf player) in ["Modern_UKSF_Squadleader","Modern_UKSF_2IC"])then{


	
	_vehaction = ["vehiclespawn","Spawn Vehicles","",{},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Small UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnlight"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
		
	_alphaaction6 = ["spawn40","Spawn Night Ops Equipment","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawnrockets","Spawn MAAWS Rockets","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateCGrockets.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_alphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction5,true] call ace_interact_menu_fnc_addActionToClass;	
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","weaponspawn"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction3 = ["SpawnrepCreate","Spawn RG","",{execvm "domination_core\client\sys_player\vehicles\sfrg.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_artaction3 = ["SpawnrepCreate","Spawn MRAP","",{execvm "domination_core\client\sys_player\vehicles\sfmrap.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_artaction3 = ["SpawnrepCreate","Spawn Quad Bike","",{execvm "domination_core\client\sys_player\vehicles\sfquad.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawn"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Tandem","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_tandem.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
};

	if((typeOf player) in ["Modern_British_Squadleader_Light","Modern_British_2IC_COIN_Light"])then{
		_UKaction5 = ["SpawnmedCreate","Spawn Loaded WMIK","",{execvm "domination_core\client\sys_player\vehicles\patrolwmik.sqf"},{((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
		_UKaction5 = ["SpawnmedCreate","Spawn Loaded Mastiff","",{execvm "domination_core\client\sys_player\vehicles\patrolmastiff.sqf"},{(count units group player > 3) && ((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
		["Land_InfoStand_V1_F",0,["ACE_MainActions"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	};

if((typeOf player) in ["Modern_British_Sniper", "Modern_British_Spotter"])then{

	_snaction1 = ["Spawnsnipbox","Spawn Small Ammo Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrategeneric.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn","ammospawnlight"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_snaction1 = ["Spawnsnipbox","Spawn Large Ammo Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\largeCrategeneric.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn","ammospawnlight"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
		
	_alphaaction6 = ["spawn40","Spawn Night Ops Equipment","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawn","ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Tandem","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_tandem.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "weaponspawn"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_alphaaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction4,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction5,true] call ace_interact_menu_fnc_addActionToClass;	
		
	_alphaaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_alphaaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
};

if((typeOf player) in ["Modern_British_Recce_Commander"])then{

	_snaction1 = ["Spawnsnipbox","Spawn Ammo Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrateRecce.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;

	_snaction1 = ["Spawnsnipbox","Spawn Loaded GMG Jackal","",{execvm "domination_core\client\sys_player\vehicles\reccejackal.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_snaction1,true] call ace_interact_menu_fnc_addActionToClass;
};


