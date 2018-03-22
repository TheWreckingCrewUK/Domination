/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params["_pos", "_enemylist"];


_spawnPos = [_pos,[700,800],random 360,0] call SHK_pos;
_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
_patrolPos = [_pos,[0,200],random 360,0] call SHK_pos;
[_group, _patrolPos, 200] call cba_fnc_taskPatrol;

 _artylist = (nearestObjects [_pos, [artyspawn], 5000]);  
//_enemy = (nearestObjects [_pos, ["SoldierWB"], 5000]) select 0; 

_enemy = _enemylist call BIS_fnc_selectRandom;



for "_i" from 1 to twc_infcount do {
	_spawnPos = [_pos,[0,250],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	
	
 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos; 
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30; 
 [_group, 5] setWaypointType "CYCLE"; 
	
	
};


{_x setvehicleammo 1;
_wp1 = group _x addWaypoint [[_enemy, 100] call CBA_fnc_randPos,20];
_wp1 setWaypointType "SCRIPTED";
 _wp1 setWaypointScript "A3\functions_f\waypoints\fn_wpArtillery.sqf";

 } foreach _artylist;