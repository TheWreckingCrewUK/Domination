//Disable hearing ai talk
enableSentences false;
 
//Enable or Disable Debug
twc_playerDebug = false;

twc_restrictedPrimaryWeapons = [""];
twc_restrictedSecondaryWeapons = [""];
twc_restrictedHangunWeapons = [""];

// Here be the list of vehicles, its restricted slots and players exempt from that
// always class names of the objects, including the player (so for example British Pilot = Modern_British_heliPilot)

// FORMAT:
// ["vehicle class name", ["slot name", ["acceptable person 1", ...]]],
// known slot names (verbatim): "driver", "gunner", "commander", "Turret", or "cargo"
// if the last value is a number then that is the minimum player count before that vehicle can be used.
// if the second to last value is a number then that is the max player count until that vehicle can be used.
// you can also restrict specific slots to different player counts by duplicating the vehicle entry, only having that one slot, and then inputting different count values.
//this is now stored in core as it's only rare for there to be differences to the normal, I'll put in exemption code if this ever becomes necessary
twc_restrictedVehicleSlots = [	

		["CUP_B_AH1_DL_BAF",[ 
		["driver", 
			["Modern_British_HeliPilot"]
		],
		["gunner", 
			["Modern_British_crewchief"]
		]],14
	]
	];
//Slot Restrictions. TBA when we are doing more then just testing
_justPlayers = count(allPlayers - entities "HeadlessClient_F");
if(false)then{
	["End2", false, 0] call BIS_fnc_endMission;
};

execVM "Domination_Core\client\init.sqf";

//Set Radios Correctly
waitUntil {!isNull player};
sleep 2;
_radioID = [getText (configFile >> "cfgVehicles" >> (typeOf player) >> "twc_radioType")] call acre_api_fnc_getRadioByType;
_channelNumber = getNumber (configFile >> "cfgVehicles" >> (typeOf player) >> "twc_radioChannel");
_switchChannel = [_radioID, _channelNumber] call acre_api_fnc_setRadioChannel;
Hint parseText format ["<t color='#d0dd00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Radio Set</t><br/><t color='#d0dd00' size='0.8' shadow='1' shadowColor='#565656' align='left'>Radio:</t><t color='##013bb6' size='0.8' shadow='1' shadowColor='#565656' align='right'>%1</t><br/><t color='#d0dd00' size='0.8' shadow='1' shadowColor='#565656' align='left'>Channel:</t><t color='##013bb6' size='0.8' shadow='1' shadowColor='#565656' align='right'>%2</t>",getText (configFile >> "cfgVehicles" >> (typeOf player) >> "twc_radioType"),_channelNumber];