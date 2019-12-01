/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params[""];
[] spawn {
	if (twc_aosToComplete == 0)exitWith{sleep 30;"Won" call BIS_fnc_endMissionServer;
sleep 1;
[player,0] remoteExec ["setvehicleammo"];};
	twc_aosToComplete = twc_aosToComplete - 1;
	publicVariable "twc_aosToComplete";
};

if (twc_aosToComplete > 0) then {

	_true = true;
	_name = "";
	_town = "";
	_tname = "";

	while {_true}do{
		_true = false;
		_town =(townLocationArray call bis_fnc_selectRandom);
		_tname = str _town;
		_name = "Objective " + (twc_objnames call bis_fnc_selectrandom);
		if(_tname in twc_badAOs)then{_true = true};
		if(_tname in (missionnamespace getvariable ["twc_prevaos", []]))then{_true = true};
		if(_tname == twc_LastAO)then{_true = true};
		if([_town ,2500] call twc_fnc_posNearPlayers)then{_true = true};
	};

	townLocationArray deleteat (townLocationArray find _town);

	_pos = _town;
	[_pos,_name,_tname] spawn twc_fnc_ao;
};