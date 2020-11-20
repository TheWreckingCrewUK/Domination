//BAF Section Leader
if (typeOf vehicle player in ["Modern_British_Squadleader", "Modern_British_Squadleader_Light"]) then {
    _tmp_weapons =
    [
        ["ACE_Vector",1],
		["UK3CB_BAF_L107A1",1],
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",20],
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["B_IR_Grenade",1],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1],
		["ACE_wirecutter", 1],
		["ACE_IR_Strobe_Item",1]
    ];
};

//BAF Rifleman Pointman
 if (typeOf vehicle player in ["Modern_British_Rifleman", "Modern_British_Pointman_Light"]) then {
    _tmp_weapons =
    [
		["rhs_weap_m72a7",4],
		["rhs_weap_M136_hedp",2],
		["rhsusf_weap_glock17g4",1],
		["rhs_weap_fim92",1],
		["UK3CB_BAF_L107A1",1],
		["launch_NLAW_F",3]
    ];

    _tmp_magazines =
    [	
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",20],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["rhs_fim92_mag",3],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["ACRE_PRC343",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

//BAF Grenadier
 if (typeOf vehicle player in ["Modern_British_Grenadier", "Modern_British_Grenadier_COIN_Light"]) then {
    _tmp_weapons =
    [
        ["ACE_Yardage450",1],
		["rhs_weap_M136_hedp",2],
		["rhsusf_weap_glock17g4",1],
		["UK3CB_BAF_L107A1",1],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [           
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",20],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["1Rnd_HE_Grenade_shell", 30],
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
		["ACRE_PRC343",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

//BAF Automatic Rifleman
 if (typeOf vehicle player in ["Modern_British_Autorifleman", "Modern_British_Autorifleman_COIN_Light"]) then {
    _tmp_weapons =
    [
		["rhsusf_weap_glock17g4",1],
		["UK3CB_BAF_L107A1",1],
		["rhs_weap_m72a7",4]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_200Rnd_T",30],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["ACE_SpareBarrel",1],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

//BAF 2IC
 if (typeOf vehicle player in ["Modern_British_2IC", "Modern_British_2IC_COIN_Light"]) then {
    _tmp_weapons =
    [
		["ACE_Yardage450",1],
		["rhsusf_weap_glock17g4",1],
		["UK3CB_BAF_L107A1",1],
		["rhs_weap_m72a7",4]
    ];

    _tmp_magazines =
    [	
    	//Rifleman
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",20],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		//Grenadier
		["1Rnd_HE_Grenade_shell", 40],
		["1Rnd_Smoke_Grenade_shell", 10],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["1Rnd_SmokeGreen_Grenade_shell", 10],
		["1Rnd_SmokeYellow_Grenade_shell", 10],
		["1Rnd_SmokePurple_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
		//Autorifleman
		["UK3CB_BAF_556_200Rnd_T",20],
		//GPMG
		["UK3CB_BAF_762_100Rnd_T",10],
		["ACE_SpareBarrel",1],
		//Marksman
        ["UK3CB_BAF_762_L42A1_20Rnd",25],
		["UK3CB_BAF_762_L42A1_20Rnd_T",10],	
		["ATMine_Range_Mag", 5],
		["SLAMDirectionalMine_Wire_Mag", 5],
		["APERSMine_Range_Mag", 5],
		["APERSBoundingMine_Range_Mag", 5],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["ACE_wirecutter", 1],
		["ACE_IR_Strobe_Item",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

//BAF Machine Gunner
 if (typeOf vehicle player in ["Modern_British_Machinegunner", "Modern_British_Machinegunner_Light"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L7A2",1],
		["UK3CB_BAF_L107A1",1],
		["rhsusf_weap_glock17g4",1]
	];
       
    _tmp_magazines =
    [
		["UK3CB_BAF_762_100Rnd_T",30],
		["ACE_SpareBarrel",1],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["HandGrenade",5]
    ];
	
	_tmp_items = 
	[
		["UK3CB_BAF_Tripod",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};
 
//BAF Marksman
 if (typeOf vehicle player in ["Modern_British_Marksman", "Modern_British_Marksman_COIN_Light"]) then {
    _tmp_weapons =
    [
		["rhsusf_weap_glock17g4",1],
		["UK3CB_BAF_L107A1",1],
		["ACE_Yardage450",1],
		["launch_NLAW_F",1],
		["rhs_weap_M136_hedp",2]
	];
       
    _tmp_magazines =
    [
        ["UK3CB_BAF_762_L42A1_20Rnd",30],
		["UK3CB_BAF_762_L42A1_20Rnd_T",10],	
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["HandGrenade",5]
    ];
		
	_tmp_items = 
	[
		["ACRE_PRC343",1]
	];	
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

 if (typeOf vehicle player in ["Modern_British_Medic", "Modern_British_Medic_Light"]) then {
    _tmp_weapons =
    [
		["rhsusf_weap_glock17g4",1],
		["UK3CB_BAF_L107A1",1]
	];

    _tmp_magazines =
	[
		["UK3CB_BAF_556_30Rnd",30],
		["UK3CB_BAF_556_30Rnd_T",10],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["TWC_Item_Medical_SutureKit_20", 5],
		["ACE_elasticBandage", 50],
		["ACE_quikclot", 50],
		["ACE_packingBandage", 50],
		["ACE_personalAidKit", 50],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_atropine", 50],
		["ACE_salineIV",50],
		["ACE_salineIV_250",50],
		["ACE_salineIV_500",50],
		["ACE_bodyBag",10],
		["ACE_tourniquet", 5],
		["ACRE_PRC343",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

//BAF Sniper
 if (typeOf vehicle player == "Modern_British_Sniper") then {
    _tmp_weapons =
    [
		["twc_rhs_weap_M107",1],
		["UK3CB_BAF_L85A2_RIS_ELCAN3D",3],
		["rhsusf_weap_glock17g4",1]
    ];

    _tmp_magazines =
    [	
		["ACE_10Rnd_338_300gr_HPBT_Mag",40],
		["ACE_10Rnd_338_API526_Mag",10],
		["rhsusf_mag_10Rnd_STD_50BMG_M33",10],
		["rhsusf_mag_10Rnd_STD_50BMG_mk211",5],
		["UK3CB_BAF_556_30Rnd",10],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["rhsusf_mine_m14_mag",10],
		["ClaymoreDirectionalMine_Remote_Mag",10],
		["ATMine_Range_Mag",5]
	];

	_tmp_items = 
	[
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["rhsusf_ANPVS_14",1],
		["ACE_RangeCard",1],
		["ACE_IR_Strobe_Item",5],
		["cup_optic_an_pas_13c1",1],
		["rhsusf_acc_premier_anpvs27",1],
		["ACE_Tripod",1],
		["ACE_M26_Clacker",2],
		["HandGrenade",5]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
	
};

//BAF Spotter
 if (typeOf vehicle player == "Modern_British_Spotter") then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS_ELCAN3D",3],
		["ACE_Vector",1],
		["rhsusf_weap_glock17g4",1]
    ];

    _tmp_magazines =
    [	
		["ACE_10Rnd_338_300gr_HPBT_Mag",50],
		["ACE_10Rnd_338_API526_Mag",10],
		["UK3CB_BAF_556_30Rnd",10],
		["UK3CB_BAF_762_L42A1_20Rnd", 50],
		["UK3CB_BAF_762_L42A1_20Rnd_t", 50],
		["rhsusf_mag_10Rnd_STD_50BMG_M33",50],
		["rhsusf_mag_10Rnd_STD_50BMG_mk211",10],
		["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["HandGrenade",5],
		["rhsusf_mine_m14_mag",10],
		["ClaymoreDirectionalMine_Remote_Mag",10],
		["ATMine_Range_Mag",5]
	];

	_tmp_items = 
	[
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["rhsusf_ANPVS_14",1],
		["ACE_RangeCard",1],
		["ACE_IR_Strobe_Item",1],
		["APERSTripMine_Wire_Mag",5],
		["ACE_SpottingScope",1],
		["ACE_MX2A",1],
		["ACRE_PRC117F_ID_1",1],
		["UK3CB_BAF_MaxiKite",1],
		["ACE_Tripod",1],
		["ACE_M26_Clacker",2],
		["ATMine_Range_Mag",5]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];

};

//FST Commander
if (typeOf vehicle player == "Modern_British_FSTCommander") then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A2_RIS_ELCAN3D",1],
        ["ACE_Vector",1],
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",30],
        ["rhsusf_mag_17Rnd_9x19_FMJ",5],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1],
		["ACRE_PRC117F",1],
		["UK3CB_BAF_LLM_IR_Black",1],
		["itemCTAB",1],
		["ACE_wirecutter", 1],
		["ACE_IR_Strobe_Item",1]
    ];
};

//FST Forward Observer
 if (typeOf vehicle player == "Modern_British_FSTForwardObserver") then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A2_UGL_ELCAN3D",1],
        ["CUP_SOFLAM",1],
		["rhsusf_weap_glock17g4",1]
	];

    _tmp_magazines =
    [           
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["rhsusf_mag_17Rnd_9x19_FMJ",5],
		["1Rnd_HE_Grenade_shell", 40],
		["1Rnd_Smoke_Grenade_shell", 10],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["1Rnd_SmokeGreen_Grenade_shell", 10],
		["1Rnd_SmokeYellow_Grenade_shell", 10],
		["1Rnd_SmokePurple_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
		["1Rnd_SmokeBlue_Grenade_shell", 10],
		["HandGrenade",5],
		["Laserbatteries",1],
		["ACE_HandFlare_White",5],
		["B_IR_Grenade",2]
		
    ];

	_tmp_items =
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACRE_PRC343",1],
		["ACRE_PRC152",1],
		["UK3CB_BAF_LLM_IR_Black",1],
		["itemCTAB",1],
		["ACE_SpottingScope",1]
	];
};

//FST Assistant
 if (typeOf vehicle player == "Modern_British_FSTAssistant") then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS_ELCAN3D",1],
		["rhsusf_weap_glock17g4",1],
		["UK3CB_BAF_Javelin_Slung_Tube",5],
		["UK3CB_BAF_Javelin_CLU",1],
		["rhs_weap_fim92",1],
		["rhs_weap_m72a7",1]
    ];

    _tmp_magazines =
    [	
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["rhs_fim92_mag",3],
		["rhsusf_mag_17Rnd_9x19_FMJ",5],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["UK3CB_BAF_Eotech",1],
		["ACRE_PRC343",1],
		["UK3CB_BAF_LLM_IR_Black",1]
	];
	
	_tmp_backpacks = 
	[ 
		["UK3CB_BAF_B_Bergen_OLI_Rifleman_B",2],
		["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A",2],
		["twc_mtp_belt",2]
	];
};

//FST Assistant
 if (typeOf vehicle player == "Modern_British_FAC") then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS_ELCAN3D",1],
		["rhsusf_weap_glock17g4",1],
		["rhs_weap_m72a7",3]
    ];

    _tmp_magazines =
    [	
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",20],
		["rhsusf_mag_17Rnd_9x19_FMJ",5],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["UK3CB_BAF_Eotech",1],
		["ACRE_PRC343",1],
		["UK3CB_BAF_LLM_IR_Black",1]
	];
};


//BAF Pilot
 if (typeOf vehicle player == "Modern_British_heliPilot") then {
    _tmp_weapons =
    [
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
		["amp_slingload_CargoSling",2],
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",6],
		["ACE_M26_Clacker",1],
		["rhsusf_ANPVS_15",1],
		["ACE_microDAGR",1],
		["ACRE_PRC117F",1]
	];
};
 if (typeOf vehicle player == "Modern_British_crewchief") then {
    _tmp_weapons =
    [
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
		["amp_slingload_CargoSling",2],
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",6],
		["ACE_M26_Clacker",1],
		["rhsusf_ANPVS_15",1],
		["ACE_microDAGR",1],
		["ACRE_PRC117F",1]
	];
};



if (typeOf vehicle player in ["Modern_UKSF_Squadleader"]) then {
    _tmp_weapons =
    [
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_Emag",50],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",20],
		["CUP_60Rnd_556x45_SureFire",1],
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
        ["UK3CB_BAF_9_15Rnd",15],
		["B_IR_Grenade",2],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_Kite", 1],
		["rhsusf_ANPVS_15", 1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",5],
		["ACE_M26_Clacker",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1],
		["ACRE_PRC148",1],
		["uk3cb_baf_llm_ir_tan",1],
		["ACE_wirecutter", 1],
		["ACE_IR_Strobe_Item",1]
    ];
				_tmp_backpacks = 
	[ 
		["CUP_B_Predator_Radio_MTP",2],
		["twc_mtp_belt",2]
	];
	
};

if (typeOf vehicle player in ["Modern_UKSF_Pointman"]) then {
	_choice = floor (random 2);
	_cqbgun = ["TWC_CUP_smg_MP5A5_flashlight_clean",1];
	_cqbmag = "CUP_30Rnd_9x19_MP5";
	if (_choice == 1) then {
		_cqbgun = ["rhsusf_weap_MP7A2_desert",1];
		_cqbmag = "rhsusf_mag_40Rnd_46x30_FMJ";
	};
	(group player) setvariable ["twc_cqbmag", _cqbmag, true];
    _tmp_weapons =
    [
		["UK3CB_BAF_L128A1_Eotech",1],
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		_cqbgun,
		["rhs_weap_m72a7",10],
		["rhs_weap_M136",3],
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_Emag",50],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",20],
		["CUP_60Rnd_556x45_SureFire",1],
		[_cqbmag,25],
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
        ["UK3CB_BAF_9_15Rnd",15],
		["UK3CB_BAF_12G_Pellets",20],
		["UK3CB_BAF_12G_Slugs",30],
		["B_IR_Grenade",2],
		["ACE_M14",2],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_Kite", 1],
		["rhsusf_ANPVS_15", 1],
		["ACRE_PRC343",1],
		["ACE_IR_Strobe_Item",1]
    ];
				_tmp_backpacks = 
	[ 
		["CUP_B_Predator_MTP",2],
		["twc_mtp_belt",2]
	];
	
};

if (typeOf vehicle player in ["Modern_UKSF_Base"]) then {
    _tmp_weapons =
    [
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		["rhs_weap_m72a7",10],
		["rhs_weap_M136",3],
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_Emag",50],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",20],
		["CUP_60Rnd_556x45_SureFire",1],
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
        ["UK3CB_BAF_9_15Rnd",15],
		["B_IR_Grenade",2],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_Kite", 1],
		["rhsusf_ANPVS_15", 1],
		["ACRE_PRC343",1],
		["ACE_IR_Strobe_Item",1]
    ];
				_tmp_backpacks = 
	[ 
		["CUP_B_Predator_MTP",2],
		["twc_mtp_belt",2]
	];
	
};

if (typeOf vehicle player in ["Modern_UKSF_Grenadier"]) then {
    _tmp_weapons =
    [
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		["rhs_weap_m72a7",10],
		["rhs_weap_M136",3],
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_Emag",50],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",20],
		["CUP_60Rnd_556x45_SureFire",1],
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
        ["UK3CB_BAF_9_15Rnd",15],
        ["1Rnd_HE_Grenade_shell",25],
        ["1Rnd_SmokeBlue_Grenade_shell",25],
        ["1Rnd_SmokeRed_Grenade_shell",25],
        ["1Rnd_Smoke_Grenade_shell",25],
		["B_IR_Grenade",2],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_Kite", 1],
		["rhsusf_ANPVS_15", 1],
		["ACRE_PRC343",1],
		["ACE_IR_Strobe_Item",1]
    ];
				_tmp_backpacks = 
	[ 
		["CUP_B_Predator_MTP",2],
		["twc_mtp_belt",2]
	];
	
};

if (typeOf vehicle player in ["Modern_UKSF_2IC"]) then {
    _tmp_weapons =
    [
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		["rhs_weap_m72a7",10],
		["rhs_weap_M136",3],
		["UK3CB_BAF_Javelin_Slung_Tube",6],
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_Emag",80],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",30],
        ["UK3CB_BAF_762_L42A1_20Rnd_T",30],
		["CUP_60Rnd_556x45_SureFire",1],
        ["rhsusf_mag_17Rnd_9x19_FMJ",25],
        ["UK3CB_BAF_9_15Rnd",25],
        ["1Rnd_HE_Grenade_shell",25],
        ["1Rnd_SmokeBlue_Grenade_shell",25],
        ["1Rnd_SmokeRed_Grenade_shell",25],
        ["1Rnd_Smoke_Grenade_shell",25],
		["B_IR_Grenade",2],
		["ACE_M84",3],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_Kite", 1],
		["rhsusf_ANPVS_15", 1],
		["ACRE_PRC343",1],
		["ACE_IR_Strobe_Item",1]
    ];
				_tmp_backpacks = 
	[ 
		["TWC_Backpack_UKSF_2IC_H",1],
		["twc_mtp_belt",2]
	];
	
};

if (typeOf vehicle player in ["Modern_UKSF_Marksman"]) then {
    _tmp_weapons =
    [
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		["UK3CB_BAF_Javelin_Slung_Tube",6],
		["rhs_weap_m72a7",10],
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_762_L42A1_20Rnd",50],
		["UK3CB_BAF_762_L42A1_20Rnd_T",30],
        ["CUP_30Rnd_556x45_Emag",20],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",5],
        ["rhsusf_mag_17Rnd_9x19_FMJ",25],
        ["UK3CB_BAF_9_15Rnd",25],
		["B_IR_Grenade",2],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_MaxiKite", 1],
		["rhsusf_ANPVS_15", 1],
		["ACRE_PRC343",1],
		["ACE_IR_Strobe_Item",1]
    ];
				_tmp_backpacks = 
	[ 
		["CUP_B_Predator_MTP",2],
		["twc_mtp_belt",2]
	];
	
};

if (typeOf vehicle player in ["Modern_UKSF_Medic"]) then {
    _tmp_weapons =
    [
		([["TWC_UK3CB_BAF_L119A2_10_T1",1], ["TWC_UK3CB_BAF_L119A2_10_EOTECH", 1], ["TWC_UK3CB_BAF_L119A2_10_MAG", 1]] call bis_fnc_selectrandom),
		["UK3CB_BAF_L107A1",1]
    ];

	_tmp_magazines =
    [
        ["CUP_30Rnd_556x45_Emag",40],
		["CUP_30Rnd_556x45_Emag_Tracer_Red",10],
		["CUP_60Rnd_556x45_SureFire",1],
        ["rhsusf_mag_17Rnd_9x19_FMJ",25],
        ["UK3CB_BAF_9_15Rnd",25],
		["B_IR_Grenade",2],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["UK3CB_BAF_Kite", 1],
		["rhsusf_ANPVS_15", 1],
		["ACE_fieldDressing", 50],
		["ACE_elasticBandage", 50],
		["TWC_Item_Medical_SutureKit_20", 5],
		["ACE_quikclot", 50],
		["ACE_packingBandage", 50],
		["ACE_morphine", 50],
		["ACE_epinephrine", 50],
		["ACE_atropine", 50],
		["ACE_salineIV_500", 50],
		["ACE_salineIV_250", 50],
		["ACE_bodyBag", 10],
		["ACE_tourniquet", 10],
		["ACE_personalAidKit", 1],
		["ACRE_PRC343", 1]
	];
				_tmp_backpacks = 
	[ 
		["TWC_Backpack_UKSF_Medic_H",1]
	];
	
};
if (typeOf vehicle player in ["Modern_British_VehicleCommander", "Modern_British_VehicleCrew"]) then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L107A1",1],
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_556_30Rnd",10],
        ["rhsusf_mag_17Rnd_9x19_FMJ",15],
		["UK3CB_BAF_9_15Rnd",15],
		["B_IR_Grenade", 5]
    ];

    _tmp_items = 
	[
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACRE_PRC343",1],
		["ACE_IR_Strobe_Item",1]
    ];
};
