/*
* Event Handler to stop players from being morons with ace placed explosives
*/

["ace_explosives_place", {
	params ["_exp", "_dir", "_pitch", "_unit"];
	if (!(vehicle player == _unit)) exitwith {};
	//First check stops players from planting any explosive in base
	if((getPos _unit) distance2D (getMarkerPos "base") < 1000)exitWith{
		deleteVehicle _exp;
		hint "You Cannot place explosives this close to base";
	};
	
	if ((_exp iskindof "pipebombbase"))exitwith {};
	
	_marker = createMarker [format ["%1", _exp], getpos _exp];
	_marker setMarkerType "mil_triangle";
	_marker setMarkerColor "ColorOrange";
	_marker setMarkerText ("Mine");
	_marker setMarkerSize [0.75, 0.75];

	[_exp] spawn {
			params ["_exp"];
			
			_pos = getpos _exp;
			
			waituntil {!alive _exp};
			while {alive _exp} do {
				sleep 60;
			};
			deletemarker format ["%1", _exp];
			
			_marker = createMarker [format ["%1", _pos], _pos];
			_marker setMarkerType "mil_triangle";
			_marker setMarkerColor "ColorGreen";
			_marker setMarkerText ("Mine (Detonated)");
			_marker setMarkerSize [0.75, 0.75];
			
			sleep 1800;
			
			
			deletemarker format ["%1", _pos];
			
			
			};



	
}] call CBA_fnc_addEventHandler;