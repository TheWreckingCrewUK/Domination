
if (isNil "tank") then {
	tank = ["CUP_O_T72_RU"];
};

if (isNil "ifv") then {
ifv = ["CUP_I_BMP1_TK_GUE"];
};

if (isNil "apc") then {
apc = ["CUP_O_BTR60_Green_RU"];
};

if (isNil "squad") then {
squad = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_EMR" >> "CUP_O_RU_InfSquad_EMR");
};

if (isNil "SF") then {
SF = ["CUP_O_RUS_SpecOps", "CUP_O_RUS_SpecOps_SD", "CUP_O_RUS_SpecOps_Scout", "CUP_O_RUS_Soldier_TL", "CUP_O_RUS_Soldier_GL"];
SF = ["TWC_Russian_SF_MG", "TWC_Russian_SF_SMG", "TWC_Russian_SF_SL", "TWC_Russian_SF_Base", "TWC_Russian_SF_Base"];
};

if (isNil "squadAT") then {
squadAT = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_EMR" >> "CUP_O_RU_InfSection_AT_EMR");
};
 
if (isNil "squadAA") then {
squadAA = (configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_EMR" >> "CUP_O_RU_InfSection_AA_EMR");
};

if (isNil "aa") then {
aa = ["CUP_O_ZSU23_SLA", "CUP_O_2S6M_RU"];
};

if (isNil "radioTower") then {
radioTower = "CUP_O_BRDM2_HQ_RUS";
};

if (isNil "mortar") then {
mortar = ["CUP_O_2b14_82mm_RU"];
};

if (isNil "arty") then {
arty = ["CUP_O_2b14_82mm_RU","CUP_O_2b14_82mm_RU","CUP_O_D30_RU", "CUP_O_BM21_RU"];
};

if (isNil "tankaaCombined") then {
tankaaCombined = (configfile >> "CfgGroups" >> "East" >> "OPF_F" >> "Armored" >> "OIA_TankPlatoon_AA");
};

if (isNil "enemyFlag") then {
enemyFlag = "flag_Russia";
};

if (isNil "bunkerMarkerClass") then {
bunkerMarkerClass = "n_unknown";
};

if (isNil "lightheli") then {
lightheli = ["CUP_O_Mi8_RU", "CUP_O_Mi8AMT_RU"] call BIS_fnc_selectRandom;
};

if (isNil "heavyheli") then {
heavyheli = ["CUP_O_Mi24_D_Dynamic_SLA", "CUP_O_Mi24_D_Dynamic_TK"] call BIS_fnc_selectRandom;
};

if (isNil "jet") then {
jet = ["CUP_O_Su25_Dyn_RU"] call BIS_fnc_selectRandom;
};




if (isNil "twc_objnames") then {
twc_objnames = [
"RABBIT",
"GOOSE",
"RAVEN",
"SPARROW",
"HAWK",
"MALLARD",
"DUCK",
"BUSTER",
"FIDO",
"PATH",
"HEX",
"NAPALM",
"CHERRY",
"LINCOLN",
"SHRIKE",
"YORK",
"SHEPHERD",
"VIKING",
"VALKYRIE",
"NIGHTMARE",
"DREAMER",
"STARLIGHT",
"STARFIRE",
"VALHALLA",
"GOOSE",
"ATRIOX",
"FANDANGO",
"FLAMENCO",
"TANGO",
"NUTMEG",
"SHADOW",
"TAILS",
"SONIC",
"SCREWDRIVER",
"HAMMER",
"HALO",
"HAVOC",
"RUIN",
"STRAWBERRY",
"CURSE",
"CHEVROLET",
"PONTIAC",
"MISTBORN",
"CRIMSON",
"SAPPHIRE",
"COPPER",
"PENGUIN",
"STEEL",
"DOG",
"RED",
"BLUE",
"GREEN",
"ORANGE",
"YELLOW",
"BLACK",
"RATCHET",
"SPYRO",
"SARAH",
"SARACEN",
"EXCALIBUR",
"WINTERFELL",
"WHITERUN",
"STORMCLOAK",
"THOR",
"WINTER",
"SNOW",
"MJOLNIR",
"LOKI",
"BRIGHT",
"SABRE",
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
"BUFFALO",
"MOOSE",
"GRYPHON",
"FREYA",
"JORMUNGAND",
"JADOTVILLE",
"COCOA",
"NESTLE",
"POKEMON",
"PIKACHU",
"CHARIZARD",
"GODZILLA",
"ICARUS",
"CHOPIN",
"BACH",
"BEETHOVEN",
"MOZART",
"TCHAIKOVSKY",
"NEWCASTLE",
"FIRESTARTER",
"PRODIGY",
"FIRESTORM",
"SMOKELANCE",
"WIPEOUT",
"FEISAR",
"PHAEROH",
"DALEK",
"PICARD",
"RIKER",
"TUVOK",
"KILO",
"ECHO",
"HOURGLASS",
"BATMAN",
"JOKER",
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
"ASH",
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
"DEFIANCE",
"ENTERPRISE",
"VOYAGER",
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
"ZEUS",
"HERCULES",
"HERACLES",
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
"WRAITH",
"HARPY",
"SKYLARK",
"TEMPEST",
"INTRUDER",
"HORNET",
"RHINO",
"WILDCAT",
"LYNX",
"BOBCAT",
"CORSAIR",
"TIMBERWOLF",
"WOLVERINE",
"MAGNETO",
"WOLF",
"DOUGLASS",
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
"MULTIPASS",
"WILDFIRE",
"COUGAR",
"HARRIS",
"BANTAM",
"SKYWARD",
"EAGLE",
"PANTHER",
"NIMITZ",
"MIDWAY",
"YORKTOWN",
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

};
