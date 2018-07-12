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


if (isServer) then {
	_eventHandlerID = ["twc_event_baseattack", {
	//systemchat "respawn event";
		params ["_pos", "_targetplayer"];
		[_pos, _targetplayer] call twc_fnc_spawnReinforcements;
	}] call CBA_fnc_addEventHandler;
};


execvm "Domination_Core\server\func\fnc_Reinforcements_init.sqf";