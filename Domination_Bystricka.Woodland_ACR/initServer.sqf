//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
//waitUntil{scriptDone _script};

twc_maxObjDistance = 7000;

twc_wdveh = 1;
publicVariable "twc_wdveh";

twc_nonpersistent = 1;
publicVariable "twc_nonpersistent";

twc_aosToComplete = 1;

twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["Ghufran", "Durrishahwar", "Yafiah", "Usaimah", "Johari"];
twc_LastAO = "";

twc_is90 = 1;
publicVariable "twc_is90";

twc_bluflufflist = ["Modern_British_Pointman_Light", "Modern_USMC_Rifleman", "TWC_Modern_US_Army_Rifleman", "Modern_pol_Base", "Modern_ger_mg", "Modern_British_Quartermaster", "Modern_ger_Base", "Modern_UKSF_Base", "Modern_British_Blank", "Modern_British_Blank", "Modern_British_Quartermaster"];


twc_tankcount = random 3;
twc_apccount = 1 + (random 2);
twc_ifvcount = 2 + (random 2);
twc_infcount = 2;
twc_aainfcount = 1;

customlocations = (getmarkerpos "base") nearobjects ["Land_Can_Rusty_F", worldsize * 2];


// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";