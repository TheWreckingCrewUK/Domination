

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
//waitUntil{scriptDone _script};

twc_maxObjDistance = 6000;

crampresent = 1;
publicVariable "crampresent";

tank = ["CUP_O_T72_RU","CUP_O_T72_RU","CUP_O_T72_RU", "CUP_O_T90_RU", "CUP_O_T90_RU", "CUP_O_T90_RU", "CUP_O_T90_RU", "CUP_O_T90_RU", "CUP_O_T90_RU", "CUP_O_T90_RU"];

ifv = ["CUP_O_BMP3_RU"];

apc = ["CUP_O_BTR80A_GREEN_RU", "CUP_O_BTR80_GREEN_RU"];

twc_wdveh = 1;
publicVariable "twc_wdveh";

twc_canlandattack = 1;

twc_bluflufflist = ["Modern_British_Pointman_Light", "Modern_USMC_Rifleman", "TWC_Modern_US_Army_Rifleman", "Modern_pol_Base", "Modern_ger_mg", "Modern_British_Quartermaster", "Modern_ger_Base", "Modern_UKSF_Base", "Modern_British_Blank", "Modern_British_Blank", "Modern_British_Quartermaster"];

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



