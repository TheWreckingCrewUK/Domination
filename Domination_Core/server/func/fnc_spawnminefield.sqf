params ["_aopos"];

_base = missionnamespace getvariable ["twc_basepos", [0,0,0]];

_aobasedir = _aopos getdir _base;

_fieldpos = _aopos getPos [(1500 + (random 1000)), (_aobasedir + (15 - (random 30)))];

if ((_fieldpos distance _base) < 2000) exitwith {[]};

if ([_fieldpos,1500] call twc_fnc_posNearPlayers) exitwith {[]};

_minelist = [];

_num = (250 + (random 100));

_offset = random 40;
_signnum = 0;

_signcount = (20 + (random 5));
_signinterval = 360 / _signcount;

for "_i" from 1 to _signcount do {
	_signnum = _signnum + 1;
	_signpos = _fieldpos getPos [210, (((_signinterval) * _signnum) + _offset)];
	_sign = "Sign_DangerMines_ACR" createvehicle _signpos;
	_signdir = _signpos getdir _fieldpos;
	_sign setdir (_signdir + (15 - (random 30)));
};

_offset = random 40;
_signnum = 0;
for "_i" from 1 to (_signcount * 2) do {
	_signnum = _signnum + 1;
	_signpos = _fieldpos getPos [420, (((_signinterval / 2) * _signnum) + _offset)];
	_sign = "Sign_DangerMines_ACR" createvehicle _signpos;
	_signdir = _signpos getdir _fieldpos;
	_sign setdir (_signdir + (15 - (random 30)));
};

for "_i" from 1 to _num do {
	_minepos = [_fieldpos, 200] call cba_fnc_randpos;
	if (!(isOnRoad _minepos)) then {
		_minepos = _minepos vectoradd [0,0, -0.013];
	};
	_mine = "Rhs_ammo_pfm1" createvehicle _minepos;
	_minelist pushback _mine;
	
	if (hasinterface) then {
		_marker = createMarker [format ["%1", _mine], getpos _mine];
		_marker setMarkerType "mil_triangle";
		_marker setMarkerColor "ColorOrange";
		_marker setMarkerText ("Mine");
		_marker setMarkerSize [0.35, 0.35];
	};
};

for "_i" from 1 to (_num) do {
	_minepos = [_fieldpos, 400] call cba_fnc_randpos;
	if (!(isOnRoad _minepos)) then {
		_minepos = _minepos vectoradd [0,0, -0.013];
	};
	_mine = "Rhs_ammo_ptm1" createvehicle _minepos;
	_mine setdir (random 360);
	_minelist pushback _mine;
	
	if (hasinterface) then {
		_marker = createMarker [format ["%1", _mine], getpos _mine];
		_marker setMarkerType "mil_triangle";
		_marker setMarkerColor "ColorBlue";
		_marker setMarkerText ("Mine");
		_marker setMarkerSize [0.35, 0.35];
	};
};

_minelist