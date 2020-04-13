//US Section Leader
if (typeOf vehicle player == "TWC_Modern_US_Army_SectionCommander") then {
    _tmp_weapons =
    [
		["rhs_weap_m4_carryhandle_pmag",1],
        ["ACE_Vector",1],
		["rhsusf_weap_m9",1]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["rhsusf_mag_15Rnd_9x19_JHP",15],
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
		["rhsusf_acc_anpeq15_bk",1],
		["rhsusf_acc_compm4",1],
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
		["rhs_weap_m4a1_carryhandle_m203",1],
        ["ACE_Vector",1],
		["rhs_weap_M136_hedp",2],
		["rhsusf_weap_m9",1],
		["rhs_weap_m72a7",4]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["rhsusf_mag_15Rnd_9x19_JHP",15],
		["1Rnd_HE_Grenade_shell", 40],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],
		["rhsusf_8Rnd_00Buck",10],
		["rhsusf_8Rnd_Slug",10],
		["rhsusf_100Rnd_556x45_mixed_soft_pouch",20],
		["rhsusf_200rnd_556x45_mixed_box",10],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_MapTools",1],
		["UK3CB_BAF_TA31F_3D",1],
		["rhsusf_acc_anpeq15_bk",1],
		["UK3CB_BAF_TA31F",1],
		["UK3CB_BAF_Eotech",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1],
		["rhsusf_acc_compm4",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_wirecutter", 1]
    ];
};

//US Rifleman
 if (typeOf vehicle player == "TWC_Modern_US_Army_Rifleman") then {
    _tmp_weapons =
    [
        ["rhs_weap_m4a1_carryhandle_grip",1],
		["rhs_weap_M590_8RD",1],
		["rhs_weap_fim92",1],
		["rhs_weap_smaw_optic",1],
		["rhsusf_weap_m9",1],
		["rhs_weap_M136_hedp",4],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["rhsusf_mag_15Rnd_9x19_JHP",15],
		["rhsusf_8Rnd_00Buck",10],
		["rhsusf_8Rnd_Slug",10],
		["rhs_mag_smaw_HEAA",8],
		["rhs_mag_smaw_HEDP",8],
		["rhs_mag_smaw_SR",5],
		["rhs_fim92_mag",3],
		["HandGrenade",5]
		
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_TA31F",1],
		["UK3CB_BAF_Eotech",1],
		["rhsusf_acc_anpeq15_bkA",1],
		["ACRE_PRC148",1],
		["rhsusf_acc_compm4",1]
	];
};

//US Automatic Rifleman
 if (typeOf vehicle player == "TWC_Modern_US_Army_AutomaticRifleman") then {
    _tmp_weapons =
    [
        ["rhs_weap_m249_pip",1],
		["rhsusf_weap_m9",1],
		["rhs_weap_m72a7",1]
	];

    _tmp_magazines =
    [
        ["rhsusf_100Rnd_556x45_mixed_soft_pouch",20],
		["rhsusf_200rnd_556x45_mixed_box",10],
		["ACE_SpareBarrel",1],
		["rhsusf_mag_15Rnd_9x19_JHP",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["rhsusf_acc_ELCAN",1],
		["rhsusf_acc_anpeq15_bkA",1],
		["UK3CB_BAF_Eotech",1],
		["ACRE_PRC148",1]
	];
};

//US Grenadier
 if (typeOf vehicle player == "TWC_Modern_US_Army_Grenadier") then {
    _tmp_weapons =
    [
        ["rhs_weap_m4a1_carryhandle_m203",1],
		["ACE_Yardage450",1],
		["rhsusf_weap_m9",1],
		["rhs_weap_M136_hedp",2],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["rhsusf_mag_15Rnd_9x19_JHP",15],
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
		["rhsusf_acc_anpeq15_bkA",1],
		["UK3CB_BAF_TA31F",1],
		["rhsusf_acc_compm4",1],
		["ACRE_PRC148",1]
	];
};

//US Marksmen
 if (typeOf vehicle player == "TWC_Modern_US_Army_Marksman") then {
    _tmp_weapons =
    [
        ["rhs_weap_m14ebrri",1],
		["rhs_weap_m4a1_carryhandle_grip",1],
		["rhsusf_weap_m9",1],
		["ACE_Vector",1],
		["rhs_weap_M136_hedp",2],
		["UK3CB_BAF_Javelin_Slung_Tube",3],
		["rhs_weap_m72a7",4]	
	];
       
    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["rhsusf_20Rnd_762x51_m118_special_Mag",25],
        ["rhsusf_mag_15Rnd_9x19_JHP",15],
		["HandGrenade",5]
    ];
		
	_tmp_items = 
	[
		["ACE_MapTools",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_LEUPOLDMK4",1],
		["rhsusf_acc_anpeq15_bkA",1],
		["rhsusf_assault_eagleaiii_ucp",1],
		["bipod_01_F_blk",1],
		["UK3CB_BAF_G_Tactical_Black",1],
		["ACRE_PRC148",1],
		["UK3CB_BAF_TA31F_3D",1],
		["UK3CB_BAF_TA31F",1],
		["UK3CB_BAF_Javelin_CLU",1],
		["rhsusf_acc_anpeq15_bkA",1]
	
	];
};
//US Medic
 if (typeOf vehicle player == "TWC_Modern_US_Army_Medic") then {
    _tmp_weapons =
    [
		["rhs_weap_m4a1_carryhandle_grip",1],
	    ["rhsusf_weap_m9", 1]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
        ["rhsusf_mag_15Rnd_9x19_JHP",15],
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
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15_bkA",1],
		["ACRE_PRC148",1]
	];
};
