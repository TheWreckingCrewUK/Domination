//TWC member ID array for locked spots
memberIDArray = ["_SP_PLAYER_","76561197970591603","76561197981096983","76561198035369460","76561197981208292","76561198024456870","76561197985821395","76561197988506092","76561197992669373","76561197996044352","76561198001649761","76561198005456546","76561198007975082","76561198010876571","76561198011283748","76561198013509033","76561198014078972","76561198016635135","76561198018609662","76561198018806047","76561198021236275","76561198027413658","76561198037881029","76561198039562456","76561198046761459","76561198049111014","76561198050180681","76561198050512686","76561198051847668","76561198054727971","76561198056177819","76561198056234590","76561198060979584","76561198061797079","76561198062338085","76561198063449316","76561198066275591","76561198067385164","76561198072029517","76561198072105856","76561198077371253","76561198078628958","76561198084557194","76561198095246437","76561198100339755","76561198105044351","76561198148511288","76561198161685880","76561198212968121","76561198269225193","76561198070630639","76561198010598279","76561198061214513","76561198022227167"];

//Below is the settings for restrictiong slots based on playercount.
_specialSlots = ["armour1","armour2","armour3","helo1","helo2","helo3","jet1"];

if ((str player) in _specialSlots)then{
	
	_UID = getPlayerUID player;

	if((_UID) != "_SP_PLAYER_") then{	
		_pilots = ["helo1", "helo2", "helo3"];
		_armour = ["armour1","armour2","armour3"];
		_jets = ["jet1"];
		_numPlayers = switch (str player) do{
			case "helo1": {5};
			case "helo2": {5};
			case "helo3": {5};
			case "armour1": {10};
			case "armour2": {10};
			case "armour3": {10};
			case "jet1": {30};
			default {hint "Please send a message to [TWC] jayman saying the FIRST init.sqf switch statement defaulted and what slot you are in."};
		};
		_justPlayers = count(allPlayers - entities "HeadlessClient_F");
		
		_pilotMultiplier = 0;
		if(isPlayer helo1)then{_pilotMultiplier = _pilotMultiplier + 1};
		if(isPlayer helo2)then{_pilotMultiplier = _pilotMultiplier + 1};
		if(isPlayer helo3)then{_pilotMultiplier = _pilotMultiplier + 1};
		hint str (_justPlayers * _pilotMultiplier);
		
		//Checks for playercount
		if ((str player) in _pilots && (_justPlayers * _pilotMultiplier) < _numPlayers) then {
			["End2", false, 0] call BIS_fnc_endMission;
		};
		
		if ((str player) in _armour && _justPlayers < _numPlayers) then {
			["End1", false, 0] call BIS_fnc_endMission;
		};
		
		if ((str player) in _jets && _justPlayers < _numPlayers) then {
			["End1", false, 0] call BIS_fnc_endMission;
		};
		//Check for member roles:
		if((str player) in _jets && !(_UID in memberIDArray))then{
			["End3", false, 0] call BIS_fnc_endMission;
		};
	};
};

//Other restricts
#include "baseAmmoBox.sqf";
#include "noFireInBase.sqf";
#include "vehicleSlots.sqf";