/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


_boxClass = "ACE_Box_Ammo";

params ["_box"];
if (isnil "_box") then {
	_box = _boxClass createVehicle (call twc_fnc_getammospawnloc);
	clearWeaponCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearitemCargoGlobal _box;
};

//Weapons
_box AddWeaponCargoGlobal ["CUP_launch_M72A6",2];


_box AddMagazineCargoGlobal ["ACE_SpareBarrel",1];

//supplies
_box AddMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd_T",5];

_box AddMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
_box AddMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",5];

_box AddMagazineCargoGlobal ["UGL_FlareWhite_F",5];
_box AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];
_box AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",5];

_box AddMagazineCargoGlobal ["UK3CB_BAF_556_200Rnd_T",8];

_box AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd_T",2];
_box AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd",7];

_box AddMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",8];
_box AddMagazineCargoGlobal ["UK3CB_BAF_12G_Pellets",8];
_box AddMagazineCargoGlobal ["UK3CB_BAF_12G_Slugs",8];


_box addItemCargoGlobal ["ACE_fieldDressing",15];
_box addItemCargoGlobal ["ACE_elasticBandage",15];
_box addItemCargoGlobal ["ACE_quikclot",15];
_box addItemCargoGlobal ["ACE_packingBandage",15];
_box addItemCargoGlobal ["ACE_personalAidKit",1];
_box addItemCargoGlobal ["ACE_salineIV_500",4];
_box addItemCargoGlobal ["ACE_atropine",5];
_box addItemCargoGlobal ["ACE_epinephrine",5];
_box addItemCargoGlobal ["ACE_morphine",5];
_box addItemCargoGlobal ["HandGrenade",2];
_box addItemCargoGlobal ["SmokeShell",2];
_box addItemCargoGlobal ["SmokeShellRed",2];
