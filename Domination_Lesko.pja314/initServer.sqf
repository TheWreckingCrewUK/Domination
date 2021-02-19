//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
//waitUntil{scriptDone _script};

twc_maxObjDistance = 5000;

crampresent = 0;
publicVariable "crampresent";

twc_wdveh = 1;
publicVariable "twc_wdveh";

//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [];

tank = ["CUP_O_T72_RU", "CUP_O_T90_RU", "CUP_O_T90_RU"];

ifv = ["CUP_O_BMP3_RU", "CUP_O_BMP2_RU"];

apc = ["CUP_O_BTR80A_GREEN_RU", "CUP_O_BTR80_GREEN_RU"];

twc_canlandattack = 1;

twc_is90 = 0;
publicVariable "twc_is90";

sirenlist = [idfradar];
publicVariable "sirenlist";

twc_bluflufflist = ["Modern_British_Pointman_Light", "Modern_USMC_Rifleman", "TWC_Modern_US_Army_Rifleman", "Modern_pol_Base", "Modern_ger_mg", "Modern_British_Quartermaster", "Modern_ger_Base", "Modern_UKSF_Base", "Modern_British_Blank", "Modern_British_Blank", "Modern_British_Quartermaster"];

twc_tankcount = random 1;
twc_apccount = random 2;
twc_ifvcount = random 2;
twc_aacount = 1;
twc_infcount = 3;
twc_aainfcount = 1;
/*
twc_tankcount = 5;
twc_apccount = 0;
twc_ifvcount = 0;
twc_aacount = 0;
twc_infcount = 0;
twc_aainfcount = 0;
*/
twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["airstrip","Krasnostav","Olsha"];
twc_LastAO = "";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";