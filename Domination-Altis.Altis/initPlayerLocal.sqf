//makes sure headless clients don't run this:
if (!hasInterface) exitWith {};
waitUntil{!isNull player};

//runs stuff only on the client
execVM "Domination_Core\client\init.sqf";

//We don't "respawn on start" so we need this"
/*
[] call TWC_Domination_fnc_earplugFix;
[] call TWC_Domination_fnc_playerList;
[] call TWC_Domination_fnc_removeWeapons;
[] spawn TWC_Domination_fnc_setRadio;