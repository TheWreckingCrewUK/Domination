//Stuff that happens on player respawnVehicle

if (["british", typeof player] call BIS_fnc_inString) then {
	_uniformitems = uniformitems player;
	player forceadduniform "UK3CB_BAF_U_Smock_MTP";
	{player additemtouniform _x} foreach _uniformitems;
	if ((headgear player) == "") then {
		player addHeadgear (["CUP_H_SLA_BeanieGreen", "CUP_H_FR_Headset"] call bis_fnc_selectrandom);
	};
} else {
	
	_uniformitems = uniformitems player;
	player forceadduniform (["CUP_U_B_BDUv2_gloves_dirty_Winter", "CUP_I_B_PMC_Unit_34", "CUP_I_B_PMC_Unit_33"] call bis_fnc_selectrandom);
	{player additemtouniform _x} foreach _uniformitems;
	
	removeheadgear player;
	player addHeadgear (["CUP_H_PASGTv2_NVG_winter", "CUP_H_PASGTv2_winter"] call bis_fnc_selectrandom);
};

#include "domination_core\client\onRespawn.sqf";
//If player isn't west then kick them. Apparently players respawning as civ is an issue?
if(side player != west)then{
	call BIS_fnc_endMission;
};

//Make sure medics are medics
if(typeOf player in ["Modern_British_Medic","Modern_USMC_Medic"])then{
	player setVariable ["ace_medical_medicClass",1];
};