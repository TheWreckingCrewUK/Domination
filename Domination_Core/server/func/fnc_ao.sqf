params["_pos","_name"];

/*
* Function to spawn an AO
*
* params["_pos","_name"];
*
* returns nothing, but creates the AO
*/

params["_pos","_name"];

twc_areaCleared = 0;
twc_towerCount = 0;

//Creates ao marker:
_markerstr = createMarker ["aoCenterMarker",_pos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType twc_enemyFlag;

parseText format["<t align='center'><t size='2' color='#ff0000'>AO created at </t><br/><t align='center'><t size='1.5' color='#ffffff'> %1</t><br/><t align='center'>---------------------<br/></t><t align='left'><t size='1' shadow='1.1' shadowColor='#000000' color='#CC4D00'>Destroy the radio tower quickly to stop enemy reinforcements. </t>", _name] remoteExec ["hint"];

[West,[_name],["To capture the AO you must Destroy the Radio tower and then eliminate the remaining enemies from the area. While the radio tower is alive the enemy will be able to call for reinforcements.",format["%1 AO",_name],""],objNull,True,1,True,"",False] call BIS_fnc_taskCreate;


_spawnPos = [_pos,[100,300],random 360,0,[0,100]] call SHK_pos;
_tower = radioTower createVehicle _spawnPos;
_tower setDamage 0.99;
_tower addEventHandler ["Killed",{"Radio Tower Destroyed. The enemies can no longer call in Reinforcements. Well done!" remoteExec ["hint"]; "radioMarker" setMarkerColor "colorWEST"; twc_towerCount = 1; deleteVehicle reinforcementsTrg}];

_spawnPos = [(_spawnPos select 0) + 5,(_spawnPos select 1), (_spawnPos select 2)];
_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
[_group, _spawnPos, 50] call cba_fnc_taskPatrol;
		
_markerstr = createMarker ["radioMarker",_spawnPos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "loc_Transmitter";
_markerstr setMarkerColor "colorEAST";
_markerstr setMarkerSize [0.75,0.75];

for "_i" from 1 to 3 do {
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squadAA] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
};
for "_i" from 1 to 6 do {
	_spawnPos = [_pos,[0,250],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 150,3,false,true] call cba_fnc_taskDefend;
};
for "_i" from 1 to 5 do {
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
};
for "_i" from 1 to 1 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_group = [_spawnPos, EAST, tank] call BIS_fnc_spawnGroup;
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30;  
 [_group, 5] setWaypointType "CYCLE";
};
for "_i" from 1 to 1 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_group = [_spawnPos, EAST, ifv] call BIS_fnc_spawnGroup;
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos; 
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30;   
 [_group, 5] setWaypointType "CYCLE";
};
for "_i" from 1 to 3 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_group = [_spawnPos, EAST, apc] call BIS_fnc_spawnGroup;
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30;  
 [_group, 5] setWaypointType "CYCLE";
};
for "_i" from 1 to 2 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_group = [_spawnPos, EAST, aa] call BIS_fnc_spawnGroup;
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 300] call CBA_fnc_randPos; 
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30; 
 [_group, 5] setWaypointType "CYCLE";
};

if (( count(allPlayers - entities "HeadlessClient_F")) < 8) then {
	if (random 1 > 0.6) then {
 
 _spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _vehicle = lightheli createVehicle _spawnPos;  
 
 _driver = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _flyalt = (100 + (0.03* (_spawnpos distance getmarkerpos "respawn_west"))) min 200;
 _vehicle setVehiclePosition [(_spawnpos vectoradd [0,0,_flyalt]), [],0,"FLY"]; 
_vehicle flyInHeight  _flyalt;
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30; 
 [_group, 5] setWaypointType "CYCLE";
 }
	};
	
	if (( count(allPlayers - entities "HeadlessClient_F")) > 14) then {
	if (random 1 > 0.6) then {
 
 _spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _vehicle = heavyheli createVehicle _spawnPos;  
 
 _driver = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _flyalt = (100 + (0.04* (_spawnpos distance getmarkerpos "respawn_west"))) min 350;
 _vehicle setVehiclePosition [(_spawnpos vectoradd [0,0,_flyalt]), [],0,"FLY"]; 
_vehicle flyInHeight  _flyalt;
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30; 
 [_group, 5] setWaypointType "CYCLE";
 }
	};
	
if (_pos distance getmarkerpos "respawn_west" > 5000) then {
	if (( count(allPlayers - entities "HeadlessClient_F")) > 16) then {
	if (random 1 > 0.7) then {
 
 _spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _jet = jet createVehicle _spawnPos;  
 
 _driver = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _jet;  
 _flyalt = (150 + (0.06* (_spawnpos distance getmarkerpos "respawn_west"))) min 450;
 _jet setVehiclePosition [(_spawnpos vectoradd [0,0,_flyalt]), [],0,"FLY"]; 
_jet setvelocity [150 * (sin (getdir _jet )), 150 * (cos (getdir _jet )), 0] ; 
_jet flyInHeight  _flyalt;
 _group addwaypoint [_spawnPos, 2500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 2500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 2500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 2500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 2500] call CBA_fnc_randPos; 
[_group, 0] setWaypointCompletionRadius 30; 
[_group, 1] setWaypointCompletionRadius 30; 
[_group, 2] setWaypointCompletionRadius 30; 
[_group, 3] setWaypointCompletionRadius 30; 
[_group, 4] setWaypointCompletionRadius 30; 
[_group, 5] setWaypointCompletionRadius 30;  
 [_group, 5] setWaypointType "CYCLE";
 }
	};

};
	
	
_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [600, 600, 0, false];
_trg setTriggerActivation ["EAST", "PRESENT", false];
_trg setTriggerTimeout [10,10,10,True];
_trg setTriggerStatements ["((EAST countSide thisList) < 15 && ({_x isKindOf 'landVehicle' && side _x == EAST} count thisList <3))","twc_areaCleared = 1", ""];

_enemyCount = East countSide (nearestObjects [_pos,["Man"],600]);

reinforcementsTrg = createTrigger ["EmptyDetector", _pos];
reinforcementsTrg setTriggerArea [600, 600, 0, false];
reinforcementsTrg setTriggerActivation ["EAST", "PRESENT", true];
reinforcementsTrg setTriggerTimeout [300,300,300,True];
reinforcementsTrg setTriggerStatements [format["(EAST countSide thisList) < %1",_enemyCount],"[getPos thisTrigger] call twc_fnc_spawnReinforcements", ""];


waitUntil {twc_areaCleared == 1 && twc_towerCount == 1};
[_name, "Succeeded",true] spawn BIS_fnc_taskSetState;
hint "AO captured";
deleteMarker "aoCenterMarker";
twc_LastAO = _name;
_wreck = (getMarkerPos "radioMarker") nearestObject "Land_TTowerBig_2_ruins_F";
deleteVehicle _wreck;
deleteMarker "radioMarker";
[_pos]spawn{
	params["_pos"];
	waitUntil{!([_pos,1000] call twc_fnc_posNearPlayers)};
	{
		deleteVehicle _x
	}forEach (nearestObjects [_pos,["Man","Car","Tank","Air"],800]);
	{
		deleteVehicle _x
	}forEach allDeadMen;
	{
		deleteVehicle _x
	}forEach allDead;

	{
		deleteGroup _x
	}forEach allGroups;
};
[] call twc_fnc_getao;