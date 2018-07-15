

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

if ((random 1)< 0.05) then {
if (( count(allPlayers - entities "HeadlessClient_F"))>2) then {
[getmarkerpos "aoCenterMarker", [player], getmarkerpos "aoCenterMarker"] remoteExec ["twc_fnc_spawnReinforcements", 2];

//["twc_event_artyattack", [getpos player], twc_artyguns] call CBA_fnc_targetEvent;
};
};