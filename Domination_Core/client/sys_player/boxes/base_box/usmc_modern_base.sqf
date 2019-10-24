//USMC Squad Leader
 if ((typeOf vehicle player) in ["Modern_USMC_Squadleader", "Modern_USMC_Squadleader_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_m203_acog_lazer",1],
        ["ACE_Vector",1],
		["rhsusf_weap_m1911a1",1]
    ];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",20],
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
		["DemoCharge_Remote_Mag",3],
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
 if ((typeOf vehicle player) in ["Modern_USMC_Teamleader", "Modern_USMC_Teamleader_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_m203_acog_lazer",1],
        ["ACE_Vector",1],
		["rhs_weap_M136_hedp",2],
		["rhsusf_weap_m1911a1",1]
    ];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",20],
		["1Rnd_HE_Grenade_shell", 30],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
        ["rhsusf_mag_7x45acp_MHP",15],
		["ATMine_Range_Mag", 5],
		["SLAMDirectionalMine_Wire_Mag", 5],
		["APERSMine_Range_Mag", 5],
		["APERSBoundingMine_Range_Mag", 5],
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
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_IR_Strobe_Item",1]
		
	];
};

//USMC breacher
  if ((typeOf vehicle player) in ["Modern_USMC_Breacher", "Modern_USMC_Breacher_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],
		["ACE_VMM3",1],
        ["rhsusf_weap_m1911a1",1],
		["twc_benelli_m4",1]
	];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",10],
        ["rhsusf_mag_7x45acp_MHP",15],
		["CUP_8Rnd_B_Beneli_74Pellets",10],
		["CUP_8Rnd_B_Beneli_74Slug",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
        ["ACE_MapTools",1],
		["rhsusf_acc_anpeq15_bk_light",1],
		["ACRE_PRC148",1]
	];
};


//USMC Rifleman
  if ((typeOf vehicle player) in ["Modern_USMC_Rifleman", "Modern_USMC_Rifleman_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],
		["rhs_weap_smaw_gr_optic",1],
		["rhs_weap_M136_hedp",2],
		["rhs_weap_fim92",1],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",10],
		["rhs_mag_smaw_HEAA",8],
		["rhs_mag_smaw_SR",5],
		["rhs_fim92_mag",3],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC148",1]
	];
};

//USMC Auto Rifleman
  if ((typeOf vehicle player) in ["Modern_USMC_Autorifleman", "Modern_USMC_Autorifleman_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m249_pip_L_mgo_lazer",1],
		["twc_rhs_weap_m27iar_grip_acog_lazer",1],
		["rhs_weap_m72a7",1]
	];

    _tmp_magazines =
    [
        ["rhsusf_100Rnd_556x45_mixed_soft_pouch",20],
		["rhsusf_200rnd_556x45_mixed_box",10],
		["ACE_SpareBarrel",1],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",20],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_anpeq15A",1],
		["bipod_01_F_blk",1],
		["ACRE_PRC148",1]
	];
};

//USMC Auto Rifleman Assistant
  if ((typeOf vehicle player) in ["Modern_USMC_AsstAutorifleman", "Modern_USMC_AsstAutorifleman_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],     
		["rhs_weap_M136_hedp",1],
		["rhs_weap_m72a7",2]
	];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",20],
		["ACE_SpareBarrel",1],
		["rhsusf_100Rnd_556x45_mixed_soft_pouch",10],
		["rhsusf_200rnd_556x45_mixed_box",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["ACRE_PRC148",1]
	];
};
//USMC Machine Gunner
  if ((typeOf vehicle player) in ["Modern_USMC_MachineGunner", "Modern_USMC_MachineGunner_d"]) then {
    _tmp_weapons =
    [
        ["rhs_weap_m240B_twcslow",1],
		["rhsusf_weap_m1911a1",1]
	];

    _tmp_magazines =
    [
		["rhsusf_100Rnd_762x51_m62_tracer",20],
		["rhsusf_100Rnd_762x51_m61_ap",10],
		["ACE_SpareBarrel",1],
        ["rhsusf_mag_7x45acp_MHP",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_anpeq15A",1],
		["ACRE_PRC148",1]
	];
};

//USMC Machine Gunner Assistant
  if ((typeOf vehicle player) in ["Modern_USMC_AsstMachineGunner", "Modern_USMC_AsstMachineGunner_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1],
		["rhs_weap_M136_hedp",2],
		["rhs_weap_m72a7",2]
	];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",20],
		["ACE_SpareBarrel",1],
		["rhsusf_100Rnd_762x51_m62_tracer",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["ACRE_PRC148",1]
	];
};

//USMC Medic
  if ((typeOf vehicle player) in ["Modern_USMC_Medic", "Modern_USMC_Medic_d"]) then {
    _tmp_weapons =
    [
        ["twc_rhs_weap_m4a1_acog_lazer",1]
	];

    _tmp_magazines =
    [
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag",20],
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",5],
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
		["rhsusf_acc_compm4",1],
		["rhsusf_acc_anpeq15A",1],
		["ACRE_PRC148",1]
	];
};