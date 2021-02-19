
//Polish Section
 if (typeOf vehicle player in ["Modern_pol_Base", "Modern_pol_Base_d"]) then {
    _tmp_weapons =
    [
        ["twc_ak74_pol",1],
        ["CUP_launch_M136",5]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_AK",50],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_AK",30],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
		["ACRE_PRC148",1],
		["CUP_NVG_PVS14",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};


 if (typeOf vehicle player in ["Modern_pol_medic", "Modern_pol_medic_d"]) then {
    _tmp_weapons =
    [
        ["twc_ak74_pol",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_AK",30],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_AK",10],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
		["ACRE_PRC148",1],
		["TWC_Item_Medical_SutureKit_20", 5],
		["ACE_fieldDressing", 50],
		["ACE_elasticBandage", 50],
		["ACE_quikclot", 50],
		["ACE_packingBandage", 50],
		["ACE_morphine", 50],
		["ACE_epinephrine", 50],
		["ACE_atropine", 50],
		["ACE_salineIV",50],
		["ACE_salineIV_250",50],
		["ACE_salineIV_500",50],
		["ACE_personalAidKit", 1],
		["ACE_bodyBag", 10]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};



 if (typeOf vehicle player in ["Modern_pol_grenadier", "Modern_pol_grenadier_d"]) then {
    _tmp_weapons =
    [
        ["twc_ak74_gp25_pol",1],
        ["CUP_launch_RPG18",4]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_AK",50],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_AK",20],
		["CUP_1Rnd_HE_GP25_M",30],
		["CUP_1Rnd_SMOKE_GP25_M",30],
		["CUP_1Rnd_SMOKEGREEN_GP25_M",30],
		["CUP_1Rnd_SMOKERED_GP25_M",30],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
		["ACRE_PRC148",1],
		["CUP_NVG_PVS14",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

 if (typeOf vehicle player in ["Modern_pol_mg", "Modern_pol_mg_d"]) then {
    _tmp_weapons =
    [
        ["CUP_lmg_Pecheneg",1]
    ];

	_tmp_magazines =
    [
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",30],
		["ACE_SpareBarrel",1],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
		["ACRE_PRC148",1],
		["CUP_NVG_PVS14",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};


 if (typeOf vehicle player in ["Modern_pol_rifleman_at", "Modern_pol_rifleman_at_d"]) then {
    _tmp_weapons =
    [
        ["twc_ak74_pol",1],
        ["CUP_launch_FIM92Stinger",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_AK",50],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_AK",20],
		["CUP_OG7_M",10],
		["CUP_PG7V_M",30],
		["CUP_PG7VL_M",10],

		["HandGrenade",5]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
		["ACRE_PRC148",1],
		["CUP_NVG_PVS14",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

 if (typeOf vehicle player in ["Modern_pol_commander", "Modern_pol_commander_d"]) then {
    _tmp_weapons =
    [
        ["ACE_Vector",1],
        ["CUP_launch_RPG18",3],
        ["twc_ak74_pol_2",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_AK",50],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_AK",20],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["ACRE_PRC148",1],
		["CUP_NVG_PVS14",1],
		["ACE_microDAGR",1],
		["ACRE_PRC117F",1]
	];
};

 if (typeOf vehicle player in ["Modern_pol_subcommander", "Modern_pol_subcommander_d"]) then {
    _tmp_weapons =
    [
        ["ACE_Vector",1],
        ["CUP_launch_RPG18",5],
        ["twc_ak74_pol_2",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_AK",50],
		["CUP_30Rnd_TE1_Red_Tracer_556x45_AK",30],
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",20],
		["ACE_SpareBarrel",1],
		["CUP_1Rnd_HE_GP25_M",30],
		["CUP_OG7_M",10],
		["CUP_PG7V_M",30],
		["CUP_PG7VL_M",10],

		["ATMine_Range_Mag", 5],
		["SLAMDirectionalMine_Wire_Mag", 5],
		["APERSMine_Range_Mag", 5],
		["APERSBoundingMine_Range_Mag", 5],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["ACRE_PRC148",1],
		["CUP_NVG_PVS14",1],
		["ACE_microDAGR",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2]
	];
};

