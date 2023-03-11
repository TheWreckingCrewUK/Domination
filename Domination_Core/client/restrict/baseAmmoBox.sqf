player addEventHandler ["InventoryOpened", {
	params ["_unit","_box","_secondaryContainer"];
	if(typeOf _box == "IG_supplyCrate_F")then{
		_box spawn{
			waitUntil {!isNull findDisplay 602};
			closeDialog 602;
			hint "You cannot use the Arsenal Box Inventory \n Use the Arsenal Action";
		};
	};
}];