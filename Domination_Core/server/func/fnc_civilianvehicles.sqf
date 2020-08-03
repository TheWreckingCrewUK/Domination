//initial defines
_roadPos = 0;
_newVehicle = 0;
_selectVehicle = 0;

_amountToSpawn = 50;

_roadList = (getmarkerpos "aocentermarker") nearRoads 500;

if ((count _roadlist) < 70) then {
	_roadList = (getmarkerpos "aocentermarker") nearRoads 1000;
};

_vehicle = [];
_vehicleList = ["CUP_C_Datsun_Plain", "CUP_C_Skoda_Blue_CIV", "CUP_C_UAZ_Open_TK_CIV"];

while {(count _vehicle) < _amountToSpawn} do {
	_ran = (floor(random(count _roadList)));
	_roadPos = _roadList select _ran;
	if(_roadPos distance2D (getMarkerPos "base") > 800)then{
		_selectVehicle = _vehicleList select (floor(random(count _vehicleList)));
		_newVehicle = _selectVehicle createVehicle (getPos _roadPos);
		clearweaponcargoglobal _newVehicle;
		clearbackpackcargoglobal _newVehicle;
		clearitemcargoglobal _newVehicle;
		clearmagazinecargoglobal _newVehicle;
		_modamount = _ran -1;
		if ((random 1) < 0.5) then {
			_modamount = _ran + 1;
		};
		_road2 =(_roadList select _modamount);
		if (isnil "_road2") then {
			_road2 = (_roadList call bis_fnc_selectrandom);
		};
		_pos1 = getpos _newVehicle;
		_pos2 = getpos _newVehicle;
		_dir = ((getpos _road2) getdir (getpos _roadPos));
		_newVehicle setvariable ["t1", _dir];
		if ((_dir < 5) || (_dir > 356) || ((_dir > 176) && (_dir < 182))) then {
			_dir = (random 360);
			//systemchat "found 0";
		};
	_newVehicle setDir _dir;
		while {(isOnRoad _pos1) && (isOnRoad _pos2)} do {
			_xAxis = 3;
			_yAxis = 3;
		
			if ((random 100) > 50) then {
				_xAxis = -3;
			};
		
			if ((random 100) > 50) then {
				_yAxis = -3;
			};
		
			_newVehicle setPosATL [(getPosATL _newVehicle select 0) + _xAxis,
				(getPosATL _newVehicle select 1) + _yAxis, 0];
				
				_pos1 = [(getPosATL _newVehicle select 0) + _xAxis,(getPosATL _newVehicle select 1) + _yAxis, 0];
				_pos2 = [(getPosATL _newVehicle select 0) - _xAxis,(getPosATL _newVehicle select 1) - _yAxis, 0];
			//_newVehicle setDir (random 360);
		};
		_vehicle pushback _newVehicle;
		[_newVehicle] spawn {
			params ["_veh"];
			sleep 15;
			if (!isOnRoad _veh) then {
				deletevehicle _veh;
			};
		};
	};
};
_vehicle
