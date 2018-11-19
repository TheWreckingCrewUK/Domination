//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
waitUntil{scriptDone _script};

twc_maxObjDistance = 12000;

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["Ghufran", "Durrishahwar", "Yafiah", "Usaimah", "Johari"];
twc_LastAO = "";

tank = ["rhs_t72bd_tv", "rhs_t80uk", "rhs_t80", "rhs_t90a_tv"];

ifv = ["rhs_bmp2d_msv", "rhs_bmp1_msv"];

apc = ["rhs_btr80a_msv", "rhs_btr80_msv"];

twc_tankcount = random 3;
twc_apccount = 1 + (random 2);
twc_ifvcount = 2 + (random 2);
twc_infcount = 2;
twc_aainfcount = 1;

twc_wdveh = 0;
publicVariable "twc_wdveh";


sirenlist = [idfalarm_1, idfalarm_2, idfalarm_3];
publicVariable "sirenlist";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";