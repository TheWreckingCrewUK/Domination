//This file defines all of the units used. To change to a new map you mostly only have to change this file.

//Enable or Disable Debug
twc_serverDebug = false;

twc_surrenderVote = false;

_script = execVM "Domination_Core\SHK_pos\shk_pos_init.sqf";
waitUntil{scriptDone _script};

twc_maxObjDistance = 40000;

twc_armourcount = -100;
publicVariable "twc_armourcount";


tank = ["rhs_t90a_tv","rhs_t80uk","rhs_t80bvk"];

ifv = ["rhs_bmp3_late_msv", "rhs_bmp3mera_msv", "rhs_bmp2k_msv"];

apc = ["rhs_btr80a_vv"];

aa = ["CUP_O_BMP2_ZU_TKA", "CUP_O_ZSU23_SLA"];

twc_tankcount = 8 + (random 5);
twc_apccount = 2 + (random 3);
twc_ifvcount = 4 + (random 5);
twc_infcount = 0;
twc_aainfcount = 0;

radioTower = "Land_Antenna";
//add in an object name and the game will create a location there and spawn enemies from it
customlocations = [c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9];

twc_skipsectionsystem = 1;
publicVariable "twc_skipsectionsystem";

	twc_is90 = 1;
	publicVariable "twc_is90";

twc_aosToComplete = 3;
twc_enemyFlag = "Faction_CUP_RU";
twc_badAOs = ["airfield","Loy manara","Jaza","sultansafe","loy manara oilfield","iedrestrictionzone","Bosquet","Faro","Guran","Feas"];
twc_LastAO = "";

// event handlers run in the non-scheduled environment (can't be execVM)
[] call compile preprocessFile "Domination_Core\server\init.sqf";