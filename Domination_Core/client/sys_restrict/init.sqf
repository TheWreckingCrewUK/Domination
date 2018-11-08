#include "enemyWeapons.sqf";
#include "noFireInBase.sqf";
#include "placedExplosives.sqf";
#include "vehicleSlots.sqf";
#include "minimi.sqf";


execvm "Domination_Core\client\sys_restrict\rolerestrictions.sqf";

execvm "Domination_Core\client\sys_restrict\sectioncount.sqf";


player addEventHandler ["Take", {
	params["_unit","_container","_item"];


if (((_item) == "UK3CB_BAF_U_RolledUniform_MTP") && ((["90", twc_missionname] call BIS_fnc_inString))) then {
	(player) setObjectTextureGlobal [0, "uk3cb_baf_equipment\backpacks\data\backpack_ddpm_co.paa"];
};
}];
