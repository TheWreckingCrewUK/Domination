
params ["_cram"];

if (isnil "twc_cram_targetlist") then {twc_cram_targetlist = [];};

_cram disableai "autotarget";
//systemchat "cram init1";

if (count twc_cram_targetlist == 0) then {_cram dowatch objnull;
_cram lookat objnull;
_cram setvariable ["cram_alarm", 0];};

waituntil {count twc_cram_targetlist > 0};

_shell = twc_cram_targetlist select 0;

waituntil {(_shell distance _cram < 3000) || (!alive _shell)};



if (!alive _shell )exitwith {
if (_shell in twc_cram_targetlist) then {
	twc_cram_targetlist deleteat (twc_cram_targetlist find _shell);};
	_cram lookat objnull;
	[_cram] spawn twc_fnc_cram_init;};

_d20= random 20;
_complete = 0;


//systemchat "cram alarm";

_dir = _cram getreldir _shell;

//systemchat format ["%1", _shell];

_pos = getpos _shell;

_cram disableai "autotarget";
_cram disableai "autocombat";
_cram disableai "fsm";

_cram lookat [(_pos select 0),(_pos select 1),(_pos select 2)+300];


if ((_cram getvariable ["cram_alarm", 0]) == 0) then {
playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _cram, false, getpos _cram, 3];
_cram setvariable ["cram_alarm", 1];
};

while {((_cram animationPhase "sightscorrectionv_vertical") < 0.1)

} do{
_pos2 = getpos _shell;
if (!(str _pos2 == "[0,0,0]")) then {_pos = _pos2};
_cram lookat [(_pos select 0),(_pos select 1),(_pos select 2)+100];
sleep 0.2;
//systemchat "_cram is targetting";
};


//systemchat "_cram is ready";
_time = time;

Waituntil {(((getposatl _shell select 2) > 20) && ((_shell distance _cram) < 3000)) || !alive _shell};

_size = sizeof typeof _shell;
if (!alive _shell )exitwith {
if (_shell in twc_cram_targetlist) then {
	twc_cram_targetlist deleteat (twc_cram_targetlist find _shell);};
	_cram lookat objnull;
	[_cram] spawn twc_fnc_cram_init;};
	
	sleep (random 0.5);
if (!(_shell in twc_cram_targetlist)) exitwith {
	[_cram] spawn twc_fnc_cram_init;};

if (count twc_cram_targetlist > 3) then {

	twc_cram_targetlist deleteat (twc_cram_targetlist find _shell);
};
	
_chance = 18;
if ((vectorMagnitude (velocity _shell)) > 160) then {_chance = 15};

while {(((getposatl _shell select 2) > 30)) && (_complete == 0)} do{

if ((_cram animationPhase "sightscorrectionv_vertical") > 0.12) then {

_d20= random 20;


for "_i" from 1 to 10 do {
_pos2 = getpos _shell;
if (!(str _pos2 == "[0,0,0]")) then {_pos = _pos2};
((crew _cram) select 0) lookat _pos;


[_cram, currentweapon _cram] call BIS_fnc_fire;

sleep 0.0007;
};
//systemchat format ["%1", (vectorMagnitude (velocity _shell))];

//harder = higher

_chance = ((3 * (1 + ((_shell distance _cram)/1500))) * (0.7 + (((vectorMagnitude (velocity _shell)) + 1) / 250)) / (1 + (_size / 13)));
//systemchat format ["%1", _chance];
if (_D20 > _chance) then {
[_shell, _cram] spawn {
params ["_shell", "_cram"];
sleep ((1* (1 + (((vectorMagnitude (velocity _shell)) + 1) / 150)))* (1 + ((_shell distance _cram)/600)));
_pos = getpos _shell;

//systemchat "shell defeated";
if (alive _shell) then {
deletevehicle _shell;
'rhs_ammo_ptb1500' createvehicle _pos;
};
_complete = 1;

};
};



};
};

if ((_cram distance twc_basepos) < 300) then {
_cram setvehicleammo 1;
};

[_cram] spawn twc_fnc_cram_init;
