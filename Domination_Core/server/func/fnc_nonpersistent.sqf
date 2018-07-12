// non persistent mission script, to end the mission under a condition. only happens if twc_nonpersistent equals 1


waituntil {( count(allPlayers - entities "HeadlessClient_F")) == 0};

_time = time;

//if (time < 120) exitWith {};

while {( count(allPlayers - entities "HeadlessClient_F")) == 0} do {

//make sure it stays empty for 30 hours, to be semi-persistent
if (_time > (time + 108000)) then { "baselost" call BIS_fnc_endMissionServer;};
sleep 30
};

// now run it again to make it wait for the next opportunity
execvm "Domination_Core\server\func\fnc_nonpersistent.sqf"