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


//supplies
_box AddMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd_T",10];

[player, _box] call ace_cargo_fnc_startLoadIn;