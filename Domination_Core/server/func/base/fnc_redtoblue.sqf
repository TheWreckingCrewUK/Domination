/*If !isnil base then
Create a dummy marker and delete the proper one. 

Change the current trigger’s activation to blufor

waituntil count players == 0 then if there’s still no patrolbase then if there’s no base then end the mission
} else{
Create the proper marker and delete the dummy one
Change the current trigger’s activation to opfor
*/


if (!(getMarkerColor "base" == "")) exitwith {};

if (!isServer) exitWith {};
//systemchat "switching";
[] spawn {

twc_changebase_enemy = 0;

_mainbase = createTrigger ["EmptyDetector", getmarkerpos "dummybase"];
_mainbase setTriggerArea [500, 500, 0, false];
_mainbase setTriggerActivation ["EAST", "PRESENT", true];
_mainbase setTriggerTimeout [10,10,0,True];
_mainbase setTriggerStatements ["count thislist > 4","twc_changebase_enemy = 1", "twc_changebase_enemy = 0"];

sleep 2;
//systemchat format ["checking %1", twc_changebase_enemy];

waituntil {(twc_changebase_enemy == 0)};
 
deletevehicle _mainbase;
	//systemchat "switching base to blufor"; 
	_marker = createmarker ["base", getmarkerpos "dummybase"]; 
	_marker setMarkerShape "ICON";
	_marker setMarkerType "b_hq";
	_marker setMarkerText "BASE";
	_marker setMarkerColor "colorBlufor";
	deletemarker "dummybase"; 
	
	twc_basepos = getmarkerpos "base";
	publicVariable "twc_basepos";

	_marker = createmarker ["respawn_west", getmarkerpos "dummyres"]; 
	_marker setMarkerShape "ICON";
	_marker setMarkerType "b_hq";
	_marker setMarkerText "BASE";
	_marker setMarkerColor "colorBlufor";
	_marker setMarkeralpha 0;
	deletemarker "dummyres"; 

	"BASE CLEAR, RESPAWN ENABLED" remoteExec ["hint"];

	twcdomi_baseside = 0;
	publicVariable "twcdomi_baseside";
	//mainbase setTriggerActivation ["east", "PRESENT", true]; 

	//mainbase setTriggerStatements ["count thislist > 4","[""thistrigger""] call twc_fnc_changebase;", ""];
};