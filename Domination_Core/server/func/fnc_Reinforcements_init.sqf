

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
				
				_pos2 = _stagepos;
				if ((_enemy distance _stagepos) > 800) then {_pos2 = _enemy};
				
				 _group addwaypoint [_enemy, 100];  
				 _group addwaypoint [_pos2, 100];  
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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	twc_reinforce_armourdrop = {
	params ["_spawnpos", "_enemy", "_stagepos"];
	sleep 10 + (random 20);
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
		_wp = _group1 addwaypoint [_enemy, 200]; 


		_group1 addwaypoint [[0,0,0], 300]; 

		_plane setvelocity [100 * (sin (getdir _plane )), 100 * (cos (getdir _plane )), 0] ;
		_plane flyinheight 400 + (random 200);

	
		sleep 3;
			 [_plane, _enemy] spawn {
				 params ["_plane", "_enemy"];
				 
					sleep 1;
					waituntil {((_plane) distance _enemy) < 1000};
					
					sleep 3;
					//systemchat "ejecting tank";
				
	for "_i" from 1 to 2 do {
				_tank = "rhs_bmd2" createvehicle [0,0,0];
				_tank setpos (_plane getRelPos [50, getdir _plane - 180]);
				_tank setposatl [(getpos _tank select 0),(getpos _tank select 1),(getpos _plane select 2)];
				
				
				_group = createGroup East; 
				
				 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", [0,0,0],[], 0.3,"NONE"];  
				 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", [0,0,0],[], 0.3,"NONE"];  
				  
				 _driver moveInDriver _tank;  
				 _gunner moveInGunner _tank;  
				sleep 1;
				_tank call KK_fnc_paraDrop;
					
				 _group addwaypoint [_enemy, 100];  
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
			
			//////////////////////////////
			//////////////////////////////now for the hind
			//////////////////////////////
	};

	twc_reinforce_mechanised = {
	
	/*
	
	params ["_spawnpos", "_enemy", "_stagepos", "_num"];

	if (isnil "_num") then {
		_num = random 1;
	};
	
	
	
	_spawnPos = [getmarkerpos "aoCenterMarker",[300,600],random 360,0,[1,100]] call SHK_pos;
	
	if ([_spawnpos,1500] call twc_fnc_posNearPlayers) exitwith {[_spawnpos, _enemy, _stagepos, _num] spawn twc_reinforce_airdrop;};
	
	
	//flip a coin between 2 apc's and 1 apc + 2 tanks. 

		//2 apc version
		
	 _groupv = createGroup East; 
	 
	for "_i" from 1 to 3 do {
		
		[_spawnpos, _enemy, _stagepos, _num, _groupv] spawn {
	params ["_spawnpos", "_enemy", "_stagepos", "_num", "_groupv"];
	_spawnPos = [_spawnpos,[20,100],random 360,0,[1,100]] call SHK_pos;
	_apc = apc call BIS_fnc_selectRandom;
	
	 
	 _vehicle = _apc createVehicle _spawnPos;  
	 
	 _driver = _groupv createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
	 _gunner = _groupv createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];   
	  
	 _driver moveInDriver _vehicle;  
	 _gunner moveInGunner _vehicle;   
		
		
	 
	 
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	
	{_x moveincargo _vehicle} foreach units _group;
	
	waituntil {((behaviour _gunner) == "COMBAT") || (_vehicle distance (getmarkerpos "respawn_west") < 200) || (_vehicle distance (getmarkerpos "respawn_forwardBase") < 200) };
	
	{unassignVehicle _x} foreach units _group;
	
	{if (((leader _group) distance _x) < 250) then {
	 _group addwaypoint [_x, 50]; 
	 _group addwaypoint [_x, 50]; 
	 _group addwaypoint [_x, 50]; 
	 _wp = _group addwaypoint [_x, 50]; 
	 _wp setWaypointType "CYCLE";
	};
	} foreach [getmarkerpos "respawn_west", getmarkerpos "respawn_forwardBase"];
	};
	
 };
 
	 _groupv addwaypoint [_enemy, 500];  
	 _groupv addwaypoint [_enemy, 500];  
	 _groupv addwaypoint [_enemy, 500];  
	 _groupv addwaypoint [_spawnPos, 500];  
	 _groupv addwaypoint [_spawnPos, 500];   
	[_groupv, 0] setWaypointCompletionRadius 50; 
	[_groupv, 1] setWaypointCompletionRadius 50; 
	[_groupv, 2] setWaypointCompletionRadius 50; 
	[_groupv, 3] setWaypointCompletionRadius 50; 
	[_groupv, 4] setWaypointCompletionRadius 50; 
	 [_groupv, 4] setWaypointType "CYCLE";
		
		
		
};
		
			for "_i" from 1 to 1 do {
		
		[_spawnpos, _enemy, _stagepos, _num, _group] spawn {
	params ["_spawnpos", "_enemy", "_stagepos", "_num", "_group"];
	_spawnPos = [_spawnpos,[20,100],random 360,0,[1,100]] call SHK_pos;
	_apc = apc call BIS_fnc_selectRandom;
	
	 
	 _vehicle = _apc createVehicle _spawnPos;  
	 
	 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
	 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];   
	  
	 _driver moveInDriver _vehicle;  
	 _gunner moveInGunner _vehicle;   
		
		
	 _group addwaypoint [_enemy, 500];  
	 _group addwaypoint [_enemy, 500];  
	 _group addwaypoint [_enemy, 500];  
	 _group addwaypoint [_spawnPos, 500];  
	 _group addwaypoint [_spawnPos, 500];   
	[_group, 0] setWaypointCompletionRadius 50; 
	[_group, 1] setWaypointCompletionRadius 50; 
	[_group, 2] setWaypointCompletionRadius 50; 
	[_group, 3] setWaypointCompletionRadius 50; 
	[_group, 4] setWaypointCompletionRadius 50; 
	[_group, 5] setWaypointCompletionRadius 50;  
	 [_group, 5] setWaypointType "CYCLE";
	 
	 
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	
	{_x moveincargo _vehicle} foreach units _group;
	
	waituntil {(behaviour _gunner) == "COMBAT"};
	
	{unassignVehicle _x} foreach units _group;
	};
 };
			
		};
*/		
};


if (!isDedicated) then {
    KK_fnc_FX = {
        private "_veh";
        _veh = _this select 0;
        _vel = _this select 1;
        for "_i" from 1 to 100 do {
            drop [
                ["\A3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48],
                "",
                "Billboard",
                0, 
                1 + random 0.5,
                [0, -2, 1.5],
                [-20 + random 40, -20 + random 40, -15 + _vel],
                1,
                0.05,
                0.04,
                0, 
                [0.5, 10 + random 20],
                [
                    [0,0,0,1],
                    [0,0,0,0.3],
                    [1,1,1,0.1],
                    [1,1,1,0.03],
                    [1,1,1,0.01],
                    [1,1,1,0.003],
                    [1,1,1,0.001],
                    [1,1,1,0]
                ],
                [1],
                0.1,
                0.1,
                "",
                "",
                _veh,
                random 360,
                true,
                0.1
            ];
        };
    };
    "#FX" addPublicVariableEventHandler {_this select 1 spawn KK_fnc_FX};
};
if (isServer) then {
    KK_fnc_paraDrop = {
	
	//systemchat format ["%1", _this];
        private ["_class","_para","_paras","_p","_veh","_vel","_time"];
        _class = "B_Parachute_02_F";
        _para = createVehicle [_class, [0,0,0], [], 0, "FLY"];
        _para setDir getDir _this;
        _para setPos getPos _this;
        _paras =  [_para];
        _this attachTo [_para, [0,2,0]];
        {
            _p = createVehicle [_class, [0,0,0], [], 0, "FLY"];
            _paras set [count _paras, _p];
            _p attachTo [_para, [0,0,0]];
            _p setVectorUp _x;
        } count [
            [0.5,0.4,0.6],[-0.5,0.4,0.6],[0.5,-0.4,0.6],[-0.5,-0.4,0.6]
        ];
        0 = [_this, _paras] spawn {
            _veh = _this select 0;
            waitUntil {getPos _veh select 2 < 4};
            _vel = velocity _veh;
            detach _veh;
            _veh setVelocity _vel;
            missionNamespace setVariable ["#FX", [_veh, _vel select 2]];
            publicVariable "#FX";
            playSound3D [
                "a3\sounds_f\weapons\Flare_Gun\flaregun_1_shoot.wss",
                _veh
            ];
            {
                detach _x;
                _x disableCollisionWith _veh;   
            } count (_this select 1);
            _time = time + 5;
            waitUntil {time > _time};
            {
                if (!isNull _x) then {deleteVehicle _x};
            } count (_this select 1);
        };
    };
};


