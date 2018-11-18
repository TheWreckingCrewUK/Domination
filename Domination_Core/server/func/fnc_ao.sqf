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


if(isNil "twc_tankcount") then{
	twc_tankcount = random 3;
};

twc_tankcount = twc_tankcount * ( 1+ (random 0.2));

if(isNil "twc_ifvcount") then{
	twc_ifvcount = 2;
};

twc_ifvcount = twc_ifvcount * ( 1+ (random 0.2));

if(isNil "twc_apccount") then{
	twc_apccount = 2;
};

twc_ifvcount = twc_ifvcount * ( 1+ (random 0.2));

if(isNil "twc_aacount") then{
	twc_aacount = 1;
};

twc_aacount = twc_aacount * ( 1+ (random 0.2));

if(isNil "twc_infcount") then{
	twc_infcount = 3;
};
twc_infcount = twc_infcount * ( 1+ (random 0.7));


if(isNil "twc_aainfcount") then{
	twc_aainfcount = 2;
};

twc_aainfcount = twc_aainfcount * ( 1+ (random 0.5));
// removing artillery for the moment until I stop them firing on people at really bad times

if(isNil "twc_artycount") then{
	twc_artycount = 3;
};

twc_artycount = twc_artycount * ( 1+ (random 0.5));

twc_activearty = 0;

//twc_artycount = 0;

//Creates ao marker:
_markerstr = createMarker ["aoCenterMarker",_pos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType twc_enemyFlag;

parseText format["<t align='center'><t size='2' color='#ff0000'>AO created at </t><br/><t align='center'><t size='1.5' color='#ffffff'> %1</t><br/><t align='center'>---------------------<br/></t><t align='left'><t size='1' shadow='1.1' shadowColor='#000000' color='#CC4D00'>Destroy the radio tower quickly to stop enemy reinforcements. </t>", _name] remoteExec ["hint"];

[West,[_name],["To capture the AO you must Destroy the Radio tower and then eliminate the remaining enemies from the area. While the radio tower is alive the enemy will be able to call for reinforcements.",format["%1 AO",_name],""],objNull,True,1,True,"",False] call BIS_fnc_taskCreate;


_spawnPos = [_pos,[100,300],random 360,0,[0,100]] call SHK_pos;
_tower = radioTower createVehicle _spawnPos;

twc_enemyhasradio = 1;
publicVariable "twc_enemyhasradio";

_tower setVehicleLock "LOCKED";
//_tower setDamage 0.99;
_tower addEventHandler ["Killed",{"Radio Tower Destroyed. The enemies can no longer call in Reinforcements. Well done!" remoteExec ["hint"];
twc_enemyhasradio = 0;
publicVariable "twc_enemyhasradio"; "radioMarker" setMarkerColor "colorWEST"; twc_towerCount = 1; deleteVehicle reinforcementsTrg}];

_spawnPos = [(_spawnPos select 0) + 5,(_spawnPos select 1), (_spawnPos select 2)];
_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
[_group, _spawnPos, 50] call cba_fnc_taskPatrol;
		
_markerstr = createMarker ["radioMarker",_spawnPos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "loc_Transmitter";
_markerstr setMarkerColor "colorEAST";
_markerstr setMarkerSize [0.75,0.75];
_markerstr setMarkeralpha 0;

for "_i" from 1 to twc_aainfcount do {
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squadAA] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
};
for "_i" from 1 to twc_infcount do {
	_spawnPos = [_pos,[0,250],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 150,3,false,true] call cba_fnc_taskDefend;
};
for "_i" from 1 to twc_infcount do {
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
};


for "_i" from 1 to twc_tankcount do { _pos2= [_pos, 200] call CBA_fnc_randPos;  
	_spawnPos = [_pos2,[100,500],random 360,0,[1,100]] call SHK_pos;
	_tank = tank call BIS_fnc_selectRandom;
	
	
 _group = createGroup East;  
 _vehicle = _tank createVehicle _spawnPos;  
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _commander = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _commander moveInCommander _vehicle;  
 
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50;  
 [_group, 5] setWaypointType "CYCLE";
 
 {if (!(_x in crew _vehicle)) then {deletevehicle _x};} foreach (units _group)
 
};
for "_i" from 1 to twc_ifvcount do { _pos2= [_pos, 200] call CBA_fnc_randPos;  
	_spawnPos = [_pos2,[100,500],random 360,0,[1,100]] call SHK_pos;
	_ifv = ifv call BIS_fnc_selectRandom;
	
	
 _group = createGroup East;  
 _vehicle = _ifv createVehicle _spawnPos;  
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];   
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _vehicle setVehicleLock "LOCKEDPLAYER";
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50;   
 [_group, 5] setWaypointType "CYCLE";
};
for "_i" from 1 to twc_apccount do { _pos2= [_pos, 200] call CBA_fnc_randPos;  
	_spawnPos = [_pos2,[100,500],random 360,0,[1,100]] call SHK_pos;
	_apc = apc call BIS_fnc_selectRandom;
	
	
 _group = createGroup East;  
 _vehicle = _apc createVehicle _spawnPos;  
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];   
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _vehicle setVehicleLock "LOCKEDPLAYER"; 
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	
	
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50;  
 [_group, 5] setWaypointType "CYCLE";
};
for "_i" from 1 to twc_aacount do { _pos2= [_pos, 200] call CBA_fnc_randPos;  
	_spawnPos = [_pos2,[100,500],random 360,0,[1,100]] call SHK_pos;
	_aa = aa call BIS_fnc_selectRandom;
	
	
 _group = createGroup East;  
 _vehicle = _aa createVehicle _spawnPos;  
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _commander = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _commander moveInCommander _vehicle;  
 _vehicle setVehicleLock "LOCKEDPLAYER";
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
 
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
 _group addwaypoint [[_spawnPos,[100,500],random 360,0,[1,100]] call SHK_pos, 0];
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50; 
 [_group, 5] setWaypointType "CYCLE";
};

if (( count(allPlayers - entities "HeadlessClient_F")) < 8) then {
	if (random 1 > 0.8) then {
 
 _spawnPos = [_pos,[100,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _vehicle = lightheli createVehicle _spawnPos;  
 
 _driver = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle; 
 _vehicle setVehicleLock "LOCKEDPLAYER"; 
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
 _flyalt = (100 + (0.03* (_spawnpos distance getmarkerpos "respawn_west"))) min 200;
 _vehicle setVehiclePosition [(_spawnpos vectoradd [0,0,_flyalt]), [],0,"FLY"]; 
_vehicle flyInHeight  _flyalt;
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50; 
 [_group, 5] setWaypointType "CYCLE";
 }
	};
	
	if (( count(allPlayers - entities "HeadlessClient_F")) > 14) then {
	if (random 1 > 0.8) then {
 
 _spawnPos = [_pos,[100,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _vehicle = heavyheli createVehicle _spawnPos;  
 
 _driver = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["rhs_pilot_combat_heli", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle; 
 _vehicle setVehicleLock "LOCKEDPLAYER"; 
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
 _flyalt = (100 + (0.04* (_spawnpos distance getmarkerpos "respawn_west"))) min 350;
 _vehicle setVehiclePosition [(_spawnpos vectoradd [0,0,_flyalt]), [],0,"FLY"]; 
_vehicle flyInHeight  _flyalt;
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
 _group addwaypoint [_spawnPos, 1500] call CBA_fnc_randPos;  
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50; 
 [_group, 5] setWaypointType "CYCLE";
 }
	};
	
if (_pos distance getmarkerpos "respawn_west" > 5000) then {
	if (( count(allPlayers - entities "HeadlessClient_F")) > 16) then {
	if (random 1 > 0.7) then {
 
 _spawnPos = [_pos,[100,500],random 360,0,[1,100]] call SHK_pos;  
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
[_group, 0] setWaypointCompletionRadius 50; 
[_group, 1] setWaypointCompletionRadius 50; 
[_group, 2] setWaypointCompletionRadius 50; 
[_group, 3] setWaypointCompletionRadius 50; 
[_group, 4] setWaypointCompletionRadius 50; 
[_group, 5] setWaypointCompletionRadius 50;  
 [_group, 5] setWaypointType "CYCLE";
 }
	};

};

artyspawnpos = [_spawnpos, 1500, 3000, 10, 0, 1, 0, [], [_spawnpos, _spawnpos]] call BIS_fnc_findSafePos;

if (isnil "prevartyspawnpos") then {prevartyspawnpos = artyspawnpos;};

if ((random 1) < 0.4) then {

_attemptcount = 0;
while{
(_attemptcount < 250) &&
( ([artyspawnpos,1500] call twc_fnc_posNearPlayers) || artyspawnpos distance2D (getMarkerPos "base") < 2500 
 )}do{
artyspawnpos = [_spawnpos, 1500, 3000, 10, 0, 15, 0, [], [_spawnpos, _spawnpos]] call BIS_fnc_findSafePos;
	_attemptcount = _attemptcount + 1;

//if (_attemptcount > 250) exitwith {};
};

twc_activearty = 1;
	artyspawn = arty call BIS_fnc_selectRandom;
	twc_artyguns = [];
for "_i" from 1 to twc_artycount do {
  
	_artyspawnpos2 = [artyspawnpos, 1, 50, 9, 0, 20, 0] call BIS_fnc_findSafePos;
	
	 _group = createGroup East;  
 _vehicle = artyspawn createVehicle _artyspawnpos2;  
_vehicle setVehicleLock "LOCKEDPLAYER";
 
 twc_artyguns pushback _vehicle;
 //_driver = _group createUnit ["rhs_msv_rifleman", _artyspawnpos2,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["rhs_msv_rifleman", _artyspawnpos2,[], 0.3,"NONE"];  
  
 //_driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;
  
 [_gunner, _vehicle] spawn {
 params ["_gunner", "_vehicle"];
	sleep 5;
	_vehicle addEventHandler ["Fired", {
		[_this select 6, _this select 7] call twc_fnc_mortarwalk; }];
};
 //_driver disableAI "AUTOTARGET";  
 _gunner disableAI "AUTOTARGET";
 _gunner disableAI "AUTOCOMBAT";
 _gunner disableAI "TARGET";
 
_vehicle addEventHandler ["Fired", {[(_this select 0), (_this select 6)] call twc_fnc_idf}];
[_vehicle] spawn twc_fnc_artyattack;
};

 publicVariable "twc_artyguns";
 
	_spawnPos = [artyspawnpos,[0,50],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 150,3,false,true] call cba_fnc_taskDefend;
	
	};
_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [600, 600, 0, false];
_trg setTriggerActivation ["EAST", "PRESENT", false];
_trg setTriggerTimeout [10,10,10,True];
_trg setTriggerStatements ["((EAST countSide thisList) < 25 && ({_x isKindOf 'landVehicle' && side _x == EAST} count thisList <2))","twc_areaCleared = 1", ""];
/*
reinforcementsTrg = createTrigger ["reinforcementsTrg", _pos];
reinforcementsTrg setTriggerArea [3500, 3500, 0, false];
reinforcementsTrg setTriggerActivation ["WEST", "PRESENT", true];
reinforcementsTrg setTriggerTimeout [1,1,1,True];
reinforcementsTrg setTriggerStatements ["this", "player setdamage 1",""];
*/
_timer = 200 +(random 200);
reinforcementsTrg = createTrigger ["EmptyDetector", _pos];
reinforcementsTrg setTriggerArea [2700, 2700, 0, false];
reinforcementsTrg setTriggerActivation ["WEST", "EAST D", true];
reinforcementsTrg setTriggerTimeout [_timer,_timer,_timer, true];
reinforcementsTrg setTriggerStatements ["this","if (!isserver) exitwith {};[getPos thisTrigger, thislist, true] call twc_fnc_spawnReinforcements",""];

//[getPos thisTrigger] call twc_fnc_spawnReinforcements


waitUntil {twc_areaCleared == 1
// && twc_towerCount == 1
};
[_name, "Succeeded",true] spawn BIS_fnc_taskSetState;
hint "AO captured";
deleteMarker "aoCenterMarker";
twc_LastAO = _name;
_wreck = (getMarkerPos "radioMarker") nearestObject radioTower;
deleteVehicle _wreck;
deleteMarker "radioMarker";
[_pos]spawn{
	params["_pos"];
	
	waitUntil{!([_pos,3000] call twc_fnc_posNearPlayers)};
	
	{
		if ((twc_basepos distance _x) > 300) then {deleteVehicle _x};
	}forEach (nearestObjects [_pos,["Man","Car","Tank","Air"],3000]);
	{
		if ((twc_basepos distance _x) > 300) then {deleteVehicle _x};
	}forEach (nearestObjects [_pos,["Man","Car","Tank","Air"],3000]);
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
	waitUntil{!([prevartyspawnpos,1000] call twc_fnc_posNearPlayers)};
	{
		
		if ((twc_basepos distance _x) > 300) then {deleteVehicle _x};
	}forEach (nearestObjects [prevartyspawnpos,["Man","Car","Tank","Air","StaticWeapon"],800]);
	sleep 10;
	prevartyspawnpos = artyspawnpos;
	
