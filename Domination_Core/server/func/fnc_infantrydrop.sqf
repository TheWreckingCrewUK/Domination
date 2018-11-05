
	params ["_spawnpos", "_enemy", "_stagepos", "_num"];

	if (isnil "_num") then {
		_num = random 1;
	};
	
	if (isnil "_enemy") then {_enemy = allplayers call bis_fnc_selectrandom};
	
	_enemy = getpos _enemy;
	
	_enemylandingpos = [_enemy, 300, 600, 0, 0, 20, 0] call BIS_fnc_findSafePos;
	
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
		_plane setVehicleLock "LOCKEDPLAYER";

		_wp = _group1 addwaypoint [_stagepos , 500]; 


		//_wppos = _enemy getRelPos [2000, _dir - 90];
		_wp = _group1 addwaypoint [_enemylandingpos, 200]; 
		_wp setWaypointCompletionRadius 1000;

		_group1 addwaypoint [[0,0,0], 300]; 

		_plane setvelocity [100 * (sin (getdir _plane )), 100 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 400 + (random 200);

			for "_i" from 1 to 2 do {

				_group = [[0,0,0], EAST, squad] call BIS_fnc_spawnGroup;
				
				{_x moveincargo _plane; _Cargo pushback _x} foreach (units _group);
				
				
				_pos2 = _stagepos;
				if ((_enemy distance _stagepos) > 800) then {_pos2 = _enemy};
				
				 _group addwaypoint [_enemy, 200] call CBA_fnc_randPos;  
				 _group addwaypoint [_pos2, 200] call CBA_fnc_randPos;  
				 _group addwaypoint [_enemy, 200] call CBA_fnc_randPos;  
				 _group addwaypoint [_enemy, 200] call CBA_fnc_randPos;  
				 _group addwaypoint [_enemy, 200] call CBA_fnc_randPos; 
				[_group, 0] setWaypointCompletionRadius 30; 
				[_group, 1] setWaypointCompletionRadius 30; 
				[_group, 2] setWaypointCompletionRadius 30; 
				[_group, 3] setWaypointCompletionRadius 30; 
				[_group, 4] setWaypointCompletionRadius 30; 
				[_group, 5] setWaypointCompletionRadius 30; 
				 [_group, 5] setWaypointType "CYCLE"; 
				 
				 
				 };
		sleep 3;
			 [_plane, _cargo, _enemylandingpos] spawn {
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
		_helitype = "RHS_Mi24V_UPK23_vdv";
	/*	
		if ((_num) > 0.3) then {
			_helitype = "RHS_Mi24P_vvsc";
		};
		*/
		_plane = createVehicle [_helitype, (([_spawnPos, 200] call CBA_fnc_randPos) vectoradd [0,0,500]), [], 0, "FLY"]; 

		_dir = ([_plane, _enemy] call BIS_fnc_relativeDirTo);

		_plane setdir _dir;

		_group1 = createGroup East;  
		 
		_driver = _group1 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_driver moveInDriver _plane; 

		_plane setVehicleLock "LOCKEDPLAYER";

		_group2 = createGroup East;
		_gunner = _group2 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_gunner moveIngunner _plane; 
		//systemchat format ["%1", _driver];

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
				 
				 
			sleep 120;
					waituntil {((_plane) distance [0,0,0]) < 3000};
					{deletevehicle _x} foreach (crew _plane);
					deletevehicle _plane;
			
			
			
			
	};


