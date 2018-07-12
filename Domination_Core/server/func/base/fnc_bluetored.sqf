/*If !isnil base then
Create a dummy marker and delete the proper one. 

Change the current trigger’s activation to blufor

waituntil count players == 0 then if there’s still no patrolbase then if there’s no base then end the mission
} else{
Create the proper marker and delete the dummy one
Change the current trigger’s activation to opfor
*/

if ((getMarkerColor "base" == "")) exitwith {};

if (!isServer) exitWith {};
//systemchat "switching";
[] spawn {
	//systemchat "switched base to opfor"; 
	_marker = createmarker ["dummybase", getmarkerpos "base"]; 
	_marker setMarkerShape "ICON";
	_marker setMarkerType "b_hq";
	_marker setMarkerText "BASE (UNSAFE)";
	_marker setMarkerColor "colorred";
	
	"BASE IN CONTACT, RESPAWN DISABLED" remoteExec ["hint"];

	deletemarker "base";

	_marker = createmarker ["dummyres", getmarkerpos "respawn_west"]; 
	_marker setMarkerShape "ICON";
	_marker setMarkerType "b_hq";
	_marker setMarkerText "BASE (UNSAFE)";
	_marker setMarkerColor "colorred";
	_marker setMarkeralpha 0;

	deletemarker "respawn_west";
	 
	twcdomi_baseside = 1;
	publicVariable "twcdomi_baseside";

	//mainbase setTriggerActivation ["WEST", "PRESENT", true];

	//mainbase setTriggerStatements ["count thislist > (floor((count allplayers) / 2))","[""thistrigger""] call twc_fnc_changebase;", ""];
	///mainbase setTriggerStatements ["true","[""thistrigger""] call twc_fnc_changebase;", ""];

	waituntil {({isPlayer _x && alive _x} count allUnits)==0};
	if (getMarkerColor "base" == "") then { 
	if ((getMarkerColor "respawn_forwardBase" == "") ) then {
	//systemchat "no base and no backup";
	"baselost" call BIS_fnc_endMissionServer;} else {
	//systemchat "got a backup"
	};
	};
};