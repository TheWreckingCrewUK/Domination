_heli = "B_Quadbike_01_F";
_veh = _heli createvehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;

_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Quad Bike Spawner</t>"; 

 _text1 =  "<br />The Quad Bike Has Been Spawned. It can fit inside one of the MRAPs";
_spawntext = parsetext (_title + _text1);
hint _spawntext;


_veh AddWeaponCargoGlobal ["CUP_launch_M136",3];
_veh addItemCargoGlobal ["SmokeShell",3];
_veh addItemCargoGlobal ["ACE_fieldDressing",10];
_veh addItemCargoGlobal ["ACE_elasticBandage",5];
_veh addItemCargoGlobal ["ACE_quikclot",5];
_veh addItemCargoGlobal ["ACE_tourniquet",2];
_veh addItemCargoGlobal ["ACE_morphine",2];



[_veh, 1] call ace_cargo_fnc_setSpace;
//_veh setvariable ["ace_cargo_loaded", ["ACE_Wheel"], true];