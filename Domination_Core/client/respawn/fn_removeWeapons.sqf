//Deletes "illegal" weapons so you cannot pull that ammo from the arsenal.
//I probably don't care about illegal ammo and equipment
TWC_allowedfixes = ["ACE_launch_NLAW_ready_F","CUP_launch_M72A6_Loaded","CUP_launch_M136_Loaded","CUP_launch_FIM92Stinger_Loaded","CUP_launch_RPG18_Loaded",""];
[missionNamespace, "arsenalOpened", {
	_weaponList = arsenalAmmoBox call BIS_fnc_getVirtualWeaponCargo;
	_weaponList = _weaponList + TWC_allowedfixes;
	if!(primaryWeapon player in _weaponList)then{
		hint 'Deleting illegal primary weapon';
		player removeWeapon (primaryWeapon player)
	};
	if!(secondaryWeapon player in _weaponList)then{
			hint 'Deleting illegal secondary weapon';
			player removeWeapon (secondaryWeapon player)
	};
	if!(handgunWeapon player in _weaponList)then{
			hint 'Deleting illegal handgun weapon';
			player removeWeapon (handgunWeapon player)
	};
}] call BIS_fnc_addScriptedEventHandler;