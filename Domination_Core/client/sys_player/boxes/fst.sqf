

_fstlow = {(( count(allPlayers - entities "HeadlessClient_F")) >= 0)};

_fsthi = {(( count(allPlayers - entities "HeadlessClient_F")) >= 6)};



if(((typeOf player) in ["Modern_British_logitech"]) || (["fst", typeof player] call BIS_fnc_inString))then{

	
/*
, "weaponspawn"
, "ammospawn", "ammospawnlight"
, "ammospawn", "ammospawnheavy"
, "ammospawn", "ammospawnsupport"
*/
_isbrit = {((((group player) getvariable ["twc_groupcountry", "baf"])) == "baf")};
_isus = {((((group player) getvariable ["twc_groupcountry", "baf"])) == "us") || ((((group player) getvariable ["twc_groupcountry", "baf"])) == "ussf")};
_isranger = {((((group player) getvariable ["twc_groupcountry", "baf"])) == "ussf")};


	_fstaction1 = ["spawnl111","Spawn L111A1 HMG","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL111A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_fstaction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction2 = ["spawnl134","Spawn L134 GMG","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL134A1.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_fstaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction21 = ["spawnl7","Spawn L7 GPMG","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL7.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_fstaction21,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_fstaction5 = ["spawnm6","Spawn 82mm Mortar","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["spawnm6","Spawn 60mm Mortar","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortar.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Tandem","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_tandem.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions","ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn NLAW Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratenlaw.sqf"},_isbrit] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn","ammospawnheavy"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn","ammospawnheavy"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["l16ammo","Spawn 82mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_mix.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["l16he","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "l16ammo"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["l16he","Illum","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_illum.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "l16ammo"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["l16he","Smoke","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\staticL16_smoke.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "l16ammo"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_fstaction5 = ["spawnm6","Spawn 60mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo_mix.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["m6ammo","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo_HE.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport", "spawnm6"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["m6ammo","Smoke","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo_Smoke.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport", "spawnm6"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction5 = ["m6ammo","Illum","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo_Illum.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport", "spawnm6"],_fstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_fstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

	_fstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_fstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_fstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction6 = ["spawn40","Spawn Large Empty Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\largeemptycrate.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_fstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction7 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;
	
	_fstaction7 = ["SpawnsmallUKCreate","Spawn Small US Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateus.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;
	
		if (!(["90", twc_missionname] call BIS_fnc_inString)) then {
		
			if (!(["00", twc_missionname] call BIS_fnc_inString)) then {
				_fstaction7 = ["SpawnsmallUKCreate","Spawn Coyote GMG","",{["UK3CB_BAF_Coyote_Logistics_L134A1_W"] execvm "domination_core\client\sys_player\vehicles\coyote.sqf"},_isbrit] call ace_interact_menu_fnc_createAction;
				[_x,0,["ACE_MainActions", "vehiclespawn"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;

				
				_fstaction7 = ["SpawnsmallUKCreate","Spawn Coyote HMG","",{["UK3CB_BAF_Coyote_Logistics_L111A1_W"] execvm "domination_core\client\sys_player\vehicles\coyote.sqf"},_isbrit] call ace_interact_menu_fnc_createAction;
				[_x,0,["ACE_MainActions", "vehiclespawn"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;

				_fstaction7 = ["SpawnsmallUKCreate","Spawn AUV (M2)","",{execvm "domination_core\client\sys_player\vehicles\SFmrap.sqf"},_isranger] call ace_interact_menu_fnc_createAction;
				[_x,0,["ACE_MainActions", "vehiclespawn"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;

				
				_fstaction7 = ["SpawnsmallUKCreate","Spawn MRZR","",{execvm "domination_core\client\sys_player\vehicles\SFMRZR.sqf"},_isus] call ace_interact_menu_fnc_createAction;
				[_x,0,["ACE_MainActions", "vehiclespawn"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;

				
				
			} else {
				
				
				_fstaction7 = ["SpawnsmallUKCreate","Spawn WMIK Milan","",{["UK3CB_BAF_LandRover_WMIK_Milan_Green_B"] execvm "domination_core\client\sys_player\vehicles\coyote.sqf"},_isbrit] call ace_interact_menu_fnc_createAction;
				[_x,0,["ACE_MainActions", "vehiclespawn"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;

				_fstaction7 = ["SpawnsmallUKCreate","Spawn Milan Box","",{"UK3CB_BAF_Box_Milan_Ammo" createvehicle getpos ammoboxspawner},_isbrit] call ace_interact_menu_fnc_createAction;
				[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_fstaction7,true] call ace_interact_menu_fnc_addActionToClass;
			};
		};
		
		
	
	_artaction3 = ["SpawnrepCreate","Spawn Quad Bike","",{execvm "domination_core\client\sys_player\vehicles\sfquad.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	};

	



