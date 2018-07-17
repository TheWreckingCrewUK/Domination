/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params[""];
[] spawn {
	if (twc_aosToComplete == 0)exitWith{sleep 30;"Won" call BIS_fnc_endMissionServer};
};
twc_aosToComplete = twc_aosToComplete - 1;


_true = true;
_name = "";
_town = "";

while {_true}do{
	_true = false;
	_town =(townLocationArray call bis_fnc_selectRandom);
	_name = text _town;
	
	if(_name in twc_badAOs)then{_true = true};
	if(_name == twc_LastAO)then{_true = true};
	if([getpos _town ,2500] call twc_fnc_posNearPlayers)then{_true = true};
};

_pos = getPos _town;
[_pos,_name] spawn twc_fnc_ao;