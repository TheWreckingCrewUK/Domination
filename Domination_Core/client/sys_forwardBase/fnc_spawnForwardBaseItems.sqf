params["_player",["_marker","forwardBase_itemSpawn"]];
_return = "";
_pos = getpos ammoboxspawner;
if(getMarkerColor "respawn_west_forwardBase" != "")exitWith{_return = "Forward Base is already Set up"; _return};

{
	deleteVehicle _x
}forEach (_pos nearObjects ["twc_portableGenerator",100]);
{
	deleteVehicle _x
}forEach (_pos nearObjects ["twc_radioTable",100]);
{
	deleteVehicle _x
}forEach (_pos nearObjects ["twc_SuppliesBox",100]);
{
	deleteVehicle _x
}forEach (_pos nearObjects ["twc_radioTable",100]);

"twc_radioTable" createVehicle _pos;
"twc_portableGenerator" createVehicle _pos;
//"twc_SuppliesBox" createVehicle _pos;
_return = "Items Created Successfully. You will need to bring one of the big containers if you want to spawn or repair vehicles when you get there";
_return