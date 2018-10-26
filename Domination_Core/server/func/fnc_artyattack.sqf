/*
* Author(s): [TWC] Hobbs
* Mortar Spawner

* Arguments:
* <Array> Position
*
* Return Value:
* <NONE>
*
* Example:
* [getMarkerPos "spawn",[100,200],p1] spawn twc_fnc_spawnAIUnits;
*
* Public: No
*/

//Recieved Parameters
params ["_mortar"];

waituntil {(count twc_mortar_targetlist) > 0};

if (twc_enemyhasradio == 0) exitwith {
	twc_mortar_targetlist deleteAt 0;
	publicVariable "twc_mortar_targetlist";
	[_mortar] spawn twc_fnc_artyattack;
};

_targetpos1 = twc_mortar_targetlist select 0;

_random = ( 150 + (random 150)) + ((_mortar distance _targetpos1) / 20);
_targetpos = ([_targetpos1,_random] call cba_fnc_randpos);

 //if ((typeName _mortar == "OBJECT")) then {_targetpos = getpos _targetpos};
sleep (1 + random 60);


if ((_mortar distance _targetpos) > 4500) exitwith {
[_mortar] spawn twc_fnc_artyattack;
twc_mortar_targetlist deleteAt (twc_mortar_targetlist find _targetpos1);
publicVariable "twc_mortar_targetlist";};

_mortar setvehicleammodef 1;
_mortar setvehicleammo 1;

_mortar lookat (_targetpos);
sleep 5;
 [_mortar, _targetpos, _targetpos1] spawn {
_total = 5 +(random 5);
 params ["_mortar", "_targetpos", "_targetpos1"];
for "_i" from 1 to _total do {

 _ammo = ((gunner _mortar) ammo (currentmuzzle (gunner _mortar))); 
_random = ( 150 + (random 50)) + ((_mortar distance _targetpos) / 30);
 _firepos = ([player,_random] call cba_fnc_randpos);
 _mortar doArtilleryFire [_firepos , currentmagazine _mortar, 1]; 
 waituntil {_ammo > ((gunner _mortar) ammo (currentmuzzle (gunner _mortar)))}; 

 };
 
_mortar lookat objnull;

_mortar setvehicleammodef 0;
_mortar setvehicleammo 0;
sleep 60;
twc_mortar_targetlist deleteAt (twc_mortar_targetlist find _targetpos1);
publicVariable "twc_mortar_targetlist";
 };



sleep (120 + random 30);

[_mortar] spawn twc_fnc_artyattack;