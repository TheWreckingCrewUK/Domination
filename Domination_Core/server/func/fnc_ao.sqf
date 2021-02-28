params["_pos","_name", "_tname"];

/*
* Function to spawn an AO
*
* params["_pos","_name"];
*
* returns nothing, but creates the AO
*/


twc_areaCleared = 0;
twc_towerCount = 0;


if(isNil "twc_hasaps") then{
	twc_hasaps = [];
};

if(isNil "twc_APS_list") then{
	twc_APS_list = [];
};

if(isNil "twc_nonAPS_list") then{
	twc_nonAPS_list = [];
};

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

twc_apccount = twc_apccount * ( 1+ (random 0.2));

if(isNil "twc_aacount") then{
	twc_aacount = 1;
};

twc_aacount = twc_aacount * ( 1+ (random 0.2));

if(isNil "twc_infcount") then{
	twc_infcount = 3;
};
twc_infcount = twc_infcount * ( 1.5+ (random 0.7));


if(isNil "twc_aainfcount") then{
	twc_aainfcount = 2;
};

twc_aainfcount = twc_aainfcount * ( 1+ (random 0.5));










// removing artillery for the moment until I stop them firing on people at really bad times

//comented out ALL the arti code becoase it just slows down the server -n
/*
if(isNil "twc_artycount") then{
	twc_artycount = 3;
};

twc_artycount = twc_artycount * ( 1+ (random 0.5));

//arty might be causing server slowdown, remove it until arty script is rewritten
twc_artycount = 0;
twc_activearty = 0;
*/
//twc_artycount = 0;

_minefield = [_pos] call twc_fnc_spawnminefield;

//Creates ao marker:
_markerstr = createMarker ["aoCenterMarker",_pos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType twc_enemyFlag;

parseText format["<t align='center'><t size='2' color='#ff0000'>AO created at </t><br/><t align='center'><t size='1.5' color='#ffffff'> %1</t><br/><t align='center'>---------------------<br/></t><t align='left'><t size='1' shadow='1.1' shadowColor='#000000' color='#CC4D00'>Destroy the command vehicle quickly to stop enemy reinforcements. </t>", _name] remoteExec ["hint"];

[West,[_name],["To capture the AO you must Destroy the command vehicle and then eliminate the remaining enemies from the area. While the command vehicle is alive the enemy will be able to call for reinforcements.",format["%1",_name],""],objNull,True,1,True,"",False] call BIS_fnc_taskCreate;


_spawnPos = [_pos,[100,300],random 360,0,[0,100]] call SHK_pos;
_tower = radioTower createVehicle _spawnPos;

twc_currentradiotower = _tower;
twc_enemyhasradio = 1;
publicVariable "twc_enemyhasradio";

_tower setVehicleLock "LOCKED";
//_tower setDamage 0.99;

_tower addEventHandler ["hit",{params ["_veh", "_source", "_damage", "_instigator"];if ((((damage _veh) < 0.2) && ((_veh getHitPointDamage "hitEngine") < 0.5)) || (twc_enemyhasradio == 0) || (twc_currentradiotower != _veh)) exitwith {};"Command Vehicle Disabled. The enemies can no longer call in Reinforcements. Well done!" remoteExec ["hint"];
twc_enemyhasradio = 0;
publicVariable "twc_enemyhasradio"; "radioMarker" setMarkerColor "colorWEST"; twc_towerCount = 1; deleteVehicle reinforcementsTrg}];

_tower addEventHandler ["killed",{params ["_veh", "_source", "_damage", "_instigator"];if ((twc_enemyhasradio == 0) || (twc_currentradiotower != _veh)) exitwith {};"Command Vehicle Disabled. The enemies can no longer call in Reinforcements. Well done!" remoteExec ["hint"];
twc_enemyhasradio = 0;
publicVariable "twc_enemyhasradio"; "radioMarker" setMarkerColor "colorWEST"; twc_towerCount = 1; deleteVehicle reinforcementsTrg}];

_spawnPos = [(_spawnPos select 0) + 5,(_spawnPos select 1), (_spawnPos select 2)];
_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
[_group, _spawnPos, 50] call cba_fnc_taskPatrol;

if (isNil "radioMarker") then{
	hint "creating radio marker";
	_markerstr = createMarker ["radioMarker",_spawnPos];
	_markerstr setMarkerShape "ICON";
	_markerstr setMarkerType "loc_Transmitter";
	_markerstr setMarkerColor "colorEAST";
	_markerstr setMarkerSize [0.75,0.75];
	_markerstr setMarkeralpha 0;
}
else
{
	"radioMarker" setMarkerPos _spawnPos;
	hint "moving radio marker";
};

hint "spawning enemys";
for "_i" from 1 to twc_aainfcount do {
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squadAA] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
	[leader _group, 2] spawn TWC_fnc_aiscramble;


};
for "_i" from 1 to twc_infcount do {
	_spawnPos = [_pos,[0,250],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	//[_group, _spawnPos, 150,3,false,true] call cba_fnc_taskDefend;
	
	_units = [_spawnPos, nil, units _group, 3, 2, true, true] call ace_ai_fnc_garrison;

	[_group, _spawnPos, 300] call cba_fnc_taskPatrol;
	[leader _group, 2] spawn TWC_fnc_aiscramble;

};
for "_i" from 1 to twc_infcount do {
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
	[leader _group, 2] spawn TWC_fnc_aiscramble;

};


for "_i" from 1 to twc_tankcount do { _pos2= [_pos, 200] call CBA_fnc_randPos;  
	_spawnPos = [_pos2,[100,500],random 360,0,[1,100]] call SHK_pos;
	_tank = tank call BIS_fnc_selectRandom;
	
	
 _group = createGroup East;  
 _vehicle = _tank createVehicle _spawnPos;  
 
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos vectoradd [0,0,200],[], 0.3,"NONE"];  
 _driver moveInDriver _vehicle;  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos vectoradd [0,0,200],[], 0.3,"NONE"];  
 _gunner moveInGunner _vehicle;  
 _commander = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos vectoradd [0,0,200],[], 0.3,"NONE"];  
 _commander moveInCommander _vehicle; 
  
  _vehicle setVehicleLock "LOCKEDPLAYER";
[leader _group, 2] spawn TWC_fnc_aiscramble;

if (_tank in twc_hasaps) then {
	twc_APS_list pushback _vehicle;
	publicVariable "twc_APS_list";
} else {
	
	twc_nonAPS_list pushback _vehicle;
	publicVariable "twc_nonAPS_list";
};

//T72B3's are killing their gunners on spawn for some reason
[_vehicle] spawn {
params ["_vehicle"];
sleep 10;
if ((gunner _vehicle) == objnull) then {

 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", [0,0,200],[], 0.3,"NONE"];  
 _gunner moveInGunner _vehicle;  

};
};

 /*
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	*/
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
 
[leader _group, 2] spawn TWC_fnc_aiscramble;
 {if (!(_x in crew _vehicle)) then {deletevehicle _x};} foreach (units _group)
 
};
for "_i" from 1 to twc_ifvcount do { _pos2= [_pos, 200] call CBA_fnc_randPos;  
	_spawnPos = [_pos2,[100,500],random 360,0,[1,100]] call SHK_pos;
	_ifv = ifv call BIS_fnc_selectRandom;
	
	
 _group = createGroup East;  
 _vehicle = _ifv createVehicle _spawnPos;  
 
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];   
  [leader _group, 2] spawn TWC_fnc_aiscramble;
  
if (_ifv in twc_hasaps) then {
	twc_APS_list pushback _vehicle;
	publicVariable "twc_APS_list";
} else {
	
	twc_nonAPS_list pushback _vehicle;
	publicVariable "twc_nonAPS_list";
};
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _vehicle setVehicleLock "LOCKEDPLAYER";
 /*
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	*/
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
 
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];   

  
   
if (_apc in twc_hasaps) then {
	twc_APS_list pushback _vehicle;
	publicVariable "twc_APS_list";
} else {
	
	twc_nonAPS_list pushback _vehicle;
	publicVariable "twc_nonAPS_list";
};
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _vehicle setVehicleLock "LOCKEDPLAYER"; 
 /*
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	*/
	
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
 
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;
 
 _driver = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
 _commander = _group createUnit ["CUP_O_RU_Crew_EMR", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _gunner moveInGunner _vehicle;  
 _commander moveInCommander _vehicle;  
 _vehicle setVehicleLock "LOCKEDPLAYER";

 
 [leader _group, 2] spawn TWC_fnc_aiscramble;
 /*
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
 */
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

_civcars = call twc_fnc_civilianvehicles;

if (( count(allPlayers - entities "HeadlessClient_F")) < 14) then {
	if (random 1 > 0.8) then {
 
 _spawnPos = [_pos,[100,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _vehicle = createVehicle [lightheli, (_spawnPos vectoradd [0,0, 30]), [], 0, "FLY"];
 
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;

_vehicle setvariable ["twc_walk_onlydisperse", 4];
 
 _driver = _group createUnit ["CUP_O_RU_Pilot_VDV_M_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Pilot_VDV_M_EMR", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _driver setskill 1;
 _gunner moveInGunner _vehicle; 
 _vehicle setVehicleLock "LOCKEDPLAYER"; 

 /*
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	*/
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
	
	if (( count(allPlayers - entities "HeadlessClient_F")) > 13) then {
	if (random 1 > 0.8) then {
 
 _spawnPos = [_pos,[100,500],random 360,0,[1,100]] call SHK_pos;  
 _group = createGroup East;  
 _vehicle = heavyheli createVehicle _spawnPos;  
 _vehicle setvariable ["twc_walk_onlydisperse", 4];
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;
 _vehicle setvariable ["twc_walk_onlydisperse", 4];
 _driver = _group createUnit ["CUP_O_RU_Pilot_VDV_M_EMR", _spawnPos,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Pilot_VDV_M_EMR", _spawnPos,[], 0.3,"NONE"];  
  
 _driver moveInDriver _vehicle;  
 _driver setskill 0.8;
 _gunner moveInGunner _vehicle; 
 _gunner setskill 0.8;
 _vehicle setVehicleLock "LOCKEDPLAYER"; 

 /*
_vehicle addEventHandler ["Fired", {
	[_this select 1, _this select 6, _this select 7] call twc_fnc_gunwalk; }];
	*/
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
 
 clearWeaponCargoGlobal _jet;
clearBackpackCargoGlobal _jet;
clearitemCargoGlobal _jet;
 _jet setvariable ["twc_walk_onlydisperse", 4];
 _driver = _group createUnit ["CUP_O_RU_Pilot_VDV_M_EMR", _spawnPos,[], 0.3,"NONE"];  
  
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
/*
//artyspawnpos = [_spawnpos, 1500, 3000, 10, 0, 1, 0, [], [_spawnpos, _spawnpos]] call BIS_fnc_findSafePos;

maptrg = createTrigger ["EmptyDetector", [worldSize / 2, worldsize / 2, 0]];
maptrg setTriggerArea [worldSize / 2, worldSize / 2, 0, true];

artyspawnpos = [_spawnpos, 150, 3500, 50, 0, 0.7, 0] call BIS_fnc_findSafePos;

while {!(artyspawnpos inarea maptrg)} do {
	artyspawnpos = [_spawnpos, 1500, 3500, 50, 0, 0.7, 0] call BIS_fnc_findSafePos;
};

if (isnil "prevartyspawnpos") then {prevartyspawnpos = artyspawnpos;};

//if ((random 1) < 0.4) then {
if (true) then {

_attemptcount = 0;
while{
(_attemptcount < 250) &&
( ([artyspawnpos,1500] call twc_fnc_posNearPlayers) || (artyspawnpos distance2D (getMarkerPos "base") < 2500 
 ) || (!(artyspawnpos inarea maptrg)))}do{
	artyspawnpos = [_spawnpos, 1500, 3500, 50, 0, 0.7, 0] call BIS_fnc_findSafePos;
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
 
 clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
clearitemCargoGlobal _vehicle;
 
 twc_artyguns pushback _vehicle;
 //_driver = _group createUnit ["CUP_O_RU_Soldier_M_EMR", _artyspawnpos2,[], 0.3,"NONE"];  
 _gunner = _group createUnit ["CUP_O_RU_Soldier_M_EMR", _artyspawnpos2,[], 0.3,"NONE"];  
  
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
	[leader _group, 2] spawn TWC_fnc_aiscramble;

	
	_spawnPos = [_pos,[200,400],random 360,0] call SHK_pos;
	_group = [_spawnPos, EAST, squadAA] call BIS_fnc_spawnGroup;
	[_group, _spawnPos, 200] call cba_fnc_taskPatrol;
	[leader _group, 2] spawn TWC_fnc_aiscramble;

	
	};
*/


//^^^ commented out the arti code -n





_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [600, 600, 0, false];
_trg setTriggerActivation ["EAST", "PRESENT", false];
_trg setTriggerTimeout [10,10,10,True];
_trg setTriggerStatements ["((EAST countSide thisList) < 15 && ({(vehicle _x) isKindOf 'landVehicle' && side _x == EAST} count thisList <5))","twc_areaCleared = 1;", ""];




/*
_timer = 200 +(random 200);
reinforcementsTrg = createTrigger ["EmptyDetector", _pos];
reinforcementsTrg setTriggerArea [2700, 2700, 0, false];
reinforcementsTrg setTriggerActivation ["WEST", "EAST D", true];
reinforcementsTrg setTriggerTimeout [_timer,_timer,_timer, true];
reinforcementsTrg setTriggerStatements ["this && (time > (missionnamespace getvariable ['twc_lastattack', 1800]))","if (!isserver) exitwith {};[getPos thisTrigger, thislist, true] call twc_fnc_spawnReinforcements",""];
*/



//for some reason there are two triggers ??? I am comenting out the second one as it just slows down the server.
//The civ vehicles get deleted in the code later along with everything else -n
/*
_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [600, 600, 0, false];
_trg setTriggerActivation ["east", "PRESENT", false];
_trg setTriggerTimeout [20,20,20,false];
_trg setTriggerStatements ["((east countSide thisList) < 15 && ({(vehicle _x) isKindOf 'landVehicle' && side _x == east} count thisList <5))","twc_areaCleared = 1; _cars = thistrigger getvariable ['twccivcars', []];{deletevehicle _x} foreach _cars;", ""];

_trg setvariable ["twccivcars", _civcars];
*/

while {twc_areaCleared != 1} do {
	sleep 30;
};



hint"passed the while";
if ((count _minefield) > 0) then {
	[_minefield] spawn {
		params ["_minefield"];
		{
			deletevehicle _x;
		} foreach _minefield;
	};
};



[_name, "Succeeded",true] spawn BIS_fnc_taskSetState;
hint "AO captured main";
deleteMarker "aoCenterMarker";
twc_LastAO = _tname;



//missionnamespace setvariable ["twc_prevaos", (missionnamespace getvariable ["twc_prevaos", []]) + [_tname]];
/*
_wreck = (getMarkerPos "radioMarker") nearestObject radioTower;
deleteVehicle _wreck;
deleteMarker "radioMarker";
*/
// this code as far as I understand removes a marker so it can be placed in the new ao
//but the program gets stuck here so I made some changes that make this algorithm obsolite and also removes unesecery stuff -n
_pos_old = _pos;


[] call twc_fnc_getao;



/*
while {([prevartyspawnpos,1000] call twc_fnc_posNearPlayers)} do {
	sleep 30;
};
{
	if ((twc_basepos distance _x) > 300) then {deleteVehicle _x};
}forEach (nearestObjects [prevartyspawnpos,["Man","Car","Tank","Air","StaticWeapon"],800]);
sleep 10;
prevartyspawnpos = artyspawnpos;
*/
//more arti code commented out -n




while {([_pos_old,3000] call twc_fnc_posNearPlayers)} do {
		sleep 10;
	};
	

[_pos_old]spawn{
	params["_pos"];
	
	
	
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

	
