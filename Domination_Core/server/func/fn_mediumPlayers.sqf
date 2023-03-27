params["_pos","_name"];

towerCount = 1;
lowPlayerCount  = 1;

//sets extra objectives as true since they do not exist in low players
radioTowerObj = true;
aoBunkerThree = true;

for "_i" from 1 to 3 do {
	_spawnPos = [_pos,[100,200],random 360,0] call SHK_pos;
	_unit = [_spawnPos, EAST, squadAA] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 4 do {
	_spawnPos = [_pos,[0,150],random 360,0] call SHK_pos;
	_unit = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 150] call TWC_Domination_fnc_defend;
};
for "_i" from 1 to 3 do {
	_spawnPos = [_pos,[100,300],random 360,0] call SHK_pos;
	_unit = [_spawnPos, EAST, squad] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 2 do {
	_spawnPos = [_pos,[100,300],random 360,0,[1,100]] call SHK_pos;
	_unit = [_spawnPos, EAST, apc] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 300] call TWC_Domination_fnc_patrol;
};
for "_i" from 1 to 1 do {
	_spawnPos = [_pos,[100,300],random 360,0,[1,100]] call SHK_pos;
	_unit = [_spawnPos, EAST, aa] call BIS_fnc_spawnGroup;
	[_unit, _spawnPos, 200] call TWC_Domination_fnc_patrol;
};