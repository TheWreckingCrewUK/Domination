//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
waitUntil{scriptDone _script};

twc_maxObjDistance = 7000;

crampresent = 1;
publicVariable "crampresent";

tank = ["CUP_O_UAZ_METIS_SLA"];

ifv = ["CUP_O_GAZ_Vodnik_BPPU_RU", "CUP_O_GAZ_Vodnik_AGS_RU"];

apc = ["CUP_O_UAZ_AGS30_SLA", "CUP_O_UAZ_SPG9_SLA", "CUP_O_UAZ_MG_SLA", "CUP_O_UAZ_MG_SLA"];

aa = ["rhs_zsu234_aa", "CUP_O_Ural_ZU23_SLA"];

twc_wdveh = 0;
publicVariable "twc_wdveh";

//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [c_1, c_2, c_3, c_4, c_5];

twc_tankcount = random 1;
twc_apccount = 2 + (random 2);
twc_ifvcount = random 2;
twc_infcount = 1;
twc_aainfcount = 1;

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["airstrip","Krasnostav","Olsha"];
twc_LastAO = "";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";