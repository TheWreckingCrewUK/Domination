
if(isNil "basemode") then{
	basemode = 0;
	publicVariable "basemode";
};

if(isNil "basesafe") then{
	basesafe = 201;
	publicVariable "basesafe";
};

if(isNil "alarm") then{
	alarm = 0;
	publicvariable "alarm";
};


if(isNil "idfreported") then{
	idfreported = 0;
	publicvariable "idfreported";
};

if(isNil "idfon") then{
	idfon = 0;
	publicvariable "idfon";
};


if(isNil "idfGuns") then{
	idfGuns = [];
	publicvariable "idfGuns";
};


/*
twc_fnc_idf = compile preprocessfilelinenumbers "domination_core\server\sys_basedefence\IDF_Alarmfire.sqf";
twc_fnc_cram_init = compile preprocessfilelinenumbers "domination_core\server\sys_basedefence\IDF_cram_init.sqf";
twc_fnc_cram_init_2 = compile preprocessfilelinenumbers "domination_core\server\sys_basedefence\IDF_cram_init_2.sqf";

[] spawn {
waituntil {(!(isnil "twc_basepos"))};
{[_x] spawn twc_fnc_cram_init} foreach (twc_basepos nearobjects ["B_AAA_System_01_F", 5000]);
};

*/

/* code dump for future base attack plans

[] spawn {_pos = getmarkerpos "base";mortar1 lookat (_pos);for "_i" from 1 to 10 do {mortar1 doArtilleryFire [[_pos,150] call cba_fnc_randpos, currentmagazine mortar1, 1];sleep 5}; mortar1 lookat objnull;}

if ((((getposasl T1) select 2) - ((getposasl T2) select 2)) > 100) then don't spawn hasebs


 
T1 = mortar1;  
 
T2 = createVehicle ["Land_CanOpener_F", getmarkerpos "base", [], 0, "can_collide"];  
hideobject T1;  
_total = 5 + (random 30);     
for "_i" from 1 to _total do{   [] spawn {    
_timer = (1+ (random 120));   
_spawnpos = [position T1, 50] call CBA_fnc_randPos; 
_direction = _spawnpos getdir getmarkerpos "base";  
_range = (_spawnpos distance getmarkerpos "base"); deletevehicle T2;  



