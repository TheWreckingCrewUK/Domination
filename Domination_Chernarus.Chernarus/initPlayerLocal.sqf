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
twc_restrictedVehicleSlots = [
	["CUP_B_C130J_GB", 
		["driver", 
			["Modern_British_JetPilot"]
		],
		["commander", 
			["Modern_British_JetPilot"]
		]
	],
	
	["CUP_B_C130J_Cargo_GB",
		["driver",
			["Modern_British_JetPilot"]
		],
		["commander", 
			["Modern_British_JetPilot"]
		]
	],
	
	["CUP_B_UH1Y_Gunship_Dynamic_USMC", 
		["driver", 
			["Modern_USMC_HeliPilot"]
		],
		["commander", 
			["Modern_British_HeliPilot","Modern_USMC_HeliPilot"]
		]
	],	
	
	["CUP_B_AW159_GB", 
		["driver", 
			["Modern_British_HeliPilot"]
		],
		["commander", 
			["Modern_British_JetPilot","Modern_USMC_HeliPilot"]
		]
	],

	["CUP_B_CH47F_GB", 
		["driver", 
			["Modern_British_HeliPilot","Modern_USMC_HeliPilot"]
		],
		["commander", 
			["Modern_British_HeliPilot","Modern_British_JetPilot","Modern_USMC_HeliPilot"]
		]
	],	
	
	["CUP_B_UH60S_USN", 
		["driver", 
			["Modern_USMC_HeliPilot"]
		],
		["commander", 
			["Modern_British_JetPilot","Modern_USMC_HeliPilot"]
		]
	],	
	
	["RHS_UH60M_D", 
		["driver", 
			["Modern_USMC_HeliPilot"]
		],
		["commander", 
			["Modern_British_JetPilot","Modern_USMC_HeliPilot"]
		]
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