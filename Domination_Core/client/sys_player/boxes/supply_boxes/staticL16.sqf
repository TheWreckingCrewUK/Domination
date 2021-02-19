/*
*    TWC public server
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/

_boxClass = "groundWeaponHolder"; 
 
_box = _boxClass createVehicle (call twc_fnc_getammospawnloc);



//_box addWeaponCargoGlobal ["UK3CB_BAF_L16",1];
//_box addWeaponCargoGlobal ["UK3CB_BAF_L16_Tripod",1];
_box addWeaponCargoGlobal ["CUP_m252_carry",1];
_box addWeaponCargoGlobal ["ace_csw_carryMortarBaseplate",1];

_boxClass = "TWC_Public_AmmoBox_medium";

_box = _boxClass createVehicle (call twc_fnc_getammospawnloc);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

_box addItemCargoGlobal ["ACE_artilleryTable",1];
_box addItemCargoGlobal ["ACE_1Rnd_82mm_Mo_HE",6];
//ACE_1Rnd_82mm_Mo_Illum
//ACE_1Rnd_82mm_Mo_HE
//ace_csw_carryMortarBaseplate
//CUP_m252_carry