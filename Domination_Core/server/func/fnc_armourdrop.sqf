

	params ["_spawnpos", "_enemy", "_stagepos"];
	
	
	
	if (isnil "_enemy") then {_enemy = allplayers call bis_fnc_selectrandom};
	
	_enemy = getpos _enemy;
	_enemylandingpos = [_enemy, 5, 100, 0, 0, 20, 0] call BIS_fnc_findSafePos;
	
	sleep (10 + random 20);
		_plane = createVehicle ["CUP_O_C130J_TKA", (([_spawnPos, 200] call CBA_fnc_randPos) vectoradd [0,0,500]), [], 0, "FLY"]; 

		_dir = ([_plane, _enemy] call BIS_fnc_relativeDirTo);

		_plane setdir _dir;

		_group1 = createGroup East;  
		 
		_driver = _group1 createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
		 
		_driver moveInDriver _plane; 
		//systemchat format ["%1", _driver];

		_driver disableai "autotarget";
		_driver disableai "autocombat";
		
_wp = _group1 addwaypoint [_stagepos , 500]; 


		//_wppos = _enemy getRelPos [2000, _dir - 90];
			_wp = _group1 addwaypoint [_enemylandingpos, 200];  


		_group1 addwaypoint [[0,0,0], 300]; 

		_plane setvelocity [100 * (sin (getdir _plane )), 100 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 400 + (random 200);

	
		sleep 3;
			 [_plane, _enemylandingpos] spawn {
				 params ["_plane", "_enemy"];
				 
					sleep 1;
					waituntil {((_plane) distance _enemy) < 1000};
					
					sleep 3;
					//systemchat "ejecting tank";
				
	for "_i" from 1 to 2 do {
				_tank = "rhs_bmd2" createvehicle [0,0,0];
				_tank setpos (_plane getRelPos [50, getdir _plane - 180]);
				_tank setposatl [(getpos _tank select 0),(getpos _tank select 1),(getpos _plane select 2)];
				
				_tank setVehicleLock "lockedplayer";
				_group = createGroup East; 
				
				 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", [0,0,0],[], 0.3,"NONE"];  
				 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", [0,0,0],[], 0.3,"NONE"];  
				  
				 _driver moveInDriver _tank;  
				 _gunner moveInGunner _tank; 
				_tank addEventHandler ["Fired", {
					[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }]; 
				sleep 1;
				_tank call KK_fnc_paraDrop;
					
				 _group addwaypoint [_enemy, 20];  
				 _group addwaypoint [_enemy, 100];  
				 _group addwaypoint [_enemy, 300];  
				 _group addwaypoint [_enemy, 400];  
				 _group addwaypoint [_enemy, 100];   
				[_group, 0] setWaypointCompletionRadius 30; 
				[_group, 1] setWaypointCompletionRadius 30; 
				[_group, 2] setWaypointCompletionRadius 30; 
				[_group, 3] setWaypointCompletionRadius 30; 
				[_group, 4] setWaypointCompletionRadius 30; 
				 [_group, 5] setWaypointType "CYCLE"; 
				 sleep 2;
					};
					};
			sleep 120;
					waituntil {((_plane) distance [0,0,0]) < 5000};
					{deletevehicle _x} foreach (crew _plane);
					deletevehicle _plane;

	

	