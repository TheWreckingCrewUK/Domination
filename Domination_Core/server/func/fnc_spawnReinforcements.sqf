/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params["_pos", "_enemylist", "_arty"];

if (isnil "_arty") then {_arty = false};

if (isnil "twc_lastattack") then {twc_lastattack = 0;
publicVariable "twc_lastattack";};

if (twc_enemyhasradio == 0) exitwith {};

//exit if it's been too soon since the last attack. current count at 20 minutes
if (time < twc_lastattack) exitwith {};



	_enemy = allplayers call BIS_fnc_selectRandom;
	
	_targetlist = [];

if ((count _enemylist) > 0) then {

	_enemy = _enemylist call BIS_fnc_selectRandom;
} else {
	_targetlist = _enemylist;
};


_spawnpos = [0,0,0];

/* future plan is to do a while isnearplayers 10km do a new bis fnc safepos to get a decent spawnpos

*/

_stagepos = [_pos, 1000] call CBA_fnc_randPos;



if (((random 1)< 0.4) && (( count(allPlayers - entities "HeadlessClient_F"))>6) && ((_enemy distance artyspawnpos) < 4500) && (twc_activearty == 1)) exitwith {

	twc_mortar_targetlist pushback (getpos _enemy);
	publicVariable "twc_mortar_targetlist";
	twc_lastattack = time + 300;
	publicVariable "twc_lastattack";
	
};

_incamount = (3600 / (1 + ((count allplayers) / 15))) max 1200;
twc_lastattack = time + _incamount;
publicVariable "twc_lastattack";

_landorair = random 1;

//if (_enemy distance getmarkerpos "aoCenterMarker" > 2500) then {_landorair = 1};

_num = random 1;



if (((!(["90", twc_missionname] call BIS_fnc_inString)) && (!(["00", twc_missionname] call BIS_fnc_inString))) && ((random 1) < 0.2)) exitwith {

	[_spawnpos, _enemy, _stagepos, _targetlist] spawn twc_fnc_infantrydrop_heavy;
	
	_title ="<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENEMY ACTION</t>";
	_text1 = "<br />ENEMY AIR ASSETS CONVERGING ON BASE.<br />PREPARE DEFENCES.";
	
	_warning = parsetext (_title + _text1);
	
	_dis2 = _enemy distance twc_basepos;
	
	if (_dis2 < 400) then {
		[_warning] remoteExec ["hint"];
	};
	
};

if ((_landorair > 0.6) || (["90", twc_missionname] call BIS_fnc_inString) || (["00", twc_missionname] call BIS_fnc_inString) || (missionnamespace getvariable ["twc_canlandattack", 0] == 0)) then {
//armour is dropped by c130, so have the same condition on this as for the c130 airdrop of infantry
	if ((_num) > 0.7) then {
		[_spawnpos, _enemy, _stagepos] spawn twc_fnc_armourdrop;
		
		
	};
	for "_i" from 1 to 2 do {

		[_spawnpos, _enemy, _stagepos, _num] spawn twc_fnc_infantrydrop;

	};
	_title ="<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENEMY ACTION</t>";
	_text1 = "<br />ENEMY AIR FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";
	
	_warning = parsetext (_title + _text1);
	
	_dis2 = _enemy distance twc_basepos;
	
	if (_dis2 < 400) then {
		[_warning] remoteExec ["hint"];
	};
	
	
} else {
	[_enemylist] spawn twc_reinforce_land;
};


