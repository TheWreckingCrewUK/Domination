/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


 if (isnil "twc_spectowsfcount") then {
 twc_spectowsfcount = (- 7200);
 publicVariable "twc_spectowsfcount";
 };
 
 if (twc_spectowsfcount > (time)) exitwith {
 
 _title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Specialist Equipment</t>"; 

 _text1 =  "<br />A TOW has already been spawned, there are currently no more available.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;
 };
  
 _title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Specialist Equipment</t>"; 

 _text1 =  "<br />A TOW has been spawned, 1 hour until another becomes available.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;

 twc_spectowsfcount = time + 3600;
 publicVariable "twc_spectowsfcount";


_boxClass = "ACE_Box_Ammo";
twc_towspawned = true;
publicvariable "twc_towspawned";
_box = _boxClass createVehicle (getPos AmmoBoxSpawner);


//simple dynamic numbers system. Assign cost of each tier and then assign a tier to an item if you want that item's amount to scale with the player count.
_players = ( count(allPlayers - entities "HeadlessClient_F"));
_low = (_players * 0.3);
_mid = _players;
_high = (_players * 2);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddWeaponCargoGlobal ["ace_compat_rhs_usf3_tow_carry",1];
_box AddWeaponCargoGlobal ["ace_csw_m220CarryTripod",1];

[player, _box] call ace_cargo_fnc_startLoadIn;
