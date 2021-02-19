//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
//waitUntil{scriptDone _script};

twc_maxObjDistance = 7000;

tank = ["CUP_O_T72_RU", "CUP_O_T90_RU", "CUP_O_T90_RU", "CUP_O_T90_RU"];

ifv = ["CUP_O_BMP3_RU", "CUP_O_BMP2_RU"];

apc = ["CUP_O_BTR80A_GREEN_RU", "CUP_O_BTR80_GREEN_RU"];

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["Ghufran", "Durrishahwar", "Yafiah", "Usaimah", "Johari"];
twc_LastAO = "";

twc_tankcount = random 3;
twc_apccount = 1 + (random 2);
twc_ifvcount = 2 + (random 2);
twc_infcount = 2;
twc_aainfcount = 1;

twc_wdveh = 0;
publicVariable "twc_wdveh";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";