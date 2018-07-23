

if (["interpreter", typeof player] call BIS_fnc_inString) then {
	twc_terp = player;
	publicvariable "twc_terp";
	};
	
	//make the player middle eastern if they spawn as ANA. Sounds racist, but otherwise it looks dumb
_me = player;
if (faction player == "ana_units") then {
[_me, ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"]call bis_fnc_selectrandom] remoteExec ["setFace", 0, _me] 
};

	

sleep 10;

if ((random 1)< 0.1) then {
	if (( count(allPlayers - entities "HeadlessClient_F"))>6) then {

	if (isnil "twc_enemyhasradio") then {
		twc_enemyhasradio = 0;
		publicVariable "twc_enemyhasradio"
	};

	if (twc_enemyhasradio == 0) exitwith {};

	[getmarkerpos "aoCenterMarker", [player], getmarkerpos "aoCenterMarker"] remoteExec ["twc_fnc_spawnReinforcements", 2];

	//["twc_event_artyattack", [getpos player], twc_artyguns] call CBA_fnc_targetEvent;
	};
};