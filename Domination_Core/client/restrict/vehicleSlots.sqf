/*
player addEventHandler ["GetInMan",{
	params["_unit","_role","_vehicle","_turret"];
	
	hint format["%1, %2, %3, %4",_unit, _role, _vehicle, _turret];
}];
*/
player addEventHandler ["GetInMan",{
	params["_unit","_role","_vehicle","_turret"];
	
	if(typeOf _vehicle == "CUP_B_AW159_GB")then{
		if(_role in ["cargo","gunner"] || player == bafhelo)exitWith{};
		hint "You cannot Fly this Helicopter";
		moveOut player;
	};
	if(typeOf _vehicle == "CUP_B_UH60M_US")then{
		if(_role in ["cargo","gunner"] || player == ushelo)exitWith{};
		hint "You cannot Fly this Helicopter";
		moveOut player;
	};
	if(typeOf _vehicle == "B_AFV_Wheeled_01_up_cannon_F" || typeOf _vehicle == "B_APC_wheeled_01_cannon_F" || typeOf _vehicle == "B_MBT_01_TUSK_F")then{
		if(_role in ["cargo"] || player in [armour1, armour2, armour3])exitWith{};
		hint "You cannot drive / gun / command this vehicle";
		moveOut player;
	};
}];