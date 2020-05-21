/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/

_boxClass = "ACE_Box_Ammo";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);




clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddMagazineCargoGlobal ["ace_compat_rhs_usf3_mag_TOW2A",3];
_box AddMagazineCargoGlobal ["ace_compat_rhs_usf3_mag_TOW2",3];



[player, _box] call ace_cargo_fnc_startLoadIn;

