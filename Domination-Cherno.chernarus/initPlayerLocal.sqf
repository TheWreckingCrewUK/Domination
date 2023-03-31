//makes sure headless clients don't run this:
if (!hasInterface) exitWith {};
waitUntil{!isNull player};

//Arrays of group type. Used for ammo spawning
BAFGroup = [bafp1,bafp2,bafp3,bafp4,bafp5,bafp6,bafp7,bafp8,bafmed];
USGroup = [usp1,usp2,usp3,usp4,usp5,usp5,usp6,usp7,usp8,usp9,usmed];
USMCGroup = [usmcp1,usmcp2,usmcp3,usmcp4,usmcp5,usmcp6,usmcp7,usmcp8,usmcp9,usmcp10,usmcp11,usmcp12,usmcp13,usmcmed];
CDFGroup = [cdfp1,cdfp2,cdfp3,cdfp4,cdfp5,cdfp6,cdfp7,cdfp8,cdfp9,cdfmed];
MedicGroup = [bafmed,usmed,usmcmed,cdfmed];
ArmourGroup = [armour1,armour2,armour3];
PilotGroup = [bafhelo,ushelo];

//runs stuff only on the client
execVM "Domination_Core\client\init.sqf";

//We don't "respawn on start" so we need this"
/*
[] call TWC_Domination_fnc_earplugFix;
[] call TWC_Domination_fnc_playerList;
[] call TWC_Domination_fnc_removeWeapons;
[] spawn TWC_Domination_fnc_setRadio;
[] call TWC_Domination_fnc_spawnBoxes;
[] call TWC_Domination_fnc_weaponAssembleFix;