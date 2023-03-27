//On respawn and mission start sets the radio's
//need small sleep so player posts

//Alpha loses their radio due to code. There is a fix, but I don't wanna
//They have to be added here
sleep 2;
_radioId = "";
switch (player) do{
	case bafp1: {player addItem "ACRE_PRC343"; sleep 1; _radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel; _radioId = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp2: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp3: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp4: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp5: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp6: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp7: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafp8: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case bafmed: {player addItem "ACRE_PRC343"; sleep 1;_radioId = ["ACRE_PRC343"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case usp1: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel; _radioId = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case usp2: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp3: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp4: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp5: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp6: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp7: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp8: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usp9: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usmed: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 2] call acre_api_fnc_setRadioChannel};
	case usmcp1: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel; _radioId = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case usmcp2: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp3: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp4: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp5: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp6: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp7: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp8: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp9: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp10: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp11: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp12: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcp13: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case usmcmed: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 3] call acre_api_fnc_setRadioChannel};
	case bafhelo: {player addItem "ACRE_PRC343"; sleep 1; _radioId = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case ushelo: {_radioId = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case armour1: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 4] call acre_api_fnc_setRadioChannel; _radioId = ["ACRE_PRC117F"] call acre_api_fnc_getRadioByType; [_radioId, 1] call acre_api_fnc_setRadioChannel};
	case armour2: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 4] call acre_api_fnc_setRadioChannel};
	case armour3: {_radioId = ["ACRE_PRC148"] call acre_api_fnc_getRadioByType; [_radioId, 4] call acre_api_fnc_setRadioChannel};
	default {hint "Error with setting radio channel. You will have to do it manually"};
};