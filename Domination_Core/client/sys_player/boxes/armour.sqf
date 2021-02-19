


_armourlow = {(( count(allPlayers - entities "HeadlessClient_F")) >= 0)};

_armourhi = {(( count(allPlayers - entities "HeadlessClient_F")) >= 6)};


if((typeOf player) in ["Modern_British_VehicleCommander"])then{




	_vehaction = ["lightvehicles","Light","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["mediumvehicles","Medium","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["heavyvehicles","Heavy","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;



	_armouraction1 = ["spawnl111","Spawn M1A2","",{["CUP_B_M1A2_TUSK_MG_US_Army"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3))) && ((count units group player) <= 3) && ((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	_armouraction1 = ["spawnl111","Spawn BMP","",{["CUP_I_BMP1_TK_GUE"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3))) && ((count units group player) <= 3) && ((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
		
	
	_armouraction1 = ["spawnl111","Spawn T-72","",{["CUP_O_T72_SLA"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3))) && ((count units group player) <= 3) && ((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn Bradley","",{["CUP_B_M2A3Bradley_USA_W"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)) && ((group player getvariable ["twc_ismechanised", 0]) == 0))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_armouraction1 = ["spawnl111","Spawn Linebacker","",{["CUP_B_M6LineBacker_USA_W"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)) && ((group player getvariable ["twc_ismechanised", 0]) == 0))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	

	_armouraction1 = ["spawnl111","Spawn LAV 25","",{["CUP_B_LAV25_desert_USMC"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)) && ((group player getvariable ["twc_ismechanised", 0]) == 0))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	



	_armouraction1 = ["spawnl111","Spawn AAV","",{["CUP_B_AAV_USMC"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)) && ((group player getvariable ["twc_ismechanised", 0]) == 0))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	

	
	_armouraction1 = ["spawnl111","Spawn Bulldog (GPMG)","",{["UK3CB_BAF_FV432_Mk3_GPMG_Green"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	
	_armouraction1 = ["spawnl111","Spawn Bulldog (RWS)","",{["UK3CB_BAF_FV432_Mk3_RWS_Green"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 2) == (floor ((group player getvariable ["armourcount", 1])/ 2)))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	


	_armouraction1 = ["spawnl111","Spawn M113","",{["CUP_B_M113_USA"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	


	_armouraction1 = ["spawnl111","Spawn Warrior","",{["CUP_B_MCV80_GB_D_SLAT"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
	};


if((typeOf player) in ["Modern_British_VehicleCrew"])then{
	
	_armouraction1 = ["spawnl111","Spawn Bulldog (GPMG)","",{["UK3CB_BAF_FV432_Mk3_GPMG_Green"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	};

	
if((typeOf player) in ["1990_British_Tank_Commander_Desert", "2000_British_Vehicle_Commander","1990_British_Vehicle_Crew","1990_British_Vehicle_Commander"])then{




	_vehaction = ["lightvehicles","Light","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["mediumvehicles","Medium","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_vehaction = ["heavyvehicles","Heavy","",{},_armourlow] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_vehaction,true] call ace_interact_menu_fnc_addActionToClass;

	_armouraction1 = ["spawnl111","Spawn Bradley","",{["CUP_B_M2Bradley_USA_W"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)) && ((group player getvariable ["twc_ismechanised", 0]) == 0))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;

	_armouraction1 = ["spawnl111","Spawn Warrior","",{["CUP_B_MCV80_GB_D_SLAT"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;


	_armouraction1 = ["spawnl111","Spawn Abrams","",{["CUP_B_M1A1_Woodland_US_Army"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3))) && ((count units group player) <= 3) && ((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "heavyvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;


	_armouraction1 = ["spawnl111","Spawn M113","",{["CUP_B_M113_USA"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{((group player getvariable ["twc_ismechanised", 0]) == 0)}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	
	
	
	};
	
	
if((typeOf player) in ["2000_British_Vehicle_Commander"])then{


	_armouraction1 = ["spawnl111","Spawn Linebacker","",{["CUP_B_M6LineBacker_USA_W"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{(((group player getvariable ["armourcount", 1])/ 3) == (floor ((group player getvariable ["armourcount", 1])/ 3)) && ((group player getvariable ["twc_ismechanised", 0]) == 0))}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "mediumvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	};
	
if((typeOf player) in ["2000_British_Vehicle_Commander", "2000_British_Vehicle_Crew"])then{
	_armouraction1 = ["spawnl111","Spawn Bulldog (GPMG)","",{["UK3CB_BAF_FV432_Mk3_GPMG_Green"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	};
	
if((typeOf player) in ["1990_British_Tank_Crew_Desert","1990_British_Tank_Commander_Desert","1990_British_Vehicle_Commander","1990_British_Vehicle_Crew"])then{


	_armouraction1 = ["spawnl111","Spawn FV432","",{["CUP_B_FV432_GB_GPMG"] execvm "domination_core\client\sys_player\vehicles\spawnarmour.sqf"},{true}] call ace_interact_menu_fnc_createAction;
	[_x,0,["ACE_MainActions", "vehiclespawn", "lightvehicles"],_armouraction1,true] call ace_interact_menu_fnc_addActionToClass;
	};
	
