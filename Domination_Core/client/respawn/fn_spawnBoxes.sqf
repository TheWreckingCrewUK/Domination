//run it on the player so we can restrict spawns easier
if(player in BAFGroup)then{
	player addAction ["<t color = '#cc4d00'>Basic Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			_veh = "CUP_BOX_GB_Ammo_F" createVehicle (getPos infSpawner);
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			//Magazines
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_L85",15];
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_L85_Tracer_Red",6];
			_veh addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",2];
			_veh addMagazineCargoGlobal ["HandGrenade",6];
			_veh addMagazineCargoGlobal ["SmokeShell",6];
			_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
			_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",2];
			_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",4];
			_veh addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2];
			_veh addMagazineCargoGlobal ["CUP_20Rnd_762x51_L129_M",4];
			
			//items
			_veh addItemCargoGlobal ["ACE_fieldDressing",25];
			_veh addItemCargoGlobal ["ACE_splint",4];
			_veh addItemCargoGlobal ["ACE_morphine",4];
			_veh addItemCargoGlobal ["ACE_epinephrine",2];
			
			//Allow Dragging + carry
			[_veh, true, [0,1.5,0], 0, false] call ace_dragging_fnc_setDraggable;
			[_veh, true, [0,1,1], 0, false] call ace_dragging_fnc_setCarryable;
	},nil,10,false,false,"","cursorObject == infSpawner"];
};
if(player in USGroup)then{
	player addAction ["<t color = '#cc4d00'>Basic Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			_veh = "CUP_BOX_US_ARMY_Ammo_F" createVehicle (getPos infSpawner);
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			//Magazines
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag",15];
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_Tracer_Red",6];
			_veh addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",2];
			_veh addMagazineCargoGlobal ["HandGrenade",6];
			_veh addMagazineCargoGlobal ["SmokeShell",6];
			_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
			_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",2];
			_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4];
			_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag",4];
			_veh addMagazineCargoGlobal ["ACE_20Rnd_762x51_Mag_Tracer",2];
			
			//items
			_veh addItemCargoGlobal ["ACE_fieldDressing",25];
			_veh addItemCargoGlobal ["ACE_splint",4];
			_veh addItemCargoGlobal ["ACE_morphine",4];
			_veh addItemCargoGlobal ["ACE_epinephrine",2];
			
			//Allow Dragging + carry
			[_veh, true, [0,1.5,0], 0, false] call ace_dragging_fnc_setDraggable;
			[_veh, true, [0,1,1], 0, false] call ace_dragging_fnc_setCarryable;
	},nil,10,false,false,"","cursorObject == infSpawner"];
};
if (player in USMCGroup)then{
	player addAction ["<t color = '#cc4d00'>Basic Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			_veh = "CUP_BOX_USMC_Ammo_F" createVehicle (getPos infSpawner);
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			//Magazines
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag",20];
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_Tracer_Red",8];
			_veh addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",2];
			_veh addMagazineCargoGlobal ["HandGrenade",8];
			_veh addMagazineCargoGlobal ["SmokeShell",8];
			_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
			_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",2];
			_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4];
			_veh addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2];
			
			//items
			_veh addItemCargoGlobal ["ACE_fieldDressing",25];
			_veh addItemCargoGlobal ["ACE_splint",4];
			_veh addItemCargoGlobal ["ACE_morphine",4];
			_veh addItemCargoGlobal ["ACE_epinephrine",2];
			
			//Allow Dragging + carry
			[_veh, true, [0,1.5,0], 0, false] call ace_dragging_fnc_setDraggable;
			[_veh, true, [0,1,1], 0, false] call ace_dragging_fnc_setCarryable;
	},nil,10,false,false,"","cursorObject == infSpawner"];
};
if(player in MedicGroup)then{
	player addAction ["<t color = '#cc4d00'>Medical Supplies</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_medicalSupplyCrate_advanced" createVehicle (getPos infSpawner);
	},nil,10,false,false,"","cursorObject == infSpawner"];
};
//Code for Group specific ammobox
player addAction ["<t color = '#cc4d00'>HE Mortar Ammo</t>",{
	params ["_target", "_caller", "_actionId", "_arguments"];
		"ACE_Box_82mm_Mo_HE" createVehicle (getPos infSpawner);
},nil,10,false,false,"","cursorObject == infSpawner"];

player addAction ["<t color = '#cc4d00'>Mixed Mortar Ammo</t>",{
	params ["_target", "_caller", "_actionId", "_arguments"];
		"ACE_Box_82mm_Mo_Combo" createVehicle (getPos infSpawner);
},nil,10,false,false,"","cursorObject == infSpawner"];

player addAction ["<t color = '#cc4d00'>HE Mortar Ammo</t>",{
	params ["_target", "_caller", "_actionId", "_arguments"];
		"ACE_Box_82mm_Mo_HE" createVehicle (getPos infSpawner);
},nil,10,false,false,"","cursorObject == infSpawner"];

player addAction ["<t color = '#cc4d00'>Illum Mortar Ammo</t>",{
	params ["_target", "_caller", "_actionId", "_arguments"];
		"ACE_Box_82mm_Mo_Illum" createVehicle (getPos infSpawner);
},nil,10,false,false,"","cursorObject == infSpawner"];

player addAction ["<t color = '#cc4d00'>Smoke Mortar Ammo</t>",{
	params ["_target", "_caller", "_actionId", "_arguments"];
		"ACE_Box_82mm_Mo_Smoke" createVehicle (getPos infSpawner);
},nil,10,false,false,"","cursorObject == infSpawner"];

//Helicopters
if(player in PilotGroup)then{
	player addAction ["<t color = '#cc4d00'>BAF Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			_veh = "CUP_BOX_GB_Ammo_F" createVehicle (getPos heliSpawner);
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			//Magazines
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_L85",15];
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_L85_Tracer_Red",6];
			_veh addMagazineCargoGlobal ["CUP_17Rnd_9x19_glock17",2];
			_veh addMagazineCargoGlobal ["HandGrenade",6];
			_veh addMagazineCargoGlobal ["SmokeShell",6];
			_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
			_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",2];
			_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",4];
			_veh addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2];
			_veh addMagazineCargoGlobal ["CUP_20Rnd_762x51_L129_M",4];
			
			//items
			_veh addItemCargoGlobal ["ACE_fieldDressing",25];
			_veh addItemCargoGlobal ["ACE_splint",4];
			_veh addItemCargoGlobal ["ACE_morphine",4];
			_veh addItemCargoGlobal ["ACE_epinephrine",2];
			
			//Allow Dragging + carry
			[_veh, true, [0,1.5,0], 0, false] call ace_dragging_fnc_setDraggable;
			[_veh, true, [0,1,1], 0, false] call ace_dragging_fnc_setCarryable;
	},nil,10,false,false,"","cursorObject == heliSpawner"];
	
	player addAction ["<t color = '#cc4d00'>US Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			_veh = "CUP_BOX_US_ARMY_Ammo_F" createVehicle (getPos heliSpawner);
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			//Magazines
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag",15];
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_Tracer_Red",6];
			_veh addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",2];
			_veh addMagazineCargoGlobal ["HandGrenade",6];
			_veh addMagazineCargoGlobal ["SmokeShell",6];
			_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
			_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",2];
			_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4];
			_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag",4];
			_veh addMagazineCargoGlobal ["ACE_20Rnd_762x51_Mag_Tracer",2];
			
			//items
			_veh addItemCargoGlobal ["ACE_fieldDressing",25];
			_veh addItemCargoGlobal ["ACE_splint",4];
			_veh addItemCargoGlobal ["ACE_morphine",4];
			_veh addItemCargoGlobal ["ACE_epinephrine",2];
			
			//Allow Dragging + carry
			[_veh, true, [0,1.5,0], 0, false] call ace_dragging_fnc_setDraggable;
			[_veh, true, [0,1,1], 0, false] call ace_dragging_fnc_setCarryable;
	},nil,10,false,false,"","cursorObject == heliSpawner"];
	
	player addAction ["<t color = '#cc4d00'>USMC Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			_veh = "CUP_BOX_USMC_Ammo_F" createVehicle (getPos heliSpawner);
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			//Magazines
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag",20];
			_veh addMagazineCargoGlobal ["CUP_30Rnd_556x45_Stanag_Tracer_Red",8];
			_veh addMagazineCargoGlobal ["CUP_15Rnd_9x19_M9",2];
			_veh addMagazineCargoGlobal ["HandGrenade",8];
			_veh addMagazineCargoGlobal ["SmokeShell",8];
			_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
			_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",2];
			_veh addMagazineCargoGlobal ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4];
			_veh addMagazineCargoGlobal ["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2];
			
			//items
			_veh addItemCargoGlobal ["ACE_fieldDressing",25];
			_veh addItemCargoGlobal ["ACE_splint",4];
			_veh addItemCargoGlobal ["ACE_morphine",4];
			_veh addItemCargoGlobal ["ACE_epinephrine",2];
			
			//Allow Dragging + carry
			[_veh, true, [0,1.5,0], 0, false] call ace_dragging_fnc_setDraggable;
			[_veh, true, [0,1,1], 0, false] call ace_dragging_fnc_setCarryable;
	},nil,10,false,false,"","cursorObject == heliSpawner"];
	
	player addAction ["<t color = '#cc4d00'>Medical Supplies</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_medicalSupplyCrate_advanced" createVehicle (getPos heliSpawner);
	},nil,10,false,false,"","cursorObject == heliSpawner"];
	
		player addAction ["<t color = '#cc4d00'>HE Mortar Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_Box_82mm_Mo_HE" createVehicle (getPos heliSpawner);
	},nil,10,false,false,"","cursorObject == heliSpawner"];

	player addAction ["<t color = '#cc4d00'>Mixed Mortar Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_Box_82mm_Mo_Combo" createVehicle (getPos heliSpawner);
	},nil,10,false,false,"","cursorObject == heliSpawner"];

	player addAction ["<t color = '#cc4d00'>HE Mortar Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_Box_82mm_Mo_HE" createVehicle (getPos heliSpawner);
	},nil,10,false,false,"","cursorObject == heliSpawner"];

	player addAction ["<t color = '#cc4d00'>Illum Mortar Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_Box_82mm_Mo_Illum" createVehicle (getPos heliSpawner);
	},nil,10,false,false,"","cursorObject == heliSpawner"];

	player addAction ["<t color = '#cc4d00'>Smoke Mortar Ammo</t>",{
		params ["_target", "_caller", "_actionId", "_arguments"];
			"ACE_Box_82mm_Mo_Smoke" createVehicle (getPos heliSpawner);
	},nil,10,false,false,"","cursorObject == heliSpawner"];
};