//USMC Squad Leader
 if (typeOf vehicle player == "Modern_USMC_Squadleader") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_m203_acog_lazer",1],
        ["ACE_Vector",1],
		["rhsusf_weap_m1911a1",1]
    ];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
        ["rhsusf_mag_7x45acp_MHP",15],
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
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["rhsusf_acc_ACOG",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACE_DAGR",1],
		["ACRE_PRC117F",1],
		["ACRE_PRC148",1],
		["itemCTAB",1],
		["ACE_IR_Strobe_Item",1]
	];
};
//USMC Team Leader
 if (typeOf vehicle player == "Modern_USMC_Teamleader") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_m203_acog_lazer",1],
        ["ACE_Vector",1],
		["rhs_weap_M136_hedp",2],
		["rhsusf_weap_m1911a1",1]
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
        ["rhsusf_mag_7x45acp_MHP",15],
		["HandGrenade",5]
	];

    _tmp_items = 
	[
		["rhsusf_acc_ACOG",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACRE_PRC148",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["ACE_IR_Strobe_Item",1]
		
	];
};

//USMC Rifleman
 if (typeOf vehicle player == "Modern_USMC_Rifleman") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],
		["UK3CB_BAF_Javelin_Slung_Tube",2],
		["UK3CB_BAF_Javelin_CLU",1],
		["CUP_launch_Mk153Mod0",1],
		["rhs_weap_M136_hedp",2],
		["rhs_weap_m72a7",2]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["CUP_SMAW_HEAA_M",3],
		["CUP_SMAW_HEDP_M",3],
		["CUP_SMAW_Spotting",8],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_ACOG",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACRE_PRC148",1],
		["CUP_optic_SMAW_Scope",1]
	];
};

//USMC Auto Rifleman
if (typeOf vehicle player == "Modern_USMC_Autorifleman") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m249_pip_L_mgo_lazer",1],
		["twc_rhs_weap_m27iar_grip_acog_lazer",1]
	];

    _tmp_magazines =
    [
        ["rhsusf_100Rnd_556x45_soft_pouch",20],
		["rhsusf_200Rnd_556x45_soft_pouch",10],
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_ELCAN",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["bipod_01_F_blk",1],
		["ACRE_PRC148",1]
	];
};

//USMC Auto Rifleman Assistant
if (typeOf vehicle player == "Modern_USMC_AsstAutorifleman") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],     
		["rhs_weap_M136_hedp",2],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["rhsusf_100Rnd_556x45_soft_pouch",10],
		["rhsusf_200Rnd_556x45_soft_pouch",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_ACOG",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACRE_PRC148",1]
	];
};
//USMC Machine Gunner
if (typeOf vehicle player == "Modern_USMC_MachineGunner") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m240B_mgo_lazer",1],
		["rhsusf_weap_m1911a1",1]
	];

    _tmp_magazines =
    [
		["rhsusf_100Rnd_762x51",20],
		["rhsusf_100Rnd_762x51_m62_tracer",10],
        ["rhsusf_mag_7x45acp_MHP",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_ELCAN",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACRE_PRC148",1]
	];
};

//USMC Machine Gunner Assistant
if (typeOf vehicle player == "Modern_USMC_AsstMachineGunner") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],
		["rhs_weap_M136_hedp",2],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["rhsusf_100Rnd_762x51",10],
		["rhsusf_100Rnd_762x51_m62_tracer",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_ACOG",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACRE_PRC148",1]
	];
};

//USMC Medic
 if (typeOf vehicle player == "Modern_USMC_Medic") then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["ACE_elasticBandage", 50],
		["ACE_quikclot", 50],
		["ACE_packingBandage", 50],
		["ACE_personalAidKit", 1],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_atropine", 50],
		["ACE_salineIV",50],
		["ACE_bodyBag",10],
		["ACE_tourniquet", 5],
		["rhsusf_acc_ACOG",1],
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["rhsusf_assault_eagleaiii_ocp",1],
		["ACRE_PRC148",1]
	];
};