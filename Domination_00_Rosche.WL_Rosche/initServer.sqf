//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
//waitUntil{scriptDone _script};

twc_maxObjDistance = 5000;

crampresent = 1;
publicVariable "crampresent";

twc_wdveh = 1;
publicVariable "twc_wdveh";

squad = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_EMR" >> "CUP_O_RU_InfSquad_EMR");

squadAT = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_EMR" >> "CUP_O_RU_InfSection_AT_EMR");

squadAA = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_EMR" >> "CUP_O_RU_InfSection_AA_EMR");

//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [];

twc_is90 = 1;
publicVariable "twc_is90";

twc_tankcount = 1 + random 2;
twc_apccount = random 2;
twc_ifvcount = random 2;
twc_aacount = 1;
twc_infcount = 2;
twc_aainfcount = 1;

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["airstrip","Krasnostav","Olsha"];
twc_LastAO = "";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";