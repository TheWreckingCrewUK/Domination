/*
* After completion of an AO this gets the location of a new one and passes it to twc_fnc_ao
*/
params["_pos", "_enemylist"];

//systemchat "reinforcements called";

//systemchat format ["I see %1 with %2", _pos, _enemylist];


//_enemy = (nearestObjects [_pos, ["SoldierWB"], 5000]) select 0; 

_enemy = _enemylist call BIS_fnc_selectRandom;

//exit if the system is asking artillery to fire on its own friends
if ((_enemy distance _pos) < 400) exitwith {};

_spawnpos = [0,0,0];

_stagepos = [_pos, 1000] call CBA_fnc_randPos;

	twc_reinforce_airdrop = {
	params ["_spawnpos", "_enemy", "_stagepos", "_num"];

	if (isnil "_num") then {
		_num = random 1;
	};
	sleep random 20;
	//flip a coin between plane paradrop and Hind insertion. plane drops more infantry but hind is hind
	if ((_num) > 0.5) then {
		_Cargo = [];
		_plane = createVehicle ["CUP_O_C130J_TKA", (([_spawnPos, 200] call CBA_fnc_randPos) vectoradd [0,0,500]), [], 0, "FLY"]; 

		_dir = ([_plane, _enemy] call BIS_fnc_relativeDirTo);

		_plane setdir _dir;

		_group1 = createGroup East;  
		 
		_driver = _group1 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_driver moveInDriver _plane; 
		//systemchat format ["%1", _driver];

		_driver disableai "autotarget";
		_driver disableai "autocombat";

		_wp = _group1 addwaypoint [_stagepos, 500]; 


		//_wppos = _enemy getRelPos [2000, _dir - 90];
		_wp = _group1 addwaypoint [_enemy, 500]; 
		_wp setWaypointCompletionRadius 1000;

		_group1 addwaypoint [[0,0,0], 300]; 

		_plane setvelocity [100 * (sin (getdir _plane )), 100 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 400 + (random 200);

			for "_i" from 1 to 2 do {

				_group = [[0,0,0], EAST, squad] call BIS_fnc_spawnGroup;
				
				{_x moveincargo _plane; _Cargo pushback _x} foreach (units _group);
				
				 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
				 _group addwaypoint [_stagepos, 100] call CBA_fnc_randPos;  
				 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
				 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos;  
				 _group addwaypoint [_enemy, 100] call CBA_fnc_randPos; 
				[_group, 0] setWaypointCompletionRadius 30; 
				[_group, 1] setWaypointCompletionRadius 30; 
				[_group, 2] setWaypointCompletionRadius 30; 
				[_group, 3] setWaypointCompletionRadius 30; 
				[_group, 4] setWaypointCompletionRadius 30; 
				[_group, 5] setWaypointCompletionRadius 30; 
				 [_group, 5] setWaypointType "CYCLE"; 
				 
				 
				 };
		sleep 3;
			 [_plane, _cargo, _enemy] spawn {
				 params ["_plane", "_cargo", "_enemy"];
				 
					sleep 1;
					waituntil {((_plane) distance _enemy) < 1000};
					//systemchat "ejecting";
					{
					_x addBackPack "B_parachute";
					moveout _x;
					
					
					Sleep 0.4;
					} foreach _cargo;
					
					};
			sleep 120;
					waituntil {((_plane) distance [0,0,0]) < 5000};
					{deletevehicle _x} foreach (crew _plane);
					deletevehicle _plane;
			
			//////////////////////////////
			//////////////////////////////now for the hind
			//////////////////////////////
	} else {	
			
			
		_Cargo = [];
		_plane = createVehicle ["RHS_Mi24V_UPK23_vdv", (([_spawnPos, 200] call CBA_fnc_randPos) vectoradd [0,0,500]), [], 0, "FLY"]; 

		_dir = ([_plane, _enemy] call BIS_fnc_relativeDirTo);

		_plane setdir _dir;

		_group1 = createGroup East;  
		 
		_driver = _group1 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_driver moveInDriver _plane; 


		_group2 = createGroup East;
		_gunner = _group2 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_gunner moveIngunner _plane; 
		//systemchat format ["%1", _driver];

		_driver disableai "autotarget";
		_driver disableai "autocombat";

		_wp = _group1 addwaypoint [_stagepos, 500]; 

		_wp setWaypointStatements ["true", "this flyinheight 100;"];

		//_wppos = _enemy getRelPos [2000, _dir - 90];
		_wp = _group1 addwaypoint [_enemy, 200]; 
		_wp setWaypointCompletionRadius 500;
		_wp setWaypointType "TR Unload";
		_wp setWaypointStatements ["true", "[] spawn {(driver this) enableai 'autotarget';(driver this) enableai 'autocombat'; sleep 60;(driver this) disableai 'autotarget';(driver this) disableai 'autocombat';(driver this) disableai 'TARGET'; this flyinheight 150;}"];


		_group1 addwaypoint [[0,0,0], 300]; 

		_plane setvelocity [20 * (sin (getdir _plane )), 20 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 200 + (random 200);


				_group = [[0,0,0], EAST, squad] call BIS_fnc_spawnGroup;
				
				{_x moveincargo _plane; _Cargo pushback _x; if (!(_x in crew _plane)) then {deletevehicle _x};} foreach (units _group);
				
				 _group addwaypoint [_enemy, 100];  
				 _group addwaypoint [_stagepos, 100];  
				 _group addwaypoint [_enemy, 100];  
				 _group addwaypoint [_enemy, 100];  
				 _group addwaypoint [_enemy, 100];   
				[_group, 0] setWaypointCompletionRadius 30; 
				[_group, 1] setWaypointCompletionRadius 30; 
				[_group, 2] setWaypointCompletionRadius 30; 
				[_group, 3] setWaypointCompletionRadius 30; 
				[_group, 4] setWaypointCompletionRadius 30; 
				 [_group, 5] setWaypointType "CYCLE"; 
				 
				 
			sleep 120;
					waituntil {((_plane) distance [0,0,0]) < 5000};
					{deletevehicle _x} foreach (crew _plane);
					deletevehicle _plane;
			
			
			
			
	};
};

	_num = random 1;
	
for "_i" from 1 to 2 do {

	[_spawnpos, _enemy, _stagepos, _num] spawn twc_reinforce_airdrop;

};

[_enemy] call twc_fnc_artyattack;

