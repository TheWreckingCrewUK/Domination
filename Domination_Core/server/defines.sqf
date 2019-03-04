
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
aa = ["rhs_zsu234_aa", "CUP_O_2S6M_RU"];
};

if (isNil "radioTower") then {
radioTower = "rhs_gaz66_r142_vdv";
};

if (isNil "mortar") then {
mortar = ["rhs_2b14_82mm_vdv"];
};

if (isNil "arty") then {
arty = ["rhs_2b14_82mm_msv","rhs_2b14_82mm_msv","rhs_D30_msv", "RHS_BM21_MSV_01"];
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

twc_objnames = [
"RABBIT",
"GOOSE",
"RAVEN",
"SPARROW",
"HAWK",
"MALLARD",
"DUCK",
"YORK",
"SHEPHERD",
"VIKING",
"DOG",
"RED",
"BLUE",
"GREEN",
"ORANGE",
"YELLOW",
"BLACK",
"RAPTURE",
"ALTAIR",
"CYLON",
"SKYLANCE",
"EDEN",
"APPLE",
"BLADE",
"WHITE",
"RUBY",
"PLATINUM",
"PHOENIX",
"CENTAUR",
"DRUID",
"PIXIE",
"DUST",
"GRYPHON",
"FREYA",
"JORMUNGAND",
"COCOA",
"NESTLE",
"ICARUS",
"PHAEROH",
"DALEK",
"PICARD",
"RIKER",
"KILO",
"ECHO",
"HOURGLASS",
"BATMAN",
"ROBIN",
"MARCOS",
"RIO",
"ARTEMIS",
"LUCY",
"ROOT",
"HOLLY",
"SHORT",
"IVY",
"CAMBRIDGE",
"OXFORD",
"ASHFORD",
"GOLD",
"SILVER",
"BRONZE",
"PIPER",
"STARDUST",
"PICKFORD",
"MERCURY",
"VENUS",
"MARS",
"JUNIPER",
"SATURN",
"JUPITER",
"CERES",
"TITAN",
"MOON",
"SUN",
"PINE",
"ALMOND",
"CUSTARD",
"BUTTER",
"HOMER",
"NARNIA",
"ASLAN",
"SHETLAND",
"RAPIER",
"FENCER",
"BATTLEAXE",
"WARHAMMER",
"DRAGON",
"WYVERN",
"DEMON",
"HADES",
"HERCULES",
"KRATOS",
"ARYA",
"STARK",
"LIONHEART",
"FURY",
"MALICE",
"LANNISTER",
"CYPRUS",
"WESTLAND",
"WEST",
"EAST",
"NORTH",
"SOUTH",
"HOWLER",
"HARPY",
"SKYLARK",
"TEMPEST",
"INTRUDER",
"HORNET",
"RHINO",
"WILDCAT",
"LYNX",
"BOBCAT",
"TIMBERWOLF",
"FORD",
"ENFIELD",
"COLT",
"HOG",
"CHLOE",
"STEADFAST",
"COKE",
"KING",
"QUEEN",
"PRINCE",
"ANTHRACITE",
"PHOSPHORUS",
"COAL",
"DIAMOND",
"CAMERON",
"ELI",
"PHILLIPS",
"BARBER",
"CARPENTER",
"BLACKSMITH",
"HELLMOUTH",
"MOUNTAIN",
"RIDGE",
"FRACTURE",
"PHANTOM",
"FROST",
"ICE",
"FIREFLY",
"TOUCAN",
"LOYAL",
"TYRANT",
"SPITFIRE",
"CHURCHILL",
"MATILDA",
"STEWART",
"BELLTOWER",
"NORMANDY",
"AEGIS",
"ATHENA",
"ILIAD",
"LIGHTNING",
"THUNDER",
"RAIN",
"SMOKE",
"FLARE",
"CROSS",
"PERSIA",
"CHIP",
"GRASS",
"ROCK",
"WIND",
"FIRE",
"SPARK",
"CALCIUM",
"CHROMITE",
"CEASAR",
"CARRIER",
"BRAVE",
"MERIDA",
"BEAR",
"SPIKE",
"TRAPPER",
"MERCY",
"RICH",
"PRIEST",
"CARDINAL",
"DEACON"];
