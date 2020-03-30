

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
waitUntil{scriptDone _script};

twc_maxObjDistance = 6000;

crampresent = 1;
publicVariable "crampresent";

tank = ["rhs_t72be_tv","rhs_t72be_tv","rhs_t72be_tv", "rhs_t80um", "rhs_t80um", "rhs_t80um", "rhs_t80um", "rhs_t90a_tv", "rhs_t90sab_tv", "rhs_t90saa_tv"];

ifv = ["rhs_bmp2d_msv"];

apc = ["rhs_btr80a_msv", "rhs_btr80_msv"];

twc_wdveh = 1;
publicVariable "twc_wdveh";

twc_canlandattack = 1;

//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [c_1, c_2, c_3, c_4, c_5];

twc_tankcount = random 2;
twc_apccount = 1 + (random 2);
twc_ifvcount = 1 + (random 2);
twc_infcount = 3;
twc_aainfcount = 1;

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["airstrip","Krasnostav","Olsha"];
twc_LastAO = "";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";



