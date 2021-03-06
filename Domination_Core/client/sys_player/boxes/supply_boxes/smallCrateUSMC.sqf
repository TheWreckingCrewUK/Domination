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
};
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddWeaponCargoGlobal ["CUP_launch_M136",2];

_box AddMagazineCargoGlobal ["ACE_SpareBarrel",1];

//supplies
_box AddMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1];
_box AddMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",4];


_box AddMagazineCargoGlobal ["30Rnd_556x45_Stanag",20];
_box AddMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",10];

_box AddMagazineCargoGlobal ["CUP_SMAW_HEAA_M",6];
_box AddMagazineCargoGlobal ["CUP_SMAW_HEDP_M",6];
_box AddMagazineCargoGlobal ["CUP_SMAW_Spotting",3];

_box AddMagazineCargoGlobal ["UGL_FlareWhite_F",10];
_box AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];
_box AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",10];

_box AddMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",3];
_box AddMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",5];

_box AddMagazineCargoGlobal ["CUP_7Rnd_45ACP_1911",20];
_box AddMagazineCargoGlobal ["CUP_8Rnd_B_Beneli_74Pellets",5];
_box AddMagazineCargoGlobal ["CUP_8Rnd_B_Beneli_74Slug",5];

_box AddMagazineCargoGlobal ["ACE_20Rnd_762x51_M118LR_Mag",5];

_box AddMagazineCargoGlobal ["CUP_6Rnd_HE_M203",2];

_box addItemCargoGlobal ["ACE_fieldDressing",5];
_box addItemCargoGlobal ["ACE_elasticBandage",5];
_box addItemCargoGlobal ["ACE_quikclot",5];
_box addItemCargoGlobal ["ACE_packingBandage",5];
_box addItemCargoGlobal ["ACE_personalAidKit",1];
_box addItemCargoGlobal ["ACE_salineIV_500",4];
_box addItemCargoGlobal ["ACE_atropine",5];
_box addItemCargoGlobal ["ACE_epinephrine",5];
_box addItemCargoGlobal ["ACE_morphine",5];
_box addItemCargoGlobal ["HandGrenade",2];
_box addItemCargoGlobal ["SmokeShell",2];
_box addItemCargoGlobal ["SmokeShellRed",2];
