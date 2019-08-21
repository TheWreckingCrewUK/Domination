//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
waitUntil{scriptDone _script};

twc_maxObjDistance = 5000;

crampresent = 0;
publicVariable "crampresent";

twc_wdveh = 1;
publicVariable "twc_wdveh";

//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [];


tank = ["rhs_t72be_tv","rhs_t72be_tv","rhs_t72be_tv", "rhs_t80um", "rhs_t80um", "rhs_t80um", "rhs_t80um", "rhs_t90a_tv", "rhs_t90sab_tv", "rhs_t90saa_tv"];

ifv = ["rhs_bmp2d_msv", "rhs_bmp1_msv"];

apc = ["rhs_btr80a_msv", "rhs_btr80_msv"];

twc_canlandattack = 1;

twc_is90 = 0;
publicVariable "twc_is90";

sirenlist = [idfradar];
publicVariable "sirenlist";

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