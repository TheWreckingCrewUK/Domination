params["_pos"];

extraOBJ = false;

//Finds if Hardpoint objective is valid
_hardPoint = false;
_allBuildings = _pos nearObjects ["Building", 200];
_validBuildings = [];
{
	_allPositions = _x buildingPos -1;
	if(count _allPositions >=10 && typeOf _x != "land_BagBunker_Large_F")then{
		_validBuildings pushback _x;
		_hardPoint = true;
	};
}forEach _allBuildings;

_randNum = random 100;
if(_randNum < 75 && _hardPoint)then{
	//Hardpoint OBJ
	_building = _validBuildings call BIS_fnc_selectRandom;
	_group = createGroup East;
	hardPointEnemies = 0;
	{
		hardPointEnemies= hardPointEnemies + 1;
		_unit = _group createUnit [TWC_Domination_hardpointSoldierType, _x,[],0,""];
		_unit disableAI "PATH";
		_unit addEventHandler ["Killed",{
			params ["_unit", "_killer", "_instigator", "_useEffects"];
			hardPointEnemies = hardPointEnemies - 1;
			if(hardPointEnemies < 5)then{
				[]spawn{
					sleep 1; extraOBJ = true; ["extraOBJ","SUCCEEDED"] call BIS_fnc_taskSetState
				};
			};
		}];
	}forEach (_building buildingPos -1);
	
	[West,["extraOBJ"],["Enemies are concentrated in this building. We will need to clear it room by room.","Clear the HardPoint."],getPos _building,false,1,false,"destroy",False] call BIS_fnc_taskCreate;

}else{
	//If failures above always spawn artillery base
	
	//Artillery Base
	_spawnPos = [_pos,[200,400],random 360,0,[1,100]] call SHK_pos;
	_dir = [_spawnPos, getMarkerPos "respawn_west"] call BIS_fnc_dirTo;
	_unit = [_spawnPos, EAST, spg] call BIS_fnc_spawnGroup;
	(vehicle (leader _unit)) setFuel 0;
	(vehicle (leader _unit)) setDir _dir;
	(vehicle (leader _unit)) addEventHandler ["Killed",{[]spawn{sleep 1; extraOBJ = true; ["extraOBJ","SUCCEEDED"] call BIS_fnc_taskSetState}}];
	(leader _unit) addEventHandler ["Killed",{[]spawn{sleep 1; extraOBJ = true; ["extraOBJ","SUCCEEDED"] call BIS_fnc_taskSetState}}];
	["comp_artilleryBaseSmall", ((getDir (vehicle (leader _unit))) - 90), _spawnPos] execVM "Domination_Core\server\sys_compositions\createComposition.sqf";
	twc_aoBoolArray pushback extraOBJ;

	[West,["extraOBJ"],["Destroy the enemy Artillery. You may need a demolition block to make sure the vehicle complelty explodes","Destroy Artillery Site."],_spawnPos,false,1,false,"destroy",False] call BIS_fnc_taskCreate;
};