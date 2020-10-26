if((typeOf player) in ["twc_men_1990_us_w_teamleader","twc_men_1990_us_d_teamleader", "twc_men_1990_us_w_SquadLeader","twc_men_1990_us_d_SquadLeader"])then{

	_UKaction = ["SpawnsmallanaCreate","Spawn Small US Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrateUS90.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_artaction3 = ["SpawnrepCreate","Spawn Spare Tires","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\RepairKit.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_artaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;

	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "Spawntowrockets", "ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
};


