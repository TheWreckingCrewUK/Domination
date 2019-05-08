/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/

if (!(["uksf", typeof player] call BIS_fnc_inString)) then {
	 if (isnil "twc_javtubetimeout") then {
	 twc_javtubetimeout = - 3600;
	 publicVariable "twc_javtubetimeout";
	 };
	 
	if ((twc_javtubetimeout > (time))) exitwith {

		_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Heavy AT Spawner</t>";
		_text1 = format ["<br />The Heavy AT spawner is on cooldown currently. %1 minutes remaining.<br /><br />Note: NLAWs and AT4s are not restricted in this manner.", (ceil ( (twc_javtubetimeout-time) / 60))];
		hint parsetext (_title + _text1);
		while {(twc_javtubetimeout-time) > 0} do {
			sleep 20;
		};
		

		_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Heavy AT Spawner</t>";
		_text1 = "<br />More Heavy AT Rockets are now available from the spawner";
		hint parsetext (_title + _text1);
		
	};

	hint "The Tubes have been spawned. 1 hour remaining until more become available";

	twc_javtubetimeout = (time + 900);
	 publicVariable "twc_javtubetimeout";
};
_boxClass = "twc_public_launcherbox_small_jav";

_box = _boxClass createVehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddWeaponCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",2];

