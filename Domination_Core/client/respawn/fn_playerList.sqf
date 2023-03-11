TWC_Domination_fnc_playerListAction = {
	actions = [];
	actions set [0, player addAction ["<t color = '#145A32'>PlayerList</t>", {
		if (count actions == 1) then {
			actions set [1, player addAction [" Alpha List ", {
				execVM "Domination_Core\client\playerList\alpha.sqf";
				{
					player removeAction _x;
				} forEach actions;
				call TWC_Domination_fnc_playerListAction;
			}, [], 1, false, false]];
			actions set [2, player addAction [" Bravo List ", {
				execVM "Domination_Core\client\playerList\bravo.sqf";
				{
					player removeAction _x;
				} forEach actions;
				call TWC_Domination_fnc_playerListAction;
			}, [], 1, false, false]];
			actions set [3, player addAction [" Charlie List ", {
				execVM "Domination_Core\client\playerList\charlie.sqf";
				{
					player removeAction _x;
				} forEach actions;
				call TWC_Domination_fnc_playerListAction;
			}, [], 1, false, false]];
			actions set [4, player addAction [" Air List ", {
				execVM "Domination_Core\client\playerList\air.sqf";
				{
					player removeAction _x;
				} forEach actions;
				call TWC_Domination_fnc_playerListAction;
			}, [], 1, false, false]];
			actions set [5, player addAction [" Armour List ", {
				execVM "Domination_Core\client\playerList\armourcrew.sqf";
				{
					player removeAction _x;
				} forEach actions;
				call TWC_Domination_fnc_playerListAction;
			}, [], 1, false, false]];
		};
	}, [], 1, false, false,"","true"]];
};
call TWC_Domination_fnc_playerListAction;