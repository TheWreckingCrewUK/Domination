
_attackcond = {((count units group player) > 1) && ((twc_aosToComplete < 2) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers))))};

_attackcond2 = {((count units group player) > 1) && ((twc_aosToComplete < 2) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers))))};

_utilitycond = {(twc_aosToComplete < 2) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers)))};

_transportcond1 = {true};

_transportcond2 = {(twc_aosToComplete < 2) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers)))};

_cascond = {(twc_aosToComplete < 2) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers)))};

_planecondlow = {( count(allPlayers - entities "HeadlessClient_F")) >= 0};

_planecondmid = {(( count(allPlayers - entities "HeadlessClient_F")) >= 8) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers)))};

_planecondhi = {(( count(allPlayers - entities "HeadlessClient_F")) >= 12) && ((twc_aosToComplete < 2) || ((count (units (group player))) == (count allplayers)))};

/*
playercount = 0;
_planecondlow = {playercount >= 5};

_planecondmid = {playercount >= 7};

_planecondhi = {playercount >= 9};

_attackcond = {true};

_utilitycond = {true};

_transportcond = {true};

_transportcond1 = {true};

_transportcond2 = {true};

_cascond = {true};
*/




//second check to incorporate the logistics crew without giving them the ability to spawn helis
if((typeOf player) in ["Modern_British_HeliPilot","Modern_British_crewchief","2000_British_HeliPilot_Desert","2000_British_HeliPilot","2000_British_CrewChief_Desert","2000_British_CrewChief", "Modern_British_logitech", "1990_British_HeliPilot_Desert","1990_British_HeliPilot","1990_British_Crewchief"])then{



	_UKaction5 = ["Spawnrockets","Spawn AT4 Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateat4.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_UKaction5 = ["Spawntow","Spawn TOW Launcher","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetow.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "weaponspawn"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Spawn TOW Missiles","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","HE","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_HE.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction5 = ["Spawntowrockets","Tandem","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratetowammo_tandem.sqf"},_condition] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy", "Spawntowrockets"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	if(!((typeOf player) in ["Modern_British_logitech"]))then{
		if (!_hasheavy) then {
		
			_vehaction1 = ["vehiclespawnattack","Attack Helicopters","",{},_attackcond] call ace_interact_menu_fnc_createAction;
			[_x,0,["ACE_MainActions","vehiclespawn"],_vehaction1,true] call ace_interact_menu_fnc_addActionToClass;
			
			_vehaction2 = ["vehiclespawnutility","Utility Helicopters","",{},_utilitycond] call ace_interact_menu_fnc_createAction;
			[_x,0,["ACE_MainActions","vehiclespawn"],_vehaction2,true] call ace_interact_menu_fnc_addActionToClass;
			
			_vehaction3 = ["vehiclespawntransport","Transport Helicopters","",{},_transportcond1] call ace_interact_menu_fnc_createAction;
			[_x,0,["ACE_MainActions","vehiclespawn"],_vehaction3,true] call ace_interact_menu_fnc_addActionToClass;
			
			_vehaction4 = ["vehiclespawncas","CAS Helicopters","",{},_cascond] call ace_interact_menu_fnc_createAction;
			[_x,0,["ACE_MainActions","vehiclespawn"],_vehaction4,true] call ace_interact_menu_fnc_addActionToClass;
		};
	};	
};
	
if((typeOf player) in ["Modern_British_JetPilot", "2000_British_JetPilot"])then{


	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hercules","",{
	
	["twc_c5_hercules"] execvm "domination_core\client\sys_player\vehicles\plane.sqf"
	
	},_planecondlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hercules VIV","",{
	
	["CUP_B_C130J_Cargo_GB"] execvm "domination_core\client\sys_player\vehicles\plane.sqf"
	
	},_planecondlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Harrier","",{
	
	["CUP_B_GR9_DYN_GB"] execvm "domination_core\client\sys_player\vehicles\plane.sqf"
	
	},_planecondlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn A-10","",{
	
	["CUP_B_A10_DYN_USA"] execvm "domination_core\client\sys_player\vehicles\plane.sqf"
	
	},_planecondhi] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////

	

	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos player)},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large US Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos player)},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action1,true] call ace_interact_menu_fnc_addActionToClass;

	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn Small US Crate","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateusmc.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;	
	
		_UKaction = ["SpawnsmallanaCreate","Spawn Small Polish Crate","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratepol.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;

	
	_haction4 = ["SpawnsmallsniperCreate","Spawn Small Sniper Crate","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratesniper.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction6 = ["spawn40","Spawn 40mm Ammo","",{_box = "ACE_Box_Ammo" createvehicle (getpos player); [_box] execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction6,true] call ace_interact_menu_fnc_addActionToClass;

	
	
};
	
	
if((typeOf player) in ["Modern_British_HeliPilot","Modern_British_crewchief", "Modern_British_logitech"])then{



	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Merlin","",{
	
	["UK3CB_BAF_Merlin_HC3_18_GPMG"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_utilitycond] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Apache","",{
	
	["RHS_AH64D"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Cobra","",{
	
	["RHS_AH1Z"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_MH47E_GB"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Wildcat (Unarmed)","",{
	
	["UK3CB_BAF_Wildcat_AH1_TRN_8A"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Mi-8","",{
	
	["CUP_O_Mi8_CHDKZ"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk","",{
	
	["RHS_UH60M"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond1] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Wildcat","",{
	
	["UK3CB_BAF_Wildcat_AH1_HEL_6A"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Venom","",{
	
	["RHS_UH1Y_d"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Hind","",{
	
	["rhsgref_cdf_Mi35"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},{((count units group player) > 1)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;

	
	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////

	

	_action = ["SpawnUKCreate","Spawn Large UK Crate","",{"twc_forwardBase_BritishAmmoBox" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action,true] call ace_interact_menu_fnc_addActionToClass;
	
	_action1 = ["SpawnCharlieCreate","Spawn Large US Crate","",{"twc_forwardBase_CharlieAmmoBox" createVehicle (getPos AmmoBoxSpawner)},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_action1,true] call ace_interact_menu_fnc_addActionToClass;

	



	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;	

	_alphaaction = ["SpawnsmallAlphaCreate","Spawn NLAW Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratenlaw.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnheavy"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn Small US Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateusmc.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKactionana = ["SpawnsmallUKCreate","Spawn Small ANA Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateana.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionana,true] call ace_interact_menu_fnc_addActionToClass;
	
	
		_UKaction = ["SpawnsmallanaCreate","Spawn Small Polish Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratepol.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	_UKaction = ["SpawnsmallanaCreate","Spawn Small German Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateger.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_hUKactionnac = ["SpawnsmallUKCreate","Spawn Small NAC Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateNAC.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKactionnac,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction4 = ["SpawnsmallsniperCreate","Spawn Small Sniper Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratesniper.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction5 = ["spawnm6","Spawn 82mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction5 = ["spawnm6","Spawn 60mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
	_alphaaction = ["SpawnsmallAlphaCreate","Spawn Javelin Tubes","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratejav_tube.sqf"},{(count allplayers > 3)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_alphaaction,true] call ace_interact_menu_fnc_addActionToClass;


	_UKaction5 = ["Spawnrockets","Spawn German AT Rockets","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateCGrockets.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_UKaction5,true] call ace_interact_menu_fnc_addActionToClass;	

	

	
};
	

if((typeOf player) in ["1990_British_HeliPilot_Desert","1990_British_HeliPilot","1990_British_Crewchief"])then{

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Puma","",{
	
	["CUP_B_SA330_Puma_HC2_BAF"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_transportcond2] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	


	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_CH47F_GB"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	
	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk (Armed)","",{
	
	["RHS_UH60M_ESSS_d"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_cascond] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////



	


	
	_UKaction3 = ["spawn50","Spawn Night Ops Box","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCratenightops.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_UKaction3,true] call ace_interact_menu_fnc_addActionToClass;

	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrateUK90.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;	
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Small UK RM Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrateUKRM.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;	
	
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Sniper Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratesniper2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn Small US Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallCrateUS90.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;

	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
		_hfstaction3 = ["spawn50","Spawn Spare Wheels","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\Repairkit.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction5 = ["spawnm6","Spawn M6 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMortarAmmo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction6 = ["spawn40","Spawn 40mm Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\40ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction6,true] call ace_interact_menu_fnc_addActionToClass;
	
};
	


if((typeOf player) in ["2000_British_HeliPilot_Desert","2000_British_HeliPilot","2000_British_CrewChief"])then{



	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Puma","",{
	
	["CUP_B_SA330_Puma_HC2_BAF"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_utilitycond] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawnutility"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Apache","",{
	
	["RHS_AH64D"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_attackcond2] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawnattack"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Chinook","",{
	
	["CUP_B_CH47F_GB"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawntransport"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;


	_helispawn1 = ["SpawnsmallcharlieCreate","Spawn Blackhawk (Armed)","",{
	
	["RHS_UH60M_ESSS_d"] execvm "domination_core\client\sys_player\vehicles\heli.sqf"
	
	},_cascond] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "vehiclespawncas"],_helispawn1,true] call ace_interact_menu_fnc_addActionToClass;
	







	_hcharlieaction2 = ["SpawnsmallcharlieCreate","Spawn US Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateUS2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hcharlieaction2,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn UK Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcrateuk2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	

	
	_hUKaction3 = ["SpawnsmallUKCreate","Spawn Sniper Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallcratesniper2000.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_hUKaction3,true] call ace_interact_menu_fnc_addActionToClass;
	
	_haction5 = ["SpawnmedCreate","Spawn Medical Crate","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\smallMedical.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnlight"],_haction5,true] call ace_interact_menu_fnc_addActionToClass;
	
	_hfstaction3 = ["spawn50","Spawn .50 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\50calammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction3,true] call ace_interact_menu_fnc_addActionToClass;

	_hfstaction4 = ["spawn762","Spawn 7.62 Ammo","",{execvm "domination_core\client\sys_player\boxes\supply_boxes\762ammo.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "ammospawn", "ammospawnsupport"],_hfstaction4,true] call ace_interact_menu_fnc_addActionToClass;
	

	
};


