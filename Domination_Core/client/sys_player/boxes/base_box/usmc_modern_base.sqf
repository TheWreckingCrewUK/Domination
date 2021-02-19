//USMC Squad Leader
 if ((typeOf vehicle player) in ["Modern_USMC_Squadleader", "Modern_USMC_Squadleader_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_M203_ACOG_Laser",1],
        ["ACE_Vector",1],
		["CUP_hgun_Colt1911",1]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
        ["CUP_7Rnd_45ACP_1911",15],
		["1Rnd_HE_Grenade_shell", 30],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
		["HandGrenade",5]
	];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["CUP_optic_ACOG",1],
		["CUP_optic_CompM4	",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["CUP_B_US_IIID_OCP",1],
		["ACE_DAGR",1],
		["ACRE_PRC117F",1],
		["ACRE_PRC148",1],
		["itemCTAB",1],
		["ACE_IR_Strobe_Item",1]
	];
};
//USMC Team Leader
 if ((typeOf vehicle player) in ["Modern_USMC_Teamleader", "Modern_USMC_Teamleader_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_M203_ACOG_Laser",1],
        ["ACE_Vector",1],
		["CUP_launch_M136",2],
		["CUP_hgun_Colt1911",1]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["1Rnd_HE_Grenade_shell", 30],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
        ["CUP_7Rnd_45ACP_1911",15],
		["ATMine_Range_Mag", 5],
		["SLAMDirectionalMine_Wire_Mag", 5],
		["APERSMine_Range_Mag", 5],
		["APERSBoundingMine_Range_Mag", 5],
		["HandGrenade",5]
	];

    _tmp_items = 
	[
		["CUP_optic_ACOG",1],
		["CUP_optic_CompM4	",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["CUP_B_US_IIID_OCP",1],
		["ACRE_PRC148",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_IR_Strobe_Item",1]
		
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//USMC breacher
  if ((typeOf vehicle player) in ["Modern_USMC_Breacher", "Modern_USMC_Breacher_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_ACOG_Laser",1],
		["ACE_VMM3",1],
        ["CUP_hgun_Colt1911",1],
		["CUP_sgun_M1014",1]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["CUP_7Rnd_45ACP_1911",15],
		["CUP_8Rnd_B_Beneli_74Pellets",10],
		["CUP_8Rnd_B_Beneli_74Slug",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["CUP_acc_ANPEQ_15_Flashlight_Black_L	",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};


//USMC Rifleman
  if ((typeOf vehicle player) in ["Modern_USMC_Rifleman", "Modern_USMC_Rifleman_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_ACOG_Laser",1],
		["CUP_optic_SMAW_Scope",1],
		["CUP_launch_M136",2],
		["CUP_launch_FIM92Stinger",1],
		["CUP_launch_M72A6",4]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["CUP_SMAW_HEAA_M",8],
		["CUP_SMAW_Spotting",5],

		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//USMC Auto Rifleman
  if ((typeOf vehicle player) in ["Modern_USMC_Autorifleman", "Modern_USMC_Autorifleman_d"]) then {
    _tmp_weapons =
    [
        ["twc_CUP_lmg_m249_pip1_L_mgo_lazer",1],
		["CUP_arifle_M27_ACOG",1],
		["CUP_launch_M72A6",1]
	];

    _tmp_magazines =
    [
        ["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",20],
		["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10],
		["ACE_SpareBarrel",1],
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["CUP_acc_ANPEQ_15_Black",1],
		["bipod_01_F_blk",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//USMC Auto Rifleman Assistant
  if ((typeOf vehicle player) in ["Modern_USMC_AsstAutorifleman", "Modern_USMC_AsstAutorifleman_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_ACOG_Laser",1],     
		["CUP_launch_M136",1],
		["CUP_launch_M72A6",2]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["ACE_SpareBarrel",1],
		["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",10],
		["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["CUP_optic_CompM4	",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};
//USMC Machine Gunner
  if ((typeOf vehicle player) in ["Modern_USMC_MachineGunner", "Modern_USMC_MachineGunner_d"]) then {
    _tmp_weapons =
    [
        ["CUP_lmg_M240",1],
		["CUP_hgun_Colt1911",1]
	];

    _tmp_magazines =
    [
		["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",20],
		["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",10],
		["ACE_SpareBarrel",1],
        ["CUP_7Rnd_45ACP_1911",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["CUP_acc_ANPEQ_15_Black",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//USMC Machine Gunner Assistant
  if ((typeOf vehicle player) in ["Modern_USMC_AsstMachineGunner", "Modern_USMC_AsstMachineGunner_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_ACOG_Laser",1],
		["CUP_launch_M136",2],
		["CUP_launch_M72A6",2]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["ACE_SpareBarrel",1],
		["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["CUP_optic_CompM4	",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//USMC Medic
  if ((typeOf vehicle player) in ["Modern_USMC_Medic", "Modern_USMC_Medic_d"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_ACOG_Laser",1]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",20],
		["30Rnd_556x45_Stanag_Tracer_Red",5],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["TWC_Item_Medical_SutureKit_20", 5],
		["ACE_elasticBandage", 50],
		["ACE_quikclot", 50],
		["ACE_packingBandage", 50],
		["ACE_personalAidKit", 1],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_atropine", 50],
		["ACE_salineIV",50],
		["ACE_salineIV_250",50],
		["ACE_salineIV_500",50],
		["ACE_bodyBag",10],
		["ACE_tourniquet", 5],
		["CUP_optic_CompM4	",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};