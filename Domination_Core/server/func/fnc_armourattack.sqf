params [["_enemylist", allplayers]];

//if ((missionnamespace getvariable ["twc_canlandattack", 0] == 0)) exitwith {};

_enemy = _enemylist call bis_fnc_selectrandom;

_dir = _enemy getdir (getmarkerpos "aocentermarker");
//_dir = (getmarkerpos "aocentermarker") getdir _enemy;
_dis = _enemy distance (getmarkerpos "aocentermarker");
_dis2 = _enemy distance (twc_basepos);

_maptrg = createTrigger ["EmptyDetector", [worldSize / 2, worldsize / 2, 0]];
_maptrg setTriggerArea [worldSize / 2, worldSize / 2, 0, true];

_pos = [getmarkerpos "base", 1000, 3500, 7, 0, 0.4, 0] call BIS_fnc_findSafePos;


_startpos = _enemy getpos [(_dis * 0.8) min 2500, _dir];
//_startpos = (getmarkerpos "aocentermarker") getpos [(_dis * 0.8) max 3000, _dir];

_spawnpos = [_startpos, 1, 500, 50, 0, 0.6, 0] call BIS_fnc_findSafePos;

_attemptcount = 0;
while {([_spawnpos,2000] call twc_fnc_posNearPlayers) || ((_enemy distance _spawnpos) < 2000) || ((_enemy distance _spawnpos) > 5000) || (!(_spawnpos inarea _maptrg))} do {
	if (_attemptcount > 500) exitwith {};
	_spawnpos = [_startpos, 1, 3000, 30, 0, 0.6, 0] call BIS_fnc_findSafePos;
	_attemptcount = _attemptcount + 1;
};
//systemchat format ["%1", _attemptcount];
deletevehicle _maptrg;

_tankattack = {
	params [["_spawnpos", [0,0,0]], "_enemy", "_dis2"];
	
	
	_vehtype = ["rhsgref_BRDM2_msv", "rhs_t80um"] call bis_fnc_selectrandom;
	
	
	_title ="<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENEMY ACTION</t>";
	
	_text1 = "<br />ENEMY ARMOURED FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";
	
	SWITCH (_vehtype) do {
		case "rhsgref_BRDM2_msv": {_text1 = "<br />ENEMY SCOUT FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
		case "rhs_t90a_tv": {_text1 = "<br />ENEMY T90 PLATOON CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
		//DEFAULT {_text1 = "<br />ENEMY FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
	};
	
	_warning = parsetext (_title + _text1);
	if (_dis2 < 400) then {
		[_warning] remoteExec ["hint"];
	};
	
	for "_i" from 1 to 3 do {
		_group = creategroup east;
		_veh = _vehtype createvehicle _spawnpos;
		_spawnpos = [_spawnpos, 1, 15, 6, 0, 0.6, 0] call BIS_fnc_findSafePos;
		createVehicleCrew _veh;
		
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
		_veh setvehiclelock "lockedplayer";
		
		(crew _veh) joinsilent _group;
		if ((typeof _veh) in twc_hasaps) then {
			twc_APS_list pushback _veh;
			publicVariable "twc_APS_list";
		} else {
			
			twc_nonAPS_list pushback _veh;
			publicVariable "twc_nonAPS_list";
		};
	_wp = _group setBehaviour "aware";
	_wp = _group addwaypoint [_enemy , 40];
	_wp setwaypointtype "sad";
	_wp = _group addwaypoint [_enemy , 400];
	_wp setwaypointtype "sad";
	_wp = _group addwaypoint [_enemy , 400];
	_wp setwaypointtype "sad";
	_wp = _group addwaypoint [_enemy , 400];
	_wp setwaypointtype "sad";
	_wp = _group addwaypoint [_enemy , 400];
	_wp setwaypointtype "cycle";
	};
	
};

_mechattack = {
	params [["_spawnpos", [0,0,0]], "_enemy", "_dis2"];
	
	_vehtype = [["Rhs_tigr_sts_msv", 1], ["Rhs_btr80_msv", 1], ["Rhs_bmp2k_msv", 1], ["rhs_kamaz5350_msv", 4]] call bis_fnc_selectrandom;
	
	_title ="<t color='#ff0000' size='1.2' shadow='1' shadowColor='#000000' align='center'>ENEMY ACTION</t>";
	_text1 = "<br />ENEMY MOTORISED FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";

	SWITCH (_vehtype select 0) do {
		case "Rhs_tigr_sts_msv": {_text1 = "<br />ENEMY MOTORISED FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
		case "Rhs_btr80_msv": {_text1 = "<br />ENEMY BTR PLATOON CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
		case "Rhs_bmp2k_msv": {_text1 = "<br />ENEMY BMP PLATOON CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
		case "rhs_kamaz5350_msv": {_text1 = "<br />ENEMY MOTORISED COMPANY CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
		//DEFAULT {_text1 = "<br />ENEMY FORCES CONVERGING ON BASE.<br />PREPARE DEFENCES.";};
	};
	
	
	_warning = parsetext (_title + _text1);
	if (_dis2 < 400) then {
		[_warning] remoteExec ["hint"];
	};
	
	
	for "_i" from 1 to 3 do {
		_group = creategroup east;
		_veh = (_vehtype select 0) createvehicle _spawnpos;
		_spawnpos = [_spawnpos, 1, 15, 6, 0, 0.6, 0] call BIS_fnc_findSafePos;
		createVehicleCrew _veh;
		(crew _veh) joinsilent _group;
		
		if ((typeof _veh) in twc_hasaps) then {
			twc_APS_list pushback _veh;
			publicVariable "twc_APS_list";
		} else {
			
			twc_nonAPS_list pushback _veh;
			publicVariable "twc_nonAPS_list";
		};
		
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;
		_veh setvehiclelock "lockedplayer";
		
		for "_i" from 1 to (_vehtype select 1) do {
			_infgroup =[_spawnPos, EAST, (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry_emr" >> "rhs_group_rus_msv_infantry_emr_fireteam")] call BIS_fnc_spawnGroup;
	if ((missionnamespace getvariable ["twc_christmas", 0]) == 1) then {
		{
			_x addHeadgear "rhs_xmas_antlers";
		} foreach (units _group);
	};
			{
				_x moveincargo _veh;
				_x addEventHandler ["Killed", {
					params ["_unit", "_killer", "_instigator", "_useEffects"];
					[_unit] spawn {
						params ["_unit"];
						sleep 300;
						deletevehicle _unit;
					};
				}];
			} foreach units _infgroup;
			_wp = _infgroup addwaypoint [_enemy , 50];
			_wp setwaypointtype "sad";
			_wp = _infgroup addwaypoint [_enemy , 500];
			_wp setwaypointtype "sad";
			_wp = _infgroup addwaypoint [_enemy , 500];
			_wp setwaypointtype "sad";
			_wp = _infgroup addwaypoint [_enemy , 500];
			_wp setwaypointtype "sad";
			_wp = _infgroup addwaypoint [_enemy , 500];
			_wp setwaypointtype "cycle";
			[_group, _infgroup, _veh, _vehtype] spawn 
			{
				params ["_group", "_infgroup", "_veh", "_vehtype"];
				while {!((behaviour leader _group) == "combat")} do {
					sleep (10 + (random 3));
				};
				if ((_vehtype select 1) > 1) then {
					_veh setfuel 0;
					_group leavevehicle _veh;
				};
				_infgroup leavevehicle _veh;
			};
			
			
		};
		_group setBehaviour "aware";
		_wp = _group addwaypoint [_enemy , 40];
		_wp setwaypointtype "sad";
		_wp = _group addwaypoint [_enemy , 400];
		_wp setwaypointtype "sad";
		_wp = _group addwaypoint [_enemy , 400];
		_wp setwaypointtype "sad";
		_wp = _group addwaypoint [_enemy , 400];
		_wp setwaypointtype "sad";
		_wp = _group addwaypoint [_enemy , 400];
		_wp setwaypointtype "cycle";
	};
	
};

[_spawnpos, _enemy, _dis2] call ([_mechattack, _tankattack] call bis_fnc_selectrandom);
//[_spawnpos, _enemy, _dis2] call _mechattack;