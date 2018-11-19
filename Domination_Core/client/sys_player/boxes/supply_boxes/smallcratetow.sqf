/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


 if (isnil "twc_spectowcount") then {
 twc_spectowcount = (- 7200);
 publicVariable "twc_spectowcount";
 };
 
 if (twc_spectowcount > (time)) exitwith {
 
 _title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Specialist Equipment</t>"; 

 _text1 =  "<br />A TOW has already been spawned, there are currently no more available.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;
 };
 
 twc_spectowcount = time + 7200;
 publicVariable "twc_spectowcount";


_boxClass = "rhsusf_launcher_crate";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddbackpackCargoGlobal ["rhs_TOW_Tripod_Bag",1];
_box AddbackpackCargoGlobal ["rhs_Tow_Gun_Bag",1];

[_box, 5] call ace_cargo_fnc_setSize;
[_box, false, [0, 3, 1], 10] call ace_dragging_fnc_setCarryable;