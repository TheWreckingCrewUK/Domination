
if (["interpreter", typeof player] call BIS_fnc_inString) then {
	twc_terp = player;
	publicvariable "twc_terp";
	};
	
	//make the player middle eastern if they spawn as ANA. Sounds racist, but otherwise it looks dumb
_me = player;
if (faction player == "ana_units") then {
[_me, ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"]call bis_fnc_selectrandom] remoteExec ["setFace", 0, _me] 
};

//[crateBox] execVM "Domination_Core\client\sys_player\boxes\base_box\main_ammo.sqf";

/*
_nobackpack = getNumber (configFile >> "cfgVehicles" >> (typeOf player) >> "twc_nobackpack");

if (!isnil "_nobackpack") then {

	if (_nobackpack == 1) then {
		player addEventHandler ["Take", {
			params ["_unit", "_container", "_item"];
			removebackpack player;
		}];
	};
};
*/

[player] call twc_fnc_civfluff_client;

[player, false] execvm "domination_core\client\sys_player\vehicledrop.sqf";

if (!((backpack player) == "")) then {
	_playerbackpack = [(configFile >> "CfgVehicles" >> typeof player), "backpack", ""] call BIS_fnc_returnConfigEntry;
	_unit = player;

	if (!((backpack player) == (_playerbackpack))) then {
			
		if (_playerbackpack == "") then {
			_unit allowsprint false;
			//hint "This Role is not used to fighting with a Backpack. You are unable to Sprint";
		};
		if (((backpack player) isKindOf ["twc_dpm_belt", configFile >> "CfgVehicles"]) || ((backpack player) isKindOf ["CUP_B_ACRScout_m95", configFile >> "CfgVehicles"])) exitwith {
			_unit allowsprint true;
		};
		
		_playerload = [(configFile >> "CfgVehicles" >> _playerbackpack), "maximumload", 0] call BIS_fnc_returnConfigEntry;

		_newbackpack = backpack player;
		
		_newload = [(configFile >> "CfgVehicles" >> _newbackpack), "maximumload", 0] call BIS_fnc_returnConfigEntry;
		
		if (_newload < (130)) exitwith {
			_unit allowsprint true;
		};
		
		if (_newload > (_playerload * 1.1)) then {
			hint "This Backpack is bigger that what this role is used to fighting with. You are unable to Sprint";
			_unit allowsprint false;
		};
			
		if (_newload < (_playerload * 1.1)) then {
			_unit allowsprint true;
		};
	};
};

[] spawn {
	waituntil {(!(isnil "twc_missionname"))};
	waitUntil {!isNull player};

	if (((uniform player) == "UK3CB_BAF_U_RolledUniform_MTP") && ((["90", twc_missionname] call BIS_fnc_inString))) then {
	for "_i" from 1 to 3 do {
		sleep 3;
		(player) setObjectTextureGlobal [0, "uk3cb_baf_equipment\backpacks\data\backpack_ddpm_co.paa"];
		};
	};
};
 
[] spawn {
	sleep 5;
	//set radios again
	call twc_fnc_setradio;
};
 
 _armourcrew = ["Modern_British_VehicleCrew",
 "Modern_British_VehicleCommander",
 "Modern_USMC_VehicleCommander",
 "Modern_USMC_VehicleCrew",
 "1990_British_Vehicle_Commander",
 "1990_British_Vehicle_Crew",
 "1990_British_Tank_Commander_Desert",
 "1990_British_Tank_Crew_Desert",
 "2000_British_Vehicle_Commander",
 "2000_British_Vehicle_Crew"];
 
 if (typeof player in _armourcrew) then {
 
	//[player] remoteExec ["twc_fnc_crewcount", 2];
	
	_crewcount = 0;

	{if (typeof _x in _armourcrew) then {_crewcount = _crewcount + 1;}} foreach units group player;

	group player setvariable ["armourcount", _crewcount, true];
	
	if ((["infantry", str (group player)] call BIS_fnc_inString)) then {
		if ((group player getvariable ["twc_ismechanised", 0]) == 0) then {
			group player setvariable ["twc_ismechanised", 1, true];
		};
	};
};

if ((group player getvariable ["twc_ismechanised", 0]) == 1) then {
	_crewcount = 0;

	{if (typeof _x in _armourcrew) then {_crewcount = _crewcount + 1;}} foreach units group player;
	group player setvariable ["armourcount", _crewcount, true];
		if ((group player getvariable ["armourcount", 3]) == 0) then {
			group player setvariable ["twc_ismechanised", 0, true];
		};
	
};
sleep 5;


 
if ((random 1)< 0.1) then {
	//if (( count(allPlayers - entities "HeadlessClient_F"))>6) then {

	if (isnil "twc_enemyhasradio") then {
		twc_enemyhasradio = 0;
		publicVariable "twc_enemyhasradio"
	};


	//[getmarkerpos "aoCenterMarker", [player], getmarkerpos "aoCenterMarker"] remoteExec ["twc_fnc_spawnReinforcements", 2];
	[] spawn {
	sleep (random 600);
_timer = 2;

_reinforcementsTrg = createTrigger ["EmptyDetector", getpos player];
_reinforcementsTrg setTriggerArea [2700, 2700, 0, false];
_reinforcementsTrg setTriggerActivation ["WEST", "PRESENT", false];
_reinforcementsTrg setTriggerTimeout [_timer,_timer,_timer, true];
_reinforcementsTrg setTriggerStatements ["(count thislist > 7) && (time > (missionnamespace getvariable ['twc_lastattack', 0])) && ((missionnamespace getvariable ['twc_enemyhasradio', 0]) == 1)","if (!isserver) exitwith {};[getmarkerpos 'aoCenterMarker', thislist] remoteExec ['twc_fnc_spawnReinforcements', 2];",""];
};
	//["twc_event_artyattack", [getpos player], twc_artyguns] call CBA_fnc_targetEvent;
	//};
};

if ((random 1)< 0.1) then {
	if (( count(allPlayers - entities "HeadlessClient_F"))>6) then {

	if (isnil "twc_enemyhasradio") then {
		twc_enemyhasradio = 0;
		publicVariable "twc_enemyhasradio";
	};

	if (twc_enemyhasradio == 0) exitwith {};
	
	if ((player distance artyspawnpos) < 4000) then {
		twc_mortar_targetlist pushback getpos player;
		publicVariable "twc_mortar_targetlist";
		};
	};
};