_handle = addMissionEventHandler ["HandleDisconnect",{
	params["_unit","_id","_uid","_name"];
	if(_unit distance2D (getMarkerPos "base") < 200) then{
		deleteVehicle _unit;
	}else{
		[_unit] spawn TWC_Flashpoint_fnc_deleteDead;
	};
}];