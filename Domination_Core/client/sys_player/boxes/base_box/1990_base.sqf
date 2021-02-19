
//90's era kit
if((typeOf player) in ["1990_British_SectionCommander","1990_RM_British_SectionCommander_Mix","1990_British_SectionCommander_Desert"])then{

    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D_Lazer",1],
        ["UK3CB_BAF_L9A1",1]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",10],
		["UK3CB_BAF_9_13Rnd",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC117F",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACRE_PRC343",1]
	];
};


 if((typeOf player) in ["1990_British_Rifleman","1990_British_Rifleman_desert","1990_RM_British_Rifleman_Mix"])then{

    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1],
        ["CUP_launch_M72A6",5]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
};

 if((typeOf player) in ["1990_British_Rifleman_AT","1990_British_Rifleman_AT_Desert","1990_RM_British_Rifleman_AT_Mix"])then{

    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1],
        ["CUP_launch_APILAS",6],
        ["CUP_launch_FIM92Stinger",1],
        ["CUP_launch_M72A6",8]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",10],

		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
};

 
 if((typeOf player) in ["1990_British_Gunner","1990_British_Gunner_Desert","1990_RM_British_Marksman_Mix"])then{
    _tmp_weapons =
    [
		["UK3CB_BAF_L86A1_SUSAT3D",1],
        ["CUP_launch_M72A6",3]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",30],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
};


 if((typeOf player) in ["1990_British_2IC","1990_British_2IC_Desert","1990_RM_British_2IC_Mix"])then{
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1],
        ["CUP_launch_M72A6",4]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",30],
		["ATMine_Range_Mag", 5],
		["APERSMine_Range_Mag", 5],
		["APERSBoundingMine_Range_Mag", 5],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACRE_PRC343",1]
	];
};



 if((typeOf player) in ["1990_British_Medic","1990_British_Medic_Desert","1990_RM_British_Medic_Mix"])then{
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_30Rnd",20],
		["UK3CB_BAF_556_30Rnd_T",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1],
		["TWC_Item_Medical_SutureKit_20", 3],
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
		["ACE_bodyBag", 30]
	];
};


 if (typeOf vehicle player == "1990_RM_British_Gunner_Mix") then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L110A1",1],
        ["CUP_launch_M72A6",3]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_556_200Rnd_T",30],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
};

 if (typeOf vehicle player == "1990_British_Sniper_desert") then {
    _tmp_weapons =
    [
        ["twc_l96_d",1]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_762_L42A1_10Rnd",30],
		["UK3CB_BAF_762_L42A1_10Rnd_T",20],
		["CUP_15Rnd_9x19_M9",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACE_RangeCard",1],
		["ACRE_PRC343",1]
	];
};

 if (typeOf vehicle player == "1990_British_Spotter_desert") then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_762_L42A1_10Rnd",30],
		["UK3CB_BAF_762_L42A1_10Rnd_T",20],
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",20],
		["CUP_15Rnd_9x19_M9",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1],
		["ACE_RangeCard",1],
		["ACRE_PRC117F",1]
	];
};


 if (typeOf vehicle player in ["1990_British_MachineGunner","1990_British_MachineGunner_Desert"]) then {
    _tmp_weapons =
    [
		["UK3CB_BAF_Tripod",1],
        ["UK3CB_BAF_L7A2",1]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_762_200Rnd_T",20],
		["ACE_SpareBarrel",1],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
};

 if (typeOf vehicle player in ["1990_British_mg_assistant","1990_British_mg_assistant_Desert"]) then {
    _tmp_weapons =
    [
		["UK3CB_BAF_Tripod",1],
        ["UK3CB_BAF_L85A1_SUSAT3D",1],
        ["CUP_launch_M72A6",3]
	];

	_tmp_magazines =
   [            
		["UK3CB_BAF_762_200Rnd_T",20],
		["ACE_SpareBarrel",1],
		["UK3CB_BAF_556_30Rnd",40],
		["UK3CB_BAF_556_30Rnd_T",20],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["ACRE_PRC343",1]
	];
};

//FST Commander (90's)
 if((typeOf player) in ["1990_British_FSTCommander", "1990_British_FSTCommander_Desert"])then {
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1],
        ["binocular",1]
    ];

	_tmp_magazines =
    [
        ["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["CUP_15Rnd_9x19_M9",10],
		["HandGrenade",5]
    ];

    _tmp_items = 
	[
		["ACE_epinephrine",5],
		["UK3CB_BAF_SUSAT_3D",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1],
		["ACRE_PRC117F",1],
		["ACE_wirecutter", 1],
		["ACE_IR_Strobe_Item",1]
    ];
};

//FST Forward Observer (90's)
 if((typeOf player) in ["1990_British_FSTForwardObserver", "1990_British_FSTForwardObserver_Desert"]) then{
    _tmp_weapons =
    [
        ["UK3CB_BAF_L85A1_SUSAT3D",1],
        ["CUP_SOFLAM",1]
	];

    _tmp_magazines =
    [           
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["HandGrenade",5],
		["Laserbatteries",1],
		["ACE_HandFlare_White",5],
		["B_IR_Grenade",2]
    ];

	_tmp_items =
	[
		["UK3CB_BAF_SUSAT_3D",1],
		["ACRE_PRC343",1],
		["ACRE_PRC152",1],
		["ACE_SpottingScope",1]
	];
};

//FST Assistant (90's)
 if((typeOf player) in ["1990_British_FSTAssistant", "1990_British_FSTAssistant_Desert"]) then{
    _tmp_weapons =
    [
		["UK3CB_BAF_L85A1_SUSAT3D",1],
		["CUP_launch_MAAWS",1],
		["CUP_launch_M72A6",8]
    ];

    _tmp_magazines =
    [	
		["UK3CB_BAF_556_30Rnd",50],
		["UK3CB_BAF_556_30Rnd_T",50],
		["CUP_MAAWS_HEDP_M",8],
		["CUP_MAAWS_HEAT_M",8],
		["HandGrenade",5]
	];

	_tmp_items = 
	[
		["UK3CB_BAF_SUSAT_3D",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1],
		["ACRE_PRC343",1]
	];
};

  if ((typeOf vehicle player) in ["twc_men_1990_us_w_SquadLeader", "twc_men_1990_us_d_SquadLeader"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2_GL",1],
        ["ACE_Yardage450",1],
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
		["twc_men_1990_us_w_backpack_squadlead",1],
		["ACE_DAGR",1],
		["ACRE_PRC117F",1],
		["ACRE_PRC148",1],
		["ACE_IR_Strobe_Item",1]
	];
};
//USMC Team Leader
  if ((typeOf vehicle player) in ["twc_men_1990_us_w_teamleader", "twc_men_1990_us_d_teamleader"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2_GL",1],
        ["Binocular",1],
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
		["HandGrenade",5]
	];

    _tmp_items = 
	[
		["twc_men_1990_us_w_backpack_teamlead",1],
		["ACRE_PRC148",1],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",3],
		["ACE_M26_Clacker",1]
		
	];
};

//USMC Rifleman
  if ((typeOf vehicle player) in ["twc_men_1990_us_w_rifleman", "twc_men_1990_us_d_rifleman"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2",1],
		["CUP_launch_M136",3]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["twc_men_1990_us_w_backpack_rifleman",1],
		["ACRE_PRC148",1]
	];
};

//USMC Auto Rifleman
  if ((typeOf vehicle player) in ["twc_men_1990_us_w_rifleman_at", "twc_men_1990_us_d_rifleman_at"]) then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2",1],
		["CUP_launch_M136",8]
	];

    _tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",40],
		["30Rnd_556x45_Stanag_Tracer_Red",20],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["twc_men_1990_us_w_backpack_rifleman",1],
		["ACRE_PRC148",1]
	];
};

//USMC Auto Rifleman Assistant
  if ((typeOf vehicle player) in ["twc_men_1990_us_w_autorifleman", "twc_men_1990_us_d_autorifleman"]) then {
    _tmp_weapons =
    [
        ["CUP_lmg_M249_E2",1]
	];

    _tmp_magazines =
    [
        ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",50],
		["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",20],
		["ACE_SpareBarrel",1],
		["HandGrenade",5]
    ];

	_tmp_items =
	[
		["twc_men_1990_us_w_backpack_autorifleman",1],
		["ACRE_PRC148",1]
	];
};


 if((typeOf player) in ["twc_men_1990_us_d_medic","twc_men_1990_us_w_medic"])then{
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2",1]
	];

	_tmp_magazines =
   [            
		["30Rnd_556x45_Stanag",20],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["HandGrenade",2]
    ];

	_tmp_items =
	[
		["ACRE_PRC148",1],
		["TWC_Item_Medical_SutureKit_20", 3],
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
		["ACE_bodyBag", 30]
	];
};

