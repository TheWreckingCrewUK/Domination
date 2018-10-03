//BAF Section Leader
if (typeOf vehicle player in ["Modern_British_Squadleader", "Modern_British_Squadleader_Light"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A2_RIS",1],
        ["ACE_Vector",1],
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
        ["rhsusf_mag_17Rnd_9x19_JHP",15],
		["B_IR_Grenade"],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
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

//BAF Rifleman Pointman
 if (typeOf vehicle player in ["Modern_British_Rifleman", "Modern_British_Pointman_Light"]) then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS",1],
		["rhs_weap_m72a7",4],
		["rhs_weap_M136_hedp",2],
		["launch_NLAW_F",3]
    ];

    _tmp_magazines =
    [	
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACRE_PRC343",1],
		["UK3CB_BAF_LLM_IR_Black",1]
	];
};

//BAF Grenadier
 if (typeOf vehicle player in ["Modern_British_Grenadier", "Modern_British_Grenadier_COIN_Light"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A2_UGL",1],
        ["ACE_Vector",1],
		["rhs_weap_M136_hedp",2],
		["rhs_weap_m72a7",4]
	];

    _tmp_magazines =
    [           
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
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
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACRE_PRC343",1],
		["UK3CB_BAF_LLM_IR_Black",1]
	];
};

//BAF Automatic Rifleman
 if (typeOf vehicle player in ["Modern_British_Autorifleman", "Modern_British_Autorifleman_COIN_Light"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L110A2",1],
		["rhs_weap_m72a7",4]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_200Rnd",20],
		["UK3CB_BAF_556_200Rnd_T",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACRE_PRC343",1]
	];
};

//BAF 2IC
 if (typeOf vehicle player in ["Modern_British_2IC", "Modern_British_2IC_COIN_Light"]) then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS",1],
		["ACE_Vector",1],
		["rhs_weap_m72a7",4]
    ];

    _tmp_magazines =
    [	
    	//Rifleman
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		//Grenadier
		["1Rnd_HE_Grenade_shell", 40],
		["1Rnd_Smoke_Grenade_shell", 10],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["1Rnd_SmokeGreen_Grenade_shell", 10],
		["1Rnd_SmokeYellow_Grenade_shell", 10],
		["1Rnd_SmokePurple_Grenade_shell", 10],
		["UGL_FlareWhite_F", 10],
		//Autorifleman
		["UK3CB_BAF_556_200Rnd",20],
		["UK3CB_BAF_556_200Rnd_T",10],
		//GPMG
        ["UK3CB_BAF_762_100Rnd",20],
		["UK3CB_BAF_762_100Rnd_T",10],
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
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["UK3CB_BAF_LLM_IR",1],
		["ACRE_PRC343",1],
		["UK3CB_BAF_LLM_IR_Black",1],
		["ACE_wirecutter", 1],
		["ACE_IR_Strobe_Item",1]
	];
};

//BAF Machine Gunner
 if (typeOf vehicle player in ["Modern_British_Machinegunner", "Modern_British_Machinegunner_Light"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L7A2",1],
		["rhsusf_weap_glock17g4",1]
	];
       
    _tmp_magazines =
    [
        ["UK3CB_BAF_762_100Rnd",20],
		["UK3CB_BAF_762_100Rnd_T",10],
		["rhsusf_mag_17Rnd_9x19_JHP",15],
		["HandGrenade",5]
    ];
	
	_tmp_items = 
	[
		["ACRE_PRC343",1],
		["UK3CB_BAF_Tripod",1]
	];
};
 
//BAF Marksman
 if (typeOf vehicle player in ["Modern_British_Marksman", "Modern_British_Marksman_COIN_Light"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L129A1_FGrip",1],
		["ACE_Vector",1],
		["launch_NLAW_F",3],
		["rhs_weap_M136_hedp",2]
	];
       
    _tmp_magazines =
    [
        ["UK3CB_BAF_762_L42A1_20Rnd",25],
		["UK3CB_BAF_762_L42A1_20Rnd_T",10],
		["HandGrenade",5]
    ];
		
	_tmp_items = 
	[
		["UK3CB_BAF_TA648_308",1],
		["UK3CB_BAF_LLM_IR",1],
		["UK3CB_underbarrel_acc_fgrip_bipod",1],
		["ACRE_PRC343",1]
	];	
};
 if (typeOf vehicle player == "Modern_British_Medic") then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS",1]
	];

    _tmp_magazines =
	[
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["TWC_Item_Medical_SutureKit_20", 1],
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
		["TWC_Item_Medical_SutureKit_20", 50],
		["ACE_tourniquet", 5],
		["RKSL_optic_LDS",1],
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["UK3CB_BAF_LLM_IR_Black",1],
		["ACRE_PRC343",1]
	];
};

//BAF Sniper - adding insurgency kit for the moment as it works
 if (typeOf vehicle player == "Modern_British_Sniper") then {
    _tmp_weapons =
    [
		["twc_l115a3_gh",1],
		["twc_rhs_weap_M107",1],
		["rhsusf_weap_glock17g4",1]
    ];

    _tmp_magazines =
    [	
		["ACE_10Rnd_338_300gr_HPBT_Mag",50],
		["ACE_10Rnd_338_API526_Mag",50],
		["rhsusf_mag_10Rnd_STD_50BMG_M33",10],
		["rhsusf_mag_10Rnd_STD_50BMG_mk211",10],
		["rhsusf_mag_17Rnd_9x19_JHP",15]
	];

	_tmp_items = 
	[
		
		["RKSL_optic_PMII_525",1],
		["UK3CB_BAF_Silencer_L115A3",1],
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["STKR_Predator",1],
		["ACRE_PRC343",1],
		["rhsusf_ANPVS_14",1],
		["ACE_IR_Strobe_Item",5],
		["UK3CB_BAF_G_Tactical_Black",1],
		["UK3CB_BAF_MaxiKite",1],
		["ACE_Tripod",1],
		["HandGrenade",5]
	];

};

//BAF Spotter
 if (typeOf vehicle player == "Modern_British_Spotter") then {
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A2_RIS_ELCAN3D",1],
		["ACE_Vector",1],
		["rhsusf_weap_glock17g4",1]
    ];

    _tmp_magazines =
    [	
		["ACE_10Rnd_338_300gr_HPBT_Mag",50],
		["ACE_10Rnd_338_API526_Mag",50],
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["UK3CB_BAF_762_L42A1_20Rnd", 50],
		["UK3CB_BAF_762_L42A1_20Rnd_t", 50],
		["rhsusf_mag_10Rnd_STD_50BMG_M33",50],
		["rhsusf_mag_10Rnd_STD_50BMG_mk211",50],
		["rhsusf_mag_17Rnd_9x19_JHP",15],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["RKSL_optic_LDS",1],
		["UK3CB_BAF_LLM_IR",1],
		["UK3CB_BAF_Silencer_L115A3",1],
		["UK3CB_BAF_Eotech",1],
		["STKR_Predator",1],
		["rhsusf_ANPVS_14",1],
		["ACE_IR_Strobe_Item",1],
		["ACRE_PRC343",1],
		["UK3CB_BAF_G_Tactical_Black",1],
		["ACE_Kestrel4500",1],
		["ACE_RangeCard",1],
		["ACE_SpottingScope",1],
		["ACE_MX2A",1],
		["ACRE_PRC117F_ID_1",1],
		["UK3CB_BAF_LLM_IR_Black",1],
		["UK3CB_BAF_MaxiKite",1],
		["ACE_ATragMX",1],
		["ACE_Tripod",1],
		["itemCTAB",1]
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
		["UK3CB_BAF_556_30Rnd_T",50],
        ["rhsusf_mag_17Rnd_9x19_JHP",5],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
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
		["rhsusf_mag_17Rnd_9x19_JHP",5],
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
		["ACE_VMH3",1],
		["UK3CB_BAF_Javelin_Slung_Tube",1],
		["UK3CB_BAF_Javelin_CLU",1],
		["CUP_launch_FIM92Stinger",1],
		["rhs_weap_m72a7",1]
    ];

    _tmp_magazines =
    [	
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["rhsusf_mag_17Rnd_9x19_JHP",5],
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
        ["UK3CB_BAF_L22A2",1],
		["rhsusf_weap_glock17g4",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
        ["rhsusf_mag_17Rnd_9x19_JHP",15],
		["HandGrenade",5]
    ];
	_tmp_items =
	[
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["ACRE_PRC343",1],
		["rhsusf_ANPVS_14",1],
		["itemCTAB",1],
		["ACE_microDAGR",1],
		["UK3CB_BAF_SUSAT",1],
		["ACRE_PRC117F",1]
	];
};


 if (typeOf vehicle player in ["Modern_British_Recce_Autorifleman"]) then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L110A2",1]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_200Rnd",20],
		["UK3CB_BAF_556_200Rnd_T",10],
        ["rhsusf_mag_17Rnd_9x19_JHP",15]
    ];

	_tmp_items =
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1]
	];
};

 if (typeOf vehicle player in ["Modern_British_Recce_Rifleman"]) then {
    _tmp_weapons =
    [
        ["rhs_weap_m72a7",1]
	];

	_tmp_magazines =
   [            
        ["rhs_mag_30Rnd_556x45_M855_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",20],
        ["rhsusf_mag_17Rnd_9x19_JHP",15]
    ];

	_tmp_items =
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1]
	];
};

 if (typeOf vehicle player in ["Modern_British_Recce_Commander"]) then {
    _tmp_weapons =
    [
        ["rhsusf_mag_17Rnd_9x19_JHP",15]
	];

	_tmp_magazines =
   [            
        ["rhs_mag_30Rnd_556x45_M855_Stanag",50],
		["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",20]
    ];

	_tmp_items =
	[
		["UK3CB_BAF_SpecterLDS_Dot",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1],
		["ACRE_PRC343",1]
	];
};

