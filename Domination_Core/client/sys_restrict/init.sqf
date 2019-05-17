#include "enemyWeapons.sqf";
#include "noFireInBase.sqf";
#include "placedExplosives.sqf";
#include "vehicleSlots.sqf";
#include "heavybackpacks.sqf";
#include "minimi.sqf";


execvm "Domination_Core\client\sys_restrict\rolerestrictions.sqf";

execvm "Domination_Core\client\sys_restrict\sectioncount.sqf";


player addEventHandler ["Take", {
	params["_unit","_container","_item"];


if (((_item) == "UK3CB_BAF_U_RolledUniform_MTP") && ((["90", twc_missionname] call BIS_fnc_inString))) then {
	(player) setObjectTextureGlobal [0, "uk3cb_baf_equipment\backpacks\data\backpack_ddpm_co.paa"];
};
}];


twc_fnc_legitgroup = {
	[] spawn {
		_group = group player;
		//legit group system
		_group setvariable ["twc_teamrestrictedgrp", 0, true];

		waituntil {((_group getVariable ["twc_attachrestrictedgrp",1]) == 0)};
		_group setvariable ["twc_legitgrp", (time), true];
		
		//last man, to de-legit the group when leaving
		[{(count units (_this select 0)) == 1}, {(_this select 0) setvariable ["twc_legitgrp", time - 36000 + 900, true]}, [_group]] call CBA_fnc_waitUntilAndExecute;
	};
};