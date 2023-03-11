params["_pos","_name"];

_spawnPos = [_pos,[150,250],[250,350],0,[1,100]] call SHK_pos;
bunker3 = "land_BagBunker_Large_F" createVehicle _spawnPos;
_dir = [_spawnPos, _pos] call BIS_fnc_dirTo;
bunker3 setDir _dir;
	
sleep 1;
	
_unit = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
[_unit, _spawnPos, 20] call TWC_Domination_fnc_defend;

_markerstr = createMarker ["aobunkerthree",_spawnPos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType bunkerMarkerClass;
_markerstr setMarkerColor "colorEAST";
_markerstr setMarkerSize [0.5,0.5];

aoBunkerThree = false;
_trg = createTrigger ["EmptyDetector", _spawnPos];
_trg setTriggerArea [10,10,_dir,True];
_trg setTriggerTimeout [5,5,5,True];
_trg setTriggerActivation ["ANY", "Present", False];
_trg setTriggerStatements ["((West countSide thisList) > 0) && ((East countSide thisList) == 0)","'Bunker C Captured' remoteExec ['hint']; aoBunkerThree = true; 'aobunkerthree' setMarkerColor 'colorWEST'; ['Bunker_C','Succeeded'] call bis_fnc_taskSetState",""];
[West,["Bunker_C"],["Capture bunker C by eliminating all enemies inside as well as entering the bunker for a few seconds","Bunker C",""],(getMarkerPos  _markerstr),false,1,false,"C",False] call BIS_fnc_taskCreate;
twc_aoBoolArray pushback aoBunkerThree;

radioTowerObj = false;
_spawnPos = [_pos,[100,300],random 360,0,[1,100]] call SHK_pos;
_tower = radioTower createVehicle _spawnPos;
_tower setDamage 0.99;
_tower addEventHandler ["Killed",{"Radio Tower Destroyed. The enemies can no longer call in Reinforcements" remoteExec ["hint"]; "radioMarker" setMarkerColor "colorWEST"; radioTowerObj = true; []spawn{sleep 5; ["radioTowerObj",'Succeeded'] call bis_fnc_taskSetState}}];
twc_aoBoolArray pushback radioTowerObj;

_spawnPos = [(_spawnPos select 0) + 5,(_spawnPos select 1), (_spawnPos select 2)];
_unit = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
[_unit, _spawnPos, 50] call TWC_Domination_fnc_patrol;
		
_markerstr = createMarker ["radioMarker",_spawnPos];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "loc_Transmitter";
_markerstr setMarkerColor "colorEAST";
_markerstr setMarkerSize [0.75,0.75];

[West,["radioTowerObj"],["Destroy the radio tower to stop the enemies from calling in reinforcements","Destroy the Radio Tower",""],(getMarkerPos _markerstr),false,1,false,"radio",False] call BIS_fnc_taskCreate;

for "_i" from 1 to 3 do {
	_spawnPos = [_pos,[200,500],random 360,0] call SHK_pos;
	_unit = [_spawnPos, EAST, squadAA] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 6 do {
	_spawnPos = [_pos,[0,250],random 360,0] call SHK_pos;
	_unit = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 150] call TWC_Domination_fnc_defend;
};
for "_i" from 1 to 7 do {
	_spawnPos = [_pos,[200,600],random 360,0] call SHK_pos;
	_unit = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 1 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_unit = [_spawnPos, EAST, tank] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 1 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_unit = [_spawnPos, EAST, ifv] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 300] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 3 do {
	_spawnPos = [_pos,[400,700],random 360,0,[1,100]] call SHK_pos;
	_unit = [_spawnPos, EAST, apc] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 300] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 2 do {
	_spawnPos = [_pos,[400,500],random 360,0,[1,100]] call SHK_pos;
	_unit = [_spawnPos, EAST, aa] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};

_spawnPos = [_pos,[0,200],random 360,0,[1,100]] call SHK_pos;
_unit = [_spawnPos, EAST, attackHelo] call BIS_fnc_spawnGroup;
[_unit, _spawnPos, 1000,8] call TWC_Domination_fnc_patrol;