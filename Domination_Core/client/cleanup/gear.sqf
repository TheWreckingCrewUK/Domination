player addEventHandler ["InventoryClosed", {
		if(typeOf vehicle (_this select 1) == "groundWeaponHolder" && (_this select 0) distance (getMarkerPos "respawn_West") < 200) then{
		deleteVehicle (_this select 1);
	};
}];