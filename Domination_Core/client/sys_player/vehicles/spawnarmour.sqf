params["_heli"];

if(isNil "_heli")exitWith{hint "No heli was given to the spawn system, please notify management"};

if (isnil "twc_armourcount") then {twc_armourcount = -10;
publicVariable "twc_armourcount";};

if (twc_armourcount > 1) exitwith {hint "There are no more armoured vehicles available"};

//pre spawn file to change classname to woodland/desert versions if necessary
#include "armourspecifics_prespawn.sqf";

_veh = _heli createvehicle getpos ammoboxspawner;

twc_armourcount = twc_armourcount +1;
publicVariable "twc_armourcount";

_armourcrew = ["Modern_British_VehicleCrew",
 "Modern_British_VehicleCommander",
 "Modern_USMC_VehicleCommander",
 "Modern_USMC_VehicleCrew",
 "1990_British_Vehicle_Commander",
 "1990_British_Vehicle_Crew",
 "1990_British_Tank_Commander_Desert",
 "1990_British_Tank_Crew_Desert",
 "2000_British_Vehicle_Commander",
 "2000_British_Vehicle_Crew"];
	
	if (typeof _veh == "rhsusf_M1117_D") then {
[
	_veh,
	["desert",1], 
	["DUKE_Hide",1]
] call BIS_fnc_initVehicle;
};
	_crewcount = 0;

	{if (typeof _x in _armourcrew) then {_crewcount = _crewcount + 1;}} foreach units group player;
	group player setvariable ["armourcount", _crewcount, true];
		if ((group player getvariable ["armourcount", 3]) == 0) then {
			group player setvariable ["twc_ismechanised", 0, true];
		};


_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

twc_armourcount = twc_armourcount -1;
publicVariable "twc_armourcount";
},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;


_veh addEventHandler ["Killed",{

twc_armourcount=twc_armourcount - 0.5;
publicVariable "twc_armourcount";
	}];
	
if ((["90", twc_missionname] call BIS_fnc_inString) || (["00", twc_missionname] call BIS_fnc_inString)) then {

_veh AddWeaponCargoGlobal ["UK3CB_BAF_L85A1_SUSAT3D_Lazer",1];
_veh AddMagazineCargoGlobal ["UK3CB_BAF_556_30Rnd",2];
};

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;	

#include "armourspecifics.sqf";