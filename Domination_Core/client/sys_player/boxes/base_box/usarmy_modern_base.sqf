//US Section Leader
if (typeOf vehicle player == "TWC_Modern_US_Army_SectionCommander") then {
    _tmp_weapons =
    [
		["CUP_arifle_M4A1",1],
        ["ACE_Vector",1],
		["CUP_hgun_M9",1]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["CUP_15Rnd_9x19_M9",15],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_MapTools",1],
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_TA31F",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["CUP_optic_CompM4	",1],
		["UK3CB_BAF_Eotech",1],
		["ACE_DAGR",1],
		["ACRE_PRC117F_ID_1",1],
		["ACRE_PRC148",1],
		["ACE_wirecutter", 1]
    ];
};

//US Team Leader
if (typeOf vehicle player == "TWC_Modern_US_Army_TeamLeader") then {
    _tmp_weapons =
    [
		["CUP_arifle_M4A1_GL_carryhandle",1],
        ["ACE_Vector",1],
		["CUP_launch_M136",2],
		["CUP_hgun_M9",1],
		["CUP_launch_M72A6",4]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["CUP_15Rnd_9x19_M9",15],
		["1Rnd_HE_Grenade_shell", 40],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],


		["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",20],
		["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_MapTools",1],
		["UK3CB_BAF_TA31F_3D",1],
		["CUP_acc_ANPEQ_15_Black",1],
		["UK3CB_BAF_TA31F",1],
		["UK3CB_BAF_Eotech",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1],
		["CUP_optic_CompM4	",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_wirecutter", 1]
    ];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//US Rifleman
 if (typeOf vehicle player == "TWC_Modern_US_Army_Rifleman") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1",1],

		["CUP_launch_FIM92Stinger",1],
		["CUP_optic_SMAW_Scope",1],
		["CUP_hgun_M9",1],
		["CUP_launch_M136",4],
		["CUP_launch_M72A6",4]
	];

    _tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["CUP_15Rnd_9x19_M9",15],


		["CUP_SMAW_HEAA_M",8],
		["CUP_SMAW_HEDP_M",8],
		["CUP_SMAW_Spotting",5],

		["HandGrenade",5]
		
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_TA31F",1],
		["UK3CB_BAF_Eotech",1],
		["CUP_acc_ANPEQ_15_BlackA",1],
		["ACRE_PRC148",1],
		["CUP_optic_CompM4	",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//US Automatic Rifleman
 if (typeOf vehicle player == "TWC_Modern_US_Army_AutomaticRifleman") then {
    _tmp_weapons =
    [
        ["CUP_lmg_m249_pip1",1],
		["CUP_hgun_M9",1],
		["CUP_launch_M72A6",1]
	];

    _tmp_magazines =
    [
        ["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",20],
		["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10],
		["ACE_SpareBarrel",1],
		["CUP_15Rnd_9x19_M9",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["CUP_optic_ElcanM145",1],
		["CUP_acc_ANPEQ_15_BlackA",1],
		["UK3CB_BAF_Eotech",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//US Grenadier
 if (typeOf vehicle player == "TWC_Modern_US_Army_Grenadier") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_GL_carryhandle",1],
		["ACE_Yardage450",1],
		["CUP_hgun_M9",1],
		["CUP_launch_M136",2],
		["CUP_launch_M72A6",4]
	];

    _tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["CUP_15Rnd_9x19_M9",15],
		["1Rnd_HE_Grenade_shell", 40],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_Eotech",1],
		["CUP_acc_ANPEQ_15_BlackA",1],
		["UK3CB_BAF_TA31F",1],
		["CUP_optic_CompM4	",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

//US Marksmen
 if (typeOf vehicle player == "TWC_Modern_US_Army_Marksman") then {
    _tmp_weapons =
    [
        ["CUP_srifle_M14_DMR",1],
		["CUP_arifle_M4A1",1],
		["CUP_hgun_M9",1],
		["ACE_Vector",1],
		["CUP_launch_M136",2],
		["UK3CB_BAF_Javelin_Slung_Tube",3],
		["CUP_launch_M72A6",4]	
	];
       
    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["CUP_20Rnd_762x51_DMR",25],
        ["CUP_15Rnd_9x19_M9",15],
		["HandGrenade",5]
    ];
		
	_tmp_items = 
	[
		["ACE_MapTools",1],
		["CUP_optic_CompM4	",1],
		["CUP_optic_LeupoldMk4",1],
		["CUP_acc_ANPEQ_15_BlackA",1],
		["CUP_B_US_IIID_UCP",1],
		["bipod_01_F_blk",1],
		["UK3CB_BAF_G_Tactical_Black",1],
		["ACRE_PRC148",1],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_TA31F",1],
		["UK3CB_BAF_Javelin_CLU",1],
		["CUP_acc_ANPEQ_15_BlackA",1]
	
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};
//US Medic
 if (typeOf vehicle player == "TWC_Modern_US_Army_Medic") then {
    _tmp_weapons =
    [
		["CUP_arifle_M4A1",1],
	    ["CUP_hgun_M9", 1]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
        ["CUP_15Rnd_9x19_M9",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["TWC_Item_Medical_SutureKit_20", 5],
		["ACE_elasticBandage", 50],
		["ACE_quikclot", 50],
		["ACE_packingBandage", 50],
		["ACE_personalAidKit", 5],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_atropine", 50],
		["ACE_salineIV",50],
		["ACE_salineIV_250",50],
		["ACE_salineIV_500",50],
		["ACE_bodyBag",10],
		["ACE_tourniquet", 5],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_Eotech",1],
		["CUP_optic_CompM4	",1],
		["CUP_acc_ANPEQ_15_BlackA",1],
		["ACRE_PRC148",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};
