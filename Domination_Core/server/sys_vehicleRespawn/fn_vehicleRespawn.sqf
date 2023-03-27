/*
* Author: [TWC] jayman
* Function for Vehicle Respawn using event handlers for minimal lag
*
* Arguments:
* 0: Vehicle <Object>
*
* Return Value:
* <NONE>
*
* Example:
* [veh1] spawn twc_fnc_vehicleRespawn;
*
* Public: No
*/
params["_veh"];

if(isNil "_veh")exitWith{hint "TWC_Domination_fnc_vehicleRespawn was not given a vehicle. Exiting..."};

_veh setVariable ["twc_cacheDisabled",true];

if(isNil {_veh getVariable "respawnInfo"})then{
	_weapons = getWeaponCargo _veh;
	_items = getitemCargo _veh;
	_magazines = getmagazineCargo _veh;
	_backpacks = getBackpackCargo _veh;

	_veh setVariable ["respawnInfo",[(typeOf _veh),(getPosASL _veh),(getDir _veh),_weapons,_items,_magazines,_backpacks],true];
};

//This is a check if it gets abandoned
_veh addEventHandler ["GetOut",{
	_veh = _this select 0;
	
	//Doesn't run if a player abandones a vehicle in base
	if((getPos _veh) distance2D ((_veh getVariable "respawnInfo") select 1) < 50) exitWith{};
	if((getPos _veh) distance2D (getMarkerPos "respawn_forwardBase") < vehicleRespawnDistanceForwardBase) exitWith{};
	
	//Doesn't run if other players are still in the vehicle
	if(str (fullCrew _veh) != "[]")exitWith{};
	
	[_veh]spawn{
		params["_veh"];
		_time = time + vehicleRespawnDelay;
		//Waits until players get back or get too far away
		waitUntil{_time < time || !([_veh,vehicleRespawnDistancePlayers] call CBA_fnc_nearPlayer)};
		
		if(str (fullCrew _veh) != "[]")then{
			//Do nothing
			
		}else{
			deleteVehicle _veh;
		};
	};
}];

//Respawn when killed
_veh addEventHandler ["Killed",{
	params["_veh"];
	
	[_veh] spawn{
		params["_veh"];
		
		_respawnInfo = _veh getVariable "respawnInfo";
		//If destroyed in base delete first so it doesn't constantly explode
		if(getPos _veh distance2D getMarkerPos "respawn_west" > 150)then{
			[_veh]spawn{waitUntil {!([(_this select 0),200] call CBA_fnc_nearPlayer)};
			deleteVehicle (_this select 0)};
		}else{
			deleteVehicle _veh;
		};
		sleep 2;
		_veh = (_respawnInfo select 0) createVehicle (_respawnInfo select 1);
		_veh setPosASL (_respawnInfo select 1);
		_veh setDir (_respawnInfo select 2);
		clearWeaponCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
		{
			_veh addweaponCargoGlobal [_x,_respawnInfo select 3 select 1 select _forEachIndex];
		}forEach (_respawnInfo select 3 select 0);
		{
			_veh addItemCargoGlobal [_x,_respawnInfo select 4 select 1 select _forEachIndex];
		}forEach (_respawnInfo select 4 select 0);
		{
			_veh addmagazineCargoGlobal [_x,_respawnInfo select 5 select 1 select _forEachIndex];
		}forEach (_respawnInfo select 5 select 0);
		{
			_veh addbackpackCargoGlobal [_x,_respawnInfo select 6 select 1 select _forEachIndex];
		}forEach (_respawnInfo select 6 select 0);
		
		_veh setVariable ["respawnInfo",_respawnInfo];		
		[_veh] call TWC_Domination_fnc_vehicleRespawn;
	};
}];

//Need this because of the possibility of cleanup script deleting it
_veh addEventHandler ["Deleted", {
	params ["_veh"];
	//Check if killed so it doesn't double run after killed event handler
	if(!alive _veh)exitWith{};
	
	_respawnInfo = _veh getVariable "respawnInfo";
	
	_veh = (_respawnInfo select 0) createVehicle (_respawnInfo select 1);
	_veh setPosASL (_respawnInfo select 1);
	_veh setDir (_respawnInfo select 2);
	clearWeaponCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearItemCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
	{
		_veh addweaponCargoGlobal [_x,_respawnInfo select 3 select 1 select _forEachIndex];
	}forEach (_respawnInfo select 3 select 0);
	{
		_veh addItemCargoGlobal [_x,_respawnInfo select 4 select 1 select _forEachIndex];
	}forEach (_respawnInfo select 4 select 0);
	{
		_veh addmagazineCargoGlobal [_x,_respawnInfo select 5 select 1 select _forEachIndex];
	}forEach (_respawnInfo select 5 select 0);
	{
		_veh addbackpackCargoGlobal [_x,_respawnInfo select 6 select 1 select _forEachIndex];
	}forEach (_respawnInfo select 6 select 0);
	
	_veh setVariable ["respawnInfo",_respawnInfo];		
	[_veh] call TWC_Domination_fnc_vehicleRespawn;
}];