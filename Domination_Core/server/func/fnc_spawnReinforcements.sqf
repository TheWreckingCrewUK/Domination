/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params["_pos"];

_spawnPos = [_pos,[700,800],random 360,0] call SHK_pos;
_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
_patrolPos = [_pos,[0,200],random 360,0] call SHK_pos;
[_group, _patrolPos, 200] call cba_fnc_taskPatrol;