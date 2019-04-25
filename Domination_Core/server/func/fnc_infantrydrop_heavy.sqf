
	params ["_spawnpos", "_enemy", "_stagepos", "_targetlist"];

	
	if (isnil "_enemy") then {_enemy = allplayers call bis_fnc_selectrandom};
	
	_enemy = getpos _enemy;
	
	_enemylandingpos = [_enemy, 300, 600, 0, 0, 20, 0] call BIS_fnc_findSafePos;
	[_spawnpos, _enemy, _stagepos, _enemylandingpos] spawn {
	params ["_spawnpos", "_enemy", "_stagepos", "_enemylandingpos"];
	
	
	sleep ( 30 + (random 60));
	
			
		_Cargo = [];
		_plane = createVehicle ["RHS_Mi8AMT_vvsc", (([_spawnPos, 200] call CBA_fnc_randPos) vectoradd [0,0,500]), [], 0, "FLY"]; 

		_dir = ([_plane, _enemy] call BIS_fnc_relativeDirTo);

		_plane setdir _dir;

		_group1 = createGroup East;  
		 
		_driver = _group1 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_driver moveInDriver _plane;

		_plane setVehicleLock "LOCKEDPLAYER";

		_plane addEventHandler ["Fired", {
			[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }]; 

		_driver disableai "autotarget";
		_driver disableai "autocombat";

		_wp = _group1 addwaypoint [_stagepos, 500]; 

		_wp setWaypointStatements ["true", "this flyinheight 100;"];

		//_wppos = _enemy getRelPos [2000, _dir - 90];
		_wp = _group1 addwaypoint [_enemylandingpos, 200]; 
		_wp setWaypointCompletionRadius 500;
		_wp setWaypointType "TR Unload";
		_wp setWaypointStatements ["true", "[this] spawn {params ['_this'];(driver _this) enableai 'autotarget';(driver _this) enableai 'autocombat'; sleep 60;(driver _this) disableai 'autotarget';(driver _this) disableai 'autocombat';(driver _this) disableai 'TARGET'; _this flyinheight 150;}"];


		_group1 addwaypoint [[0,0,0], 300]; 

		_plane setvelocity [20 * (sin (getdir _plane )), 20 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 200 + (random 200);
sleep 1;

	for "_i" from 1 to 2 do {
				_group = [[0,0,0], EAST, squad] call BIS_fnc_spawnGroup;
				
				{_x moveincargo _plane; _Cargo pushback _x; if (!(_x in crew _plane)) then {deletevehicle _x};} foreach (units _group);
				
				_pos2 = _stagepos;
				if ((_enemy distance _stagepos) > 800) then {_pos2 = _enemy};
				
				 _group addwaypoint [_enemy, 200];  
				 _group addwaypoint [_pos2, 200];  
				 _group addwaypoint [_enemy, 200];  
				 _group addwaypoint [_enemy, 200];  
				 _group addwaypoint [_enemy, 200];   
				[_group, 0] setWaypointCompletionRadius 30; 
				[_group, 1] setWaypointCompletionRadius 30; 
				[_group, 2] setWaypointCompletionRadius 30; 
				[_group, 3] setWaypointCompletionRadius 30; 
				[_group, 4] setWaypointCompletionRadius 30; 
				 [_group, 5] setWaypointType "CYCLE"; 
				[leader _group] execvm "Domination_Core\server\func\ai\fnc_aiscramble.sqf";
		};
				 
			sleep 120;
					waituntil {((_plane) distance [0,0,0]) < 3000};
					{deletevehicle _x} foreach (crew _plane);
					deletevehicle _plane;
			
			};
		


	
	[_spawnpos, _enemy, _stagepos, _enemylandingpos, _targetlist] spawn {
	params ["_spawnpos", "_enemy", "_stagepos", "_enemylandingpos", "_targetlist"];
	
	
	
			
		_Cargo = [];
		_plane = createVehicle ["rhs_mi28n_vvsc", (([_spawnPos, 200] call CBA_fnc_randPos) vectoradd [0,0,500]), [], 0, "FLY"]; 

		_dir = ([_plane, _enemy] call BIS_fnc_relativeDirTo);

		_plane setdir _dir;

		_group1 = createGroup East;  
		 
		_driver = _group1 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_driver moveInDriver _plane; 

		_plane setVehicleLock "LOCKEDPLAYER";
		
		_plane addEventHandler ["Fired", {
			[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }]; 

		_group2 = createGroup East;
		_gunner = _group2 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_gunner moveIngunner _plane; 
		//systemchat format ["%1", _driver];
		
		_plane addEventHandler ["Fired", {
		 params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
		 if (_weapon == "rhs_weap_2a42") then {
		 _bullet = _projectile; _bullet setvelocity [(velocity _bullet select 0) + (random 40) - 20, (velocity _bullet select 1) + (random 40) - 20,  (velocity _bullet select 2) + (random 30) - 15]; 
		} else {_bullet = _projectile; _bullet setvelocity [(velocity _bullet select 0) + (random 30) - 15, (velocity _bullet select 1) + (random 30) - 15,  (velocity _bullet select 2) + (random 20) - 10]; }; }];

		_driver disableai "autotarget";
		_driver disableai "autocombat";

		_wp0 = _group1 addwaypoint [_stagepos, 500]; 
		
		havocgunner = _gunner;
		havocdriver = _driver;
		
_trig = createTrigger ["EmptyDetector", _enemy];
_trig setTriggerArea [300, 300, 0, false];
_trig setTriggerActivation ["WEST", "PRESENT", true];
_trig setTriggerTimeout [10,10,10,True];
//_trig setTriggerStatements ["this",(format ["{%1 reveal [_x, 4];} foreach thislist;", _gunner]), ""];
_trig setTriggerStatements ["this","{havocgunner reveal [_x, 4];} foreach thislist;{havocdriver reveal [_x, 4];} foreach thislist;", ""];

		_wp0 setWaypointStatements ["true", "this flyinheight 100;"];

		//_wppos = _enemy getRelPos [2000, _dir - 90];
		_wp = _group1 addwaypoint [_enemylandingpos, 200]; 
		_wp setWaypointSpeed "LIMITED";
		_wp setWaypointCompletionRadius 500;
		_wp setWaypointStatements ["true", "[this] spawn {params ['_this'];(driver _this) enableai 'autotarget';(driver _this) enableai 'autocombat'; systemchat 'start combat';_this flyinheight 50; sleep 160;(driver _this) disableai 'autotarget';(driver _this) disableai 'autocombat';(driver _this) disableai 'TARGET'; _this flyinheight 150;}"];


		_wph = _group1 addwaypoint [[0,0,0], 300]; 
		_wph setWaypointSpeed "FULL";

		_plane setvelocity [20 * (sin (getdir _plane )), 20 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 200 + (random 200);

				 
			sleep 120;
			
			{_gunner reveal [_x, 3]} foreach _targetlist;
					waituntil {((_plane) distance [0,0,0]) < 3000};
					{deletevehicle _x} foreach (crew _plane);
					deletevehicle _plane;
					deletevehicle _trig;
			
			};
		

