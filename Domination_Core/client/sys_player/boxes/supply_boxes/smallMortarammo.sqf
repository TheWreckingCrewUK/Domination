/*
*    TWC public server
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


_boxClass = "UK3CB_BAF_Box_M6";

_box = _boxClass createVehicle (call twc_fnc_getammospawnloc);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//1 Mortar and Tripod

//Ammo

_box addItemCargoGlobal ["UK3CB_BAF_1Rnd_60mm_Mo_Shells",50];
_box addItemCargoGlobal ["UK3CB_BAF_1Rnd_60mm_Mo_Flare_White",10];
_box addItemCargoGlobal ["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White",20];


[player, _box] call ace_cargo_fnc_startLoadIn;