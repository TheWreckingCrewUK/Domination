/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/
params ["_box"];

_boxClass = "ACE_Box_Ammo";

if (isnil "_box") then {
	_box = _boxClass createVehicle (getPos AmmoBoxSpawner);
};

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddWeaponCargoGlobal ["rhs_weap_M136",2];
_box AddMagazineCargoGlobal ["rhs_fim92_mag",1];

_box AddMagazineCargoGlobal ["ACE_SpareBarrel",1];

//supplies

_box AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag",20];
_box AddMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",5];

_box AddMagazineCargoGlobal ["UGL_FlareWhite_F",5];
_box AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",20];
_box AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",5];

_box AddMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",5];

_box AddMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];

_box AddMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP",10];
_box AddMagazineCargoGlobal ["rhsusf_8Rnd_00Buck",5];
_box AddMagazineCargoGlobal ["rhsusf_8Rnd_Slug",5];

_box AddMagazineCargoGlobal ["CUP_5Rnd_762x51_M24",10];

_box addItemCargoGlobal ["ACE_fieldDressing",20];
_box addItemCargoGlobal ["ACE_elasticBandage",20];
_box addItemCargoGlobal ["ACE_quikclot",20];
_box addItemCargoGlobal ["ACE_packingBandage",20];
_box addItemCargoGlobal ["ACE_personalAidKit",5];
_box addItemCargoGlobal ["ACE_salineIV_500",2];
_box addItemCargoGlobal ["ACE_atropine",5];
_box addItemCargoGlobal ["ACE_epinephrine",5];
_box addItemCargoGlobal ["ACE_morphine",5];
_box addItemCargoGlobal ["HandGrenade",5];
_box addItemCargoGlobal ["SmokeShell",5];
_box addItemCargoGlobal ["SmokeShellRed",2];
