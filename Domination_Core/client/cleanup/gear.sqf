player addEventHandler ["InventoryClosed", {
	if(typeOf vehicle (_this select 1) == "groundWeaponHolder" && (_this select 0) distance (getMarkerPos "respawn_West") < 200) then{
	if(str getBackpackCargo (_this select 1) == "[[],[]]")then{
			hintSilent "Weapons and Gear left on the ground will delete in the base";
			deleteVehicle (_this select 1);
		}else{
			hintSilent "You can leave your backpack on the ground in base for 5 minutes before it deletes";
		
			[(_this select 1)]spawn {
				params["_container"];
				_time = time + 300;
				waitUntil{sleep 1; !alive _container || _time < time};
				if(alive _container)then{
					hint "Your backpack left at base was deleted";
					deleteVehicle _container;
				}else{
					//Don't need to do anything
				};
			};
		};		
	};
}];