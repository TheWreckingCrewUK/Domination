twc_fnc_ao = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_ao.sqf";
twc_fnc_GetAO = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_getAO.sqf";
twc_fnc_spawnReinforcements = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_spawnReinforcements.sqf";
twc_fnc_posNearPlayers = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_posNearPlayers.sqf";
twc_fnc_posNearPlayers = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_posNearPlayers.sqf";
twc_fnc_noMorePilots = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_noMorePilots.sqf";
twc_fnc_spawnJet = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_spawnJet.sqf";"Domination_Core\server\func\fnc_noMorePilots.sqf";
twc_fnc_artyattack = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_artyattack.sqf";
twc_fnc_changebase = compile preprocessfilelinenumbers "Domination_Core\server\func\base\fnc_changebase.sqf";
twc_fnc_changebase_bluetored = compile preprocessfilelinenumbers "Domination_Core\server\func\base\fnc_bluetored.sqf";
twc_fnc_changebase_redtoblue = compile preprocessfilelinenumbers "Domination_Core\server\func\base\fnc_redtoblue.sqf";
twc_fnc_armourdrop = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_armourdrop.sqf";
twc_fnc_infantrydrop = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_infantrydrop.sqf";


if (isServer) then {
	_eventHandlerID = ["twc_event_baseattack", {
	//systemchat "respawn event";
		params ["_pos", "_targetplayer"];
		[_pos, _targetplayer] call twc_fnc_spawnReinforcements;
	}] call CBA_fnc_addEventHandler;
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
  /*      {
            _p = createVehicle [_class, [0,0,0], [], 0, "FLY"];
            _paras set [count _paras, _p];
            _p attachTo [_para, [0,0,0]];
            _p setVectorUp _x;
        } count [
            [0.5,0.4,0.6],[-0.5,0.4,0.6],[0.5,-0.4,0.6],[-0.5,-0.4,0.6]
        ];
		*/
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


