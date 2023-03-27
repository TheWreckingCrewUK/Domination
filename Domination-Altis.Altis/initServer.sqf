//creates the badAO's array based on map given in /init
whatMap = "Altis";
badAOs = ["Agia Triada","Telos"];

//sets up enemy variables based on mods
//Allows it to be switched if we want new maps or enemy types.
//Enemies always spawn as OPFOR
_enemyType = 6;
//1. CSAT
if(_enemyType == 1)then{
	tank = ["O_MBT_02_cannon_F"];
	ifv = ["O_APC_Tracked_02_cannon_F"];
	apc = ["O_APC_Wheeled_02_rcws_F"];
	squad = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad");
	squadAT = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam_AT");
	squadAA = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam_AA");
	TWC_Domination_hardpointSoldierType = "O_Soldier_F";
	aa = ["O_APC_Tracked_02_AA_F"];
	radioTower = "Land_TTowerBig_2_F";
	mortar = ["O_Mortar_01_F"];
	spg = ["O_MBT_02_arty_F"];
	attackHelo = ["O_heli_Attack_02_dynamicLoadout_F"];
	tankaaCombined = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Armored" >> "OIA_TankPlatoon_AA");
	enemyFlag = "flag_CSAT";
	bunkerMarkerClass = "n_unknown";
};
//2. AAF
if(_enemyType == 2)then{
	tank = ["I_MBT_03_cannon_F"];
	ifv = ["I_APC_tracked_03_cannon_F"];
	apc = ["I_APC_Wheeled_03_cannon_F"];
	squad = (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad");
	squadAT = (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfTeam_AT");
	squadAA = (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfTeam_AA");
	TWC_Domination_hardpointSoldierType = "I_Soldier_F";
	aa = ["I_LT_01_AA_F"];
	radioTower = "Land_TTowerBig_2_F";
	mortar = ["I_Mortar_01_F"];
	spg = ["I_Truck_02_MRL_F"];
	attackHelo = ["I_Heli_light_03_dynamicLoadout_F"];
	tankaaCombined = (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Armored" >> "I_LTankPlatoon_combined");
	enemyFlag = "flag_AAF";
	bunkerMarkerClass = "n_unknown";
};
//3. FIA
if(_enemyType == 3)then{
	tank = ["O_G_Offroad_01_AT_F"];
	ifv = ["O_G_Offroad_01_armed_F"];
	apc = ["O_G_Offroad_01_armed_F"];
	squad = (configfile >> "CfgGroups" >> "East" >> "OPF_G_F" >> "Infantry" >> "O_G_InfSquad_Assault");
	squadAT = ["O_G_Soldier_TL_F","O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F"];
	squadAA = ["O_G_Soldier_TL_F","O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F"];
	TWC_Domination_hardpointSoldierType = "O_G_Soldier_F";
	aa = ["O_G_Offroad_01_armed_F"];
	radioTower = "Land_TTowerBig_2_F";
	mortar = ["O_G_Mortar_01_F"];
	spg = ["O_G_Mortar_01_F"];
	attackHelo = ["I_Heli_light_03_dynamicLoadout_F"];
	tankaaCombined = (configfile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Armored" >> "I_LTankPlatoon_combined");
	enemyFlag = "flag_FIA";
	bunkerMarkerClass = "n_unknown";
};
//4. Livonia Spetsnaz
if(_enemyType == 4)then{
	tank = ["O_MBT_02_cannon_F"];
	ifv = ["O_APC_Tracked_02_cannon_F"];
	apc = ["O_APC_Wheeled_02_rcws_F"];
	squad = (configfile >> "CfgGroups" >> "East" >> "OPF_R_F" >> "SpecOps" >> "O_R_InfSquad");
	squadAT = (configfile >> "CfgGroups" >> "East" >> "OPF_R_F" >> "SpecOps" >> "O_R_reconTeam");
	squadAA = (configfile >> "CfgGroups" >> "East" >> "OPF_R_F" >> "SpecOps" >> "O_R_reconTeam");
	TWC_Domination_hardpointSoldierType = "O_R_Soldier_TL_F";
	aa = ["O_APC_Tracked_02_AA_F"];
	radioTower = "Land_TTowerBig_2_F";
	mortar = ["O_Mortar_01_F"];
	spg = ["O_MBT_02_arty_F"];
	attackHelo = ["O_heli_Attack_02_dynamicLoadout_F"];
	tankaaCombined = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Armored" >> "OIA_TankPlatoon_AA");
	enemyFlag = "flag_Russia";
	bunkerMarkerClass = "n_unknown";
};
//5. Livonia Spetsnaz
if(_enemyType == 5)then{
	tank = ["I_C_Offroad_02_AT_F"];
	ifv = ["I_C_Offroad_02_LMG_F"];
	apc = ["I_C_Offroad_02_LMG_F"];
	squad = (configfile >> "CfgGroups" >> "Indep" >> "IND_C_F" >> "Infantry" >> "ParaCombatGroup");
	squadAT = ["I_C_Soldier_Para_6_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_5_F"];
	squadAA = ["I_C_Soldier_Para_6_F","I_C_Soldier_Para_5_F","I_C_Soldier_Para_5_F"];
	TWC_Domination_hardpointSoldierType = "I_C_Soldier_Para_2_F";
	aa = ["I_C_Offroad_02_LMG_F"];
	radioTower = "Land_TTowerBig_2_F";
	mortar = ["I_C_HMG_02_high_F"];
	spg = ["I_C_Offroad_02_AT_F"];
	attackHelo = ["I_C_Heli_Light_01_civil_F"];
	tankaaCombined = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Armored" >> "OIA_TankPlatoon_AA");
	enemyFlag = "flag_Syndicat";
	bunkerMarkerClass = "n_unknown";
};
//6. Russian MSV Modern
if(_enemyType == 6)then{
	tank = ["CUP_O_T90_RU"];
	ifv = ["CUP_O_BMP3_RU"];
	apc = ["CUP_O_BTR80_CAMO_RU"];
	squad = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_M_EMR" >> "InfSquad");
	squadAT = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_M_EMR" >> "InfTeam_AT");
	squadAA = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_M_EMR" >> "InfTeam_AA");
	TWC_Domination_hardpointSoldierType = "CUP_O_RU_Soldier_Lite_M_EMR_V2";
	aa = ["CUP_O_2S6M_RU"];
	radioTower = "Land_TTowerBig_2_F";
	mortar = ["CUP_O_2b14_82mm_RU_M_MSV"];
	spg = ["CUP_O_BM21_RU"];
	attackHelo = ["CUP_O_Mi24_P_Dynamic_RU"];
	tankaaCombined = ["CUP_O_T90_RU","CUP_O_T90_RU","CUP_O_T90_RU","CUP_O_2S6M_RU"];
	enemyFlag = "flag_Russia";
	bunkerMarkerClass = "n_unknown";
};

//Setting for how many AO's to complete:
aosToComplete = 3;
// Setting for how far AO's should spawn Away: This is a maximum
aoDistanceFromSpawn = 4000;


//Sets empty arsenal
#include "Domination_Core\server\arsenal\arsenal.sqf";
//Launches server
execVM "Domination_Core\server\init.sqf";