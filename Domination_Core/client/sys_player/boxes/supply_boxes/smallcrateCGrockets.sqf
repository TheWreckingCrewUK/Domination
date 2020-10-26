/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/


if (!(["uksf", typeof player] call BIS_fnc_inString)) then {
	 if (isnil "twc_cgtubetimeout") then {
	 twc_cgtubetimeout = - 3600;
	 publicVariable "twc_cgtubetimeout";
	 };
	 
	if ((twc_cgtubetimeout > (time))) exitwith {

		_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Carl Gustav Rockets</t>";
		_text1 = format ["<br />The CG Rocket spawner is on cooldown currently. %1 minutes remaining.<br /><br />Note: NLAWs and AT4s are not restricted in this manner.", (ceil ( (twc_cgtubetimeout-time) / 60))];
		hint parsetext (_title + _text1);
		while {(twc_cgtubetimeout-time) > 0} do {
			sleep 20;
		};
		

		_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Heavy AT Spawner</t>";
		_text1 = "<br />More Carl Gustav Rockets are now available from the spawner";
		hint parsetext (_title + _text1);
		
	};

	_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Heavy AT Spawner</t>";
	_text1 = "<br />The Rockets have been spawned. 1 hour remaining until more become available";
	hint parsetext (_title + _text1);

	twc_cgtubetimeout = (time + 3600);
	 publicVariable "twc_cgtubetimeout";
};
_boxClass = "twc_public_launcherbox_small_maaws";

_box = _boxClass createVehicle (call twc_fnc_getammospawnloc);

clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearitemCargoGlobal _box;

//Weapons
_box AddMagazineCargoGlobal ["rhs_mag_maaws_HEAT",6];
_box AddMagazineCargoGlobal ["rhs_mag_maaws_HE",2];

