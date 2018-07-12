
if (isNil "tank") then {
	tank = ["rhs_t72ba_tv"];
};

if (isNil "ifv") then {
ifv = ["rhs_bmp1_msv"];
};

if (isNil "apc") then {
apc = ["rhs_btr70_msv"];
};

if (isNil "squad") then {
squad = (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry_emr" >> "rhs_group_rus_msv_infantry_emr_squad");
};

if (isNil "squadAT") then {
squadAT = (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry_emr" >> "rhs_group_rus_msv_infantry_emr_section_AT");
};

if (isNil "squadAA") then {
squadAA = (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry_emr" >> "rhs_group_rus_msv_infantry_emr_section_AA");
};

if (isNil "aa") then {
aa = ["rhs_zsu234_aa"];
};

if (isNil "radioTower") then {
radioTower = "rhs_gaz66_r142_vdv";
};

if (isNil "mortar") then {
mortar = ["rhs_2b14_82mm_vdv"];
};

if (isNil "arty") then {
arty = ["RHS_BM21_MSV_01", "rhs_2b14_82mm_msv"];
};

if (isNil "tankaaCombined") then {
tankaaCombined = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Armored" >> "OIA_TankPlatoon_AA");
};

if (isNil "enemyFlag") then {
enemyFlag = "rhs_flag_Russia";
};

if (isNil "bunkerMarkerClass") then {
bunkerMarkerClass = "n_unknown";
};

if (isNil "lightheli") then {
lightheli = ["RHS_Mi8MTV3_heavy_vdv", "RHS_Mi8MTV3_heavy_vvs"] call BIS_fnc_selectRandom;
};

if (isNil "heavyheli") then {
heavyheli = ["CUP_O_Mi24_D_Dynamic_SLA", "CUP_O_Mi24_D_Dynamic_TK"] call BIS_fnc_selectRandom;
};

if (isNil "jet") then {
jet = ["RHS_Su25SM_vvs"] call BIS_fnc_selectRandom;
};
