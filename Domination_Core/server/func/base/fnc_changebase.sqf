/*If !isnil base then
Create a dummy marker and delete the proper one. 

Change the current trigger’s activation to blufor

waituntil count players == 0 then if there’s still no patrolbase then if there’s no base then end the mission
} else{
Create the proper marker and delete the dummy one
Change the current trigger’s activation to opfor
*/
params ["_thistrigger"];

if (!isServer) exitWith {};
//systemchat "switching";
 
 
if (!(getMarkerColor "base" == "")) then {
call twc_base_redtoblue;
} else {
call twc_base_bluetored;
};

