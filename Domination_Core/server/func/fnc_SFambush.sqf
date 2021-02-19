params ["_enemy"];

//if (random 1 >0.3) exitwith {};
//systemchat "SF counterattack called";

_iedpos = getpos _enemy;

	_pos = [_iedpos, 50, 400, 3, false] call twc_fnc_findsneakypos;
	
	if (((_pos distance _iedpos) < 30) || ((_pos distance _iedpos) > 410)) then {
		while {(((_pos distance _iedpos) < 90) || ((_pos distance _iedpos) > 410))} do {
			_pos = [_iedpos, 50, 400, 3, false] call twc_fnc_findsneakypos;
		};
	};
	
	
	_total = (4 + (round(4 * (random 2))));
	_group = createGroup East;
	
	
	
	for "_i" from 1 to _total do{
	
		_unit = _group createUnit [(SF select (floor random (count SF))), _pos,[], 5,"NONE"];
		_unit addEventHandler ["Killed",{
			[(_this select 0)] call twc_fnc_deleteDead;
		}];
		
		_pos = [_pos, 3, 40, 3, false] call twc_fnc_findsneakypos;
		
	};
	
	_group addwaypoint [_iedpos, 0];
	_wp = _group addwaypoint [getmarkerpos "aocentermarker", 50];

[leader _group, 2] spawn TWC_fnc_aiscramble;

_wp setWaypointStatements ["true", "[group this, getPos this, 200] call bis_fnc_taskPatrol"];

_wp setWaypointCompletionRadius 50;