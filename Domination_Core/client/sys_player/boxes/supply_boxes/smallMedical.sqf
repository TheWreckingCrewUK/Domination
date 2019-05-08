/*
*    TWC public server
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


_boxClass = "twc_public_medicalbox_small";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Medical supplies
_box addItemCargoGlobal ["ACE_fieldDressing",30];
_box addItemCargoGlobal ["ACE_elasticBandage",30];
_box addItemCargoGlobal ["ACE_quikclot",20];
_box addItemCargoGlobal ["ACE_packingBandage",30];
_box addItemCargoGlobal ["ACE_personalAidKit",1];
_box addItemCargoGlobal ["TWC_Item_Medical_SutureKit_20",1];
_box addItemCargoGlobal ["ACE_salineIV_500",10];
_box addItemCargoGlobal ["ACE_salineIV_250",10];
_box addItemCargoGlobal ["ACE_atropine",15];
_box addItemCargoGlobal ["ACE_epinephrine",15];
_box addItemCargoGlobal ["ACE_morphine",15];
