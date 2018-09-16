


_armourlow = {(( count(allPlayers - entities "HeadlessClient_F")) >= 0)};

_armourhi = {(( count(allPlayers - entities "HeadlessClient_F")) >= 6)};



if((typeOf player) in ["Modern_British_VehicleCommander"])then{



	

	_vehaction = ["vehiclespawnwoodland","Spawn Vehicles","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["lightvehicles","Light","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["mediumvehicles","Medium","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["heavyvehicles","Heavy","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;



	_armouraction1 = ["spawnl111","Spawn M1A2","",{["rhsusf_m1a2sep1tuskid_usarmy"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_armouraction1 = ["spawnl111","Spawn BMP","",{["rhsgref_cdf_b_bmp1"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
		
	
	_armouraction1 = ["spawnl111","Spawn T-72","",{["rhsgref_ins_t72bb"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn Bradley","",{["RHS_M2A3_BUSKIII_wd"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_armouraction1 = ["spawnl111","Spawn Linebacker","",{["RHS_M6"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	/*
	_armouraction1 = ["spawnl111","Spawn Rosomak","",{["B_APC_Wheeled_01_cannon_F"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	*/
	

/* mgs gun is broken
	_armouraction1 = ["spawnl111","Spawn Stryker MGS","",{["CUP_B_M1128_MGS_Woodland"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	*/


	_armouraction1 = ["spawnl111","Spawn LAV 25","",{["CUP_B_LAV25_desert_USMC"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	

/*
	_armouraction1 = ["spawnl111","Spawn Challenger 2","",{["CUP_B_Challenger2_2CW_BAF"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	*/
	


	_armouraction1 = ["spawnl111","Spawn Scimitar","",{["ukcw_cvrt_Scim_d"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn AAV","",{["CUP_B_AAV_USMC"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn FV432","",{["ukcw_fv432"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn M113","",{["rhsusf_m113d_usarmy_M240"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn Warrior","",{["CUP_B_MCV80_GB_D_SLAT"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
	};

	
if((typeOf player) in ["1990_British_Tank_Commander_Desert", "2000_British_Vehicle_Commander"])then{



	_vehaction = ["vehiclespawnwoodland","Spawn Vehicles","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;


	_vehaction = ["lightvehicles","Light","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["mediumvehicles","Medium","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["heavyvehicles","Heavy","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_armouraction1 = ["spawnl111","Spawn Bradley","",{["RHS_M2A2_wd"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;


	_armouraction1 = ["spawnl111","Spawn Abrams","",{["rhsusf_m1a1aimwd_usarmy"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;


	_armouraction1 = ["spawnl111","Spawn Scimitar","",{["ukcw_cvrt_Scim_w_L1"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;


	_armouraction1 = ["spawnl111","Spawn M113","",{["rhsusf_m113d_usarmy_M240"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	};
	
	
if((typeOf player) in ["2000_British_Vehicle_Commander"])then{


	_armouraction1 = ["spawnl111","Spawn Linebacker","",{["RHS_M6"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V1_F",0,["ACE_MainActions", "vehiclespawnwoodland", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	};
	
