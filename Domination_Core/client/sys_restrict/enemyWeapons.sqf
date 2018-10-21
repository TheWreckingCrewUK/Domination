player addEventHandler ["InventoryOpened", {
	if((getPos player) distance2D (getMarkerPos "base") < 200) then{
		if(primaryWeapon player in twc_restrictedPrimaryWeapons)then{
			player removeWeapon (primaryWeapon player);
		};
		if(secondaryWeapon player in twc_restrictedSecondaryWeapons)then{
			player removeWeapon (secondaryWeapon player);
		};
		if(handgunWeapon player in twc_restrictedHangunWeapons)then{
			player removeWeapon (handgunWeapon player);
		};
	};
}];
//need to update this to the russian AK's
_local_restrictedPrimaryWeapons = ["twc_ksvk", "CUP_srifle_SVD_des_ghillie_pso", "CUP_arifle_FNFAL", "CUP_arifle_RPK74", "CUP_lmg_PKM", "CUP_arifle_AK74_GL", "CUP_arifle_AK74", "CUP_arifle_AKM", "CUP_arifle_AKS_Gold", "CUP_arifle_AKS", "CUP_arifle_AK74"];

if(isNil "twc_restrictedPrimaryWeapons") then{
twc_restrictedPrimaryWeapons = _local_restrictedPrimaryWeapons;
publicVariable "twc_restrictedPrimaryWeapons";
} else {
{twc_restrictedPrimaryWeapons pushback _x} foreach _local_restrictedPrimaryWeapons;
publicVariable "twc_restrictedPrimaryWeapons";};

twc_restrictedSecondaryWeapons = ["CUP_launch_RPG7V"];

player addEventHandler ["Take", {
	params["_unit","_container","_item"];
		if (_item in twc_restrictedPrimaryWeapons) then {
		execvm "domination_core\client\sys_restrict\restrictedprimary.sqf";
	};
	
		if(_item in twc_restrictedSecondaryWeapons)then{
		execvm "domination_core\client\sys_restrict\restrictedsecondary.sqf";
					if (random 1>0.98) then {
			"R_60mm_HE" createVehicle (getPos player);
			hint "WEAPON DETONATION";	
			[] spawn {
			sleep 0.5;
			player removeweapon secondaryWeapon player;
			};
		};
		};

		
	
}];



player addEventHandler ["InventoryOpened", {
	params ["_unit", "_container"];
	if((getPos player) distance2D (getMarkerPos "base") > 200) exitwith {};
	if ((primaryweapon player in (player getvariable ["twc_allowedweapons", [0]])) || (primaryweapon player == "")) exitwith {};

	_goodlist = [];

	{if (_x isKindOf ["Rifle", configFile >> "CfgWeapons"]) then {_goodlist pushback _x}} foreach (player getvariable ["twc_allowedweapons", [0]]);

	player removeWeapon primaryweapon player;
	
	[_container] spawn {
	params ["_container"];
		waituntil {dialog};
		closeDialog 2;
		player action ["GEAR",_container];
	};
	
	if (_container == cratebox) then {
		player addweapon (_goodlist call bis_fnc_selectrandom);

	};
}];
