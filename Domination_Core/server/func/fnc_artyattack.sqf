params ["_targetpos"];


if (isnil "twc_artyguns") exitwith {};
//systemchat format ["%1", twc_artyguns];
{

[_targetpos, _x] spawn {

params ["_targetpos", "_x"];

//sleep 10 + (random 30);

_total = 5 +(random 7);

_x lookat objnull;

_x setvehicleammo 1;
sleep random 5;

	if ((_x distance _targetpos) > 8000) exitwith {
	//systemchat "out of range"
	};

	_radius = (_x distance _targetpos) / 70;

	//_x lookat (_targetpos);
	
	

	for "_i" from 1 to _total do {

	_x doArtilleryFire [([_targetpos, 50, 300, 0, 1, 100, 0, [], [_targetpos, _targetpos]] call BIS_fnc_findSafePos), currentmagazine _x, 1];
	//_x lookat (_targetpos);
	sleep 4 +(random 3);

	}; 


	_x lookat objnull;

	_x setvehicleammo 0;


//sleep 30 + (random 180);



 

};

} foreach twc_artyguns;

sleep 120 +(random 200);

if ((random 1) < 0.1) exitwith {

[_targetpos] call twc_fnc_artyattack;};