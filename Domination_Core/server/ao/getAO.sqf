/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/

sleep 10;
if (aosToComplete == 0)exitWith{"Won" call BIS_fnc_endMissionServer};
//Doing a while do cause it is much less bad code.
TWC_aoStarted = false;
while{!TWC_aoStarted}do{
	_rand = round (random townNumber);
	if(_rand != 0)then{
		_pos = getPos (townLocationArray select _rand);
		_name = text (townLocationArray select _rand);
		//somehow this was a call before, but could never work
		[_pos, _name] spawn TWC_Domination_fnc_ao;
	};
	sleep 5;
};

/*
_rand = round (random townNumber);
if(_rand == 0)exitWith {execVM "Domination_Core\server\ao\getAO.sqf"};
_pos = getPos (townLocationArray select _rand);
_name = text (townLocationArray select _rand);

//Multiple safety checks
if(!isNil _name)exitWith{execVM "Domination_Core\server\ao\getAO.sqf";};
if(_name in badAOs)exitWith {execVM "Domination_Core\server\ao\getAO.sqf";};
if(_name == lastAO)exitWith {execVM "Domination_Core\server\ao\getAO.sqf";};
[_pos, _name] call TWC_Domination_fnc_ao;
aosToComplete = aosToComplete - 1;