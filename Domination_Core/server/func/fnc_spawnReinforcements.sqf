/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params["_pos", "_enemylist", "_arty"];

if (isnil "_arty") then {_arty = false};

//systemchat "reinforcements called";

//systemchat format ["I see %1 with %2", _pos, _enemylist];


//_enemy = (nearestObjects [_pos, ["SoldierWB"], 5000]) select 0; 

_enemy = _enemylist call BIS_fnc_selectRandom;

//exit if the system is asking artillery to fire on its own friends
if ((_enemy distance _pos) < 400) exitwith {};

_spawnpos = [0,0,0];

_stagepos = [_pos, 1000] call CBA_fnc_randPos;





_landorair = random 1;

if (_enemy distance getmarkerpos "aoCenterMarker" > 2500) then {_landorair = 1};

_num = random 1;

//making only airdrops for the moment because land pathfinding sucks
_landorair = 1;

if (_landorair > 0.5) then {
//armour is dropped by c130, so have the same condition on this as for the c130 airdrop of infantry
	if ((_num) > 0.5) then {
		[_spawnpos, _enemy, _stagepos] spawn twc_reinforce_armourdrop;
	};
	for "_i" from 1 to 2 do {

		[_spawnpos, _enemy, _stagepos, _num] spawn twc_reinforce_airdrop;

	};
} else {

	[_spawnpos, _enemy, _stagepos, _num] spawn twc_reinforce_mechanised;
};

["twc_event_artyattack", [_enemy], twc_artyguns] call CBA_fnc_targetEvent;

