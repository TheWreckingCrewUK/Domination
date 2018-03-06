//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
waitUntil{scriptDone _script};

twc_maxObjDistance = 40000;

squad = (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Infantry" >> "CUP_O_TK_InfantrySquad");

squadAT = (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Infantry" >> "CUP_O_TK_InfantrySectionAT");

squadAA = (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Infantry" >> "CUP_O_TK_InfantrySectionAA");

tankaaCombined = (configfile >> "CfgGroups" >> "East" >> "CUP_O_TK" >> "Armored" >> "CUP_O_TK_T55Platoon");

tank = [["CUP_O_T72_TKA"], ["CUP_O_T55_TK"], ["CUP_O_BRDM2_ATGM_SLA"]];

ifv = ["CUP_O_BMP1P_TKA"];

apc = ["CUP_O_BTR60_TK"];

aa = ["CUP_O_BMP2_ZU_TKA"];

radioTower = "Land_Antenna";
//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9];

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["airfield","Loy manara","Jaza","sultansafe","loy manara oilfield","iedrestrictionzone","Bosquet","Faro","Guran","Feas"];
twc_LastAO = "";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";