/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


_timer = (group player) getvariable ["twc_lasttowspawn", -9999];
 
 if (_timer > (time - 3600)) exitwith {
 
 _title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Specialist Equipment</t>"; 

 _text1 =  "<br />A TOW has already been spawned, there are currently no more available.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;
 };
 
 _title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Specialist Equipment</t>"; 

 _text1 =  "<br />A TOW has been spawned, 1 hour until another becomes available.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;
(group player) setvariable ["twc_lasttowspawn", time + 3600, true];



_boxClass = "ACE_Box_Ammo";

_box = _boxClass createVehicle (call twc_fnc_getammospawnloc);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons

_box AddWeaponCargoGlobal ["ace_csw_m220CarryTripod",1];

[_box, 5] call ace_cargo_fnc_setSize;
//[_box, false, [0, 3, 1], 10] call ace_dragging_fnc_setCarryable;