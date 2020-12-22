
twc_loadout_baf_fstsl = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"UK3CB_BAF_H_Mk7_Camo_B",

	//vest
	(["twc_warriorvest_dcs"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_FMJ", 2], ["CUP_H_PMC_EP_Headset", 1], ["HandGrenade", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_MTP_SL_L_A",

	//backpackitems

	[["ACRE_PRC117F", 1], ["1Rnd_HE_Grenade_shell", 15], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["UK3CB_BAF_U_Smock_MTP", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["UK3CB_BAF_L85A2_UGL_ELCAN3D"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_FMJ", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["CUP_B_Bergen_BAF", 2]]]

];


twc_loadout_baf_fstassistant = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"UK3CB_BAF_H_Mk7_Camo_D",

	//vest
	(["UK3CB_BAF_V_Osprey_MG_B"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_FMJ", 2], ["CUP_H_PMC_EP_Headset", 1], ["HandGrenade", 1], ["SmokeShell", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",

	//backpackitems

	[["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4]],

	//night kit
	["UK3CB_BAF_U_Smock_MTP", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["UK3CB_BAF_L85A2_RIS_ELCAN3D"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];

twc_loadout_baf_fstobserver = [
	//uniform
	(["UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP", "UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC343", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"UK3CB_BAF_H_Mk7_Camo_B",

	//vest
	(["twc_warriorvest_dcs"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_FMJ", 2], ["CUP_H_PMC_EP_Headset", 1], ["HandGrenade", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"CUP_B_Motherlode_MTP",

	//backpackitems

	[["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["UK3CB_BAF_U_Smock_MTP", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["UK3CB_BAF_L85A2_UGL_ELCAN3D"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []], ["ACE_Vector", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_FMJ", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];



twc_loadout_us_fstsl = [
	//uniform
	(["rhs_uniform_FROG01_wd"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_lwh_helmet_marpatwd_blk_ess",

	//vest
	(["rhsusf_spc_squadleader"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_15Rnd_9x19_FMJ", 2], ["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_TAN_SL_A",

	//backpackitems

	[["ACRE_PRC117F", 1], ["1Rnd_HE_Grenade_shell", 15], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["rhs_uniform_FROG01_wd", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_m203_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]

];


twc_loadout_us_fstassistant = [
	//uniform
	(["rhs_uniform_FROG01_wd", "rhs_uniform_FROG01_wd", "U_I_G_Story_Protagonist_F", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_lwh_helmet_marpatwd_blk_ess",

	//vest
	(["rhsusf_spc_patchless_radio"] call bis_fnc_selectrandom),

	//vestitems

	[["UK3CB_BAF_762_200Rnd_T", 1], ["UK3CB_BAF_H_Earphone", 1], ["rhsusf_mag_15Rnd_9x19_FMJ", 2]],

	//backpack
	"B_Carryall_cbr",

	//backpackitems

	[["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["UK3CB_BAF_762_200Rnd_T", 4]],

	//night kit
	["rhs_uniform_FROG01_wd", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m240B_mgo_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1], ["twc_m14_ebr_lazer_bipod", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhsusf_20Rnd_762x51_m62_Mag", 30], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];

twc_loadout_us_fstobserver = [
	//uniform
	(["rhs_uniform_FROG01_wd", "rhs_uniform_FROG01_wd", "U_I_G_Story_Protagonist_F", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_lwh_helmet_marpatwd_blk_ess",

	//vest
	(["rhsusf_spc_patchless_radio"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_15Rnd_9x19_FMJ", 2], ["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"rhsusf_assault_eagleaiii_coy",

	//backpackitems

	[["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["rhs_uniform_FROG01_wd", "rhsusf_ANPVS_14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_rhs_weap_m4a1_m203_acog_lazer"] call bis_fnc_selectrandom), []], ["rhsusf_weap_m9", []], ["ACE_Vector", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_15Rnd_9x19_FMJ", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];



twc_loadout_ussf_fstsl = [
	//uniform
	(["CUP_U_CRYE_G3C_MC_US"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["CUP_V_CPC_tlbelt_mc"] call bis_fnc_selectrandom),

	//vestitems

	[["rhsusf_mag_17Rnd_9x19_FMJ", 2], ["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_TAN_SL_A",

	//backpackitems

	[["ACRE_PRC117F", 1]],

	//night kit
	["CUP_U_CRYE_G3C_MC_US", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]

];


twc_loadout_ussf_fstassistant = [
	//uniform
	(["CUP_U_CRYE_G3C_MC_US", "CUP_U_CRYE_G3C_MC_US", "U_I_G_Story_Protagonist_F", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["CUP_V_CPC_Fastbelt_mc"] call bis_fnc_selectrandom),

	//vestitems

	[["UK3CB_BAF_762_200Rnd_T", 1], ["UK3CB_BAF_H_Earphone", 1], ["rhsusf_mag_17Rnd_9x19_FMJ", 2]],

	//backpack
	"B_Carryall_cbr",

	//backpackitems

	[["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["UK3CB_BAF_762_200Rnd_T", 4]],

	//night kit
	["CUP_U_CRYE_G3C_MC_US", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["rhsusf_weap_glock17g4", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhsusf_20Rnd_762x51_m62_Mag", 30], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["rhsusf_mag_17Rnd_9x19_FMJ", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];

twc_loadout_ussf_fstobserver = [
	//uniform
	(["CUP_U_CRYE_G3C_MC_US", "CUP_U_CRYE_G3C_MC_US", "U_I_G_Story_Protagonist_F", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"rhsusf_opscore_mc_cover_pelt",

	//vest
	(["CUP_V_CPC_communicationsbelt_mc"] call bis_fnc_selectrandom),

	//vestitems

	[["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3]],

	//backpack
	"rhsusf_assault_eagleaiii_ocp",

	//backpackitems

	[["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["CUP_U_CRYE_G3C_MC_US", "rhsusf_ANPVS_15", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["rhs_weap_M320", []], ["ACE_Vector", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["rhs_mag_30Rnd_556x45_M855A1_Stanag", 50], ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30], ["rhs_mag_maaws_HEAT", 4], ["rhs_mag_maaws_flechette", 2]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];

