//These have to go in the init because when a plyer dismounts a vehicle the vehicle is local to them
vehicleRespawnDistancePlayers = 1000;
vehicleRespawnDistanceForwardBase = 300;
vehicleRespawnDelay = 10;

twc_fnc_vehicleRespawn = compile preprocessfilelinenumbers "Domination_Core\server\sys_vehicleRespawn\fnc_vehicleRespawn.sqf";