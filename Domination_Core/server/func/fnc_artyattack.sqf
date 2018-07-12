params ["_targetpos"];


if (isnil "twc_artyguns") exitwith {};
//systemchat format ["%1", twc_artyguns];
{

[_targetpos, _x] spawn {

params ["_targetpos", "_x"];

//sleep 10 + (random 30);

_total = 5 +(random 10);

_x lookat objnull;

_x setvehicleammodef 1;
sleep random 5;

	if ((_x distance _targetpos) > 8000) exitwith {
	//systemchat "out of range"
	};

	_radius = (_x distance _targetpos) / 70;

	//_x lookat (_targetpos);

	for "_i" from 1 to _total do {

	_x doArtilleryFire [([_targetpos,250] call cba_fnc_randpos), currentmagazine _x, 1];
	//_x lookat (_targetpos);
	sleep 4 +(random 3);

	}; 
	_x lookat objnull;

	_x setvehicleammodef 0;


//sleep 30 + (random 180);

if ((random 1) < 0.1) exitwith {

[_targetpos] call twc_fnc_artyattack;

 };

};

} foreach twc_artyguns;