
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

	[["CUP_17Rnd_9x19_glock17", 2], ["CUP_H_PMC_EP_Headset", 1], ["HandGrenade", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["30Rnd_556x45_Stanag", 8], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_MTP_SL_L_A",

	//backpackitems

	[["ACRE_PRC117F", 1], ["1Rnd_HE_Grenade_shell", 15], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["UK3CB_BAF_U_Smock_MTP", "CUP_NVG_PVS14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["UK3CB_BAF_L85A2_UGL_ELCAN3D"] call bis_fnc_selectrandom), []], ["CUP_hgun_Glock17", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_17Rnd_9x19_glock17", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
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

	[["CUP_17Rnd_9x19_glock17", 2], ["CUP_H_PMC_EP_Headset", 1], ["HandGrenade", 1], ["SmokeShell", 2], ["30Rnd_556x45_Stanag", 6], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",

	//backpackitems

	[["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["30Rnd_556x45_Stanag", 4]],

	//night kit
	["UK3CB_BAF_U_Smock_MTP", "CUP_NVG_PVS14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["UK3CB_BAF_L85A2_RIS_ELCAN3D"] call bis_fnc_selectrandom), []], ["CUP_hgun_Glock17", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_17Rnd_9x19_glock17", 10]] + twc_cratemagazines)],
	
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

	[["CUP_17Rnd_9x19_glock17", 2], ["CUP_H_PMC_EP_Headset", 1], ["HandGrenade", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["30Rnd_556x45_Stanag", 8], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"CUP_B_Motherlode_MTP",

	//backpackitems

	[["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["UK3CB_BAF_U_Smock_MTP", "CUP_NVG_PVS14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["UK3CB_BAF_L85A2_UGL_ELCAN3D"] call bis_fnc_selectrandom), []], ["CUP_hgun_Glock17", []], ["ACE_Vector", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_17Rnd_9x19_glock17", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];



twc_loadout_us_fstsl = [
	//uniform
	(["CUP_U_B_USMC_FROG1_WMARPAT"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USMC_LWH_ESS_DES",

	//vest
	(["CUP_V_B_Eagle_SPC_SL"] call bis_fnc_selectrandom),

	//vestitems

	[["CUP_15Rnd_9x19_M9", 2], ["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["30Rnd_556x45_Stanag", 8], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_TAN_SL_A",

	//backpackitems

	[["ACRE_PRC117F", 1], ["1Rnd_HE_Grenade_shell", 15], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["CUP_U_B_USMC_FROG1_WMARPAT", "CUP_NVG_PVS14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["CUP_arifle_M4A1_M203_ACOG_Laser"] call bis_fnc_selectrandom), []], ["CUP_hgun_M9", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_15Rnd_9x19_M9", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], []]

];


twc_loadout_us_fstassistant = [
	//uniform
	(["CUP_U_B_USMC_FROG1_WMARPAT", "CUP_U_B_USMC_FROG1_WMARPAT", "U_I_G_Story_Protagonist_F", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USMC_LWH_ESS_DES",

	//vest
	(["CUP_V_B_Eagle_SPC_RTO"] call bis_fnc_selectrandom),

	//vestitems

	[["UK3CB_BAF_762_200Rnd_T", 1], ["UK3CB_BAF_H_Earphone", 1], ["CUP_15Rnd_9x19_M9", 2]],

	//backpack
	"B_Carryall_cbr",

	//backpackitems

	[["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["UK3CB_BAF_762_200Rnd_T", 4]],

	//night kit
	["CUP_U_B_USMC_FROG1_WMARPAT", "CUP_NVG_PVS14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["CUP_lmg_M240_ElcanM143"] call bis_fnc_selectrandom), []], ["CUP_hgun_M9", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1], ["twc_m14_ebr_lazer_bipod", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["CUP_20Rnd_762x51_DMR", 30], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_15Rnd_9x19_M9", 10]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];

twc_loadout_us_fstobserver = [
	//uniform
	(["CUP_U_B_USMC_FROG1_WMARPAT", "CUP_U_B_USMC_FROG1_WMARPAT", "U_I_G_Story_Protagonist_F", "U_B_CombatUniform_mcam_tshirt"] call bis_fnc_selectrandom),

	//uniformitems
	([["ACRE_PRC148", 1], ["ACE_MapTools", 1]] + twc_loadout_basicuniformitems),

	//helmet

	"CUP_H_USMC_LWH_ESS_DES",

	//vest
	(["CUP_V_B_Eagle_SPC_RTO"] call bis_fnc_selectrandom),

	//vestitems

	[["CUP_15Rnd_9x19_M9", 2], ["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["30Rnd_556x45_Stanag", 8], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"B_AssaultPack_cbr",

	//backpackitems

	[["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["CUP_U_B_USMC_FROG1_WMARPAT", "CUP_NVG_PVS14", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["CUP_arifle_M4A1_M203_ACOG_Laser"] call bis_fnc_selectrandom), []], ["CUP_hgun_M9", []], ["ACE_Vector", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_m4_cco_vfg", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_15Rnd_9x19_M9", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30]] + twc_cratemagazines)],
	
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

	"CUP_H_OpsCore_Spray_SF",

	//vest
	(["CUP_V_CPC_tlbelt_mc"] call bis_fnc_selectrandom),

	//vestitems

	[["CUP_17Rnd_9x19_glock17", 2], ["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["30Rnd_556x45_Stanag", 8], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"UK3CB_BAF_B_Bergen_TAN_SL_A",

	//backpackitems

	[["ACRE_PRC117F", 1]],

	//night kit
	["CUP_U_CRYE_G3C_MC_US", "CUP_NVG_PVS15_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["CUP_hgun_Glock17", []], ["ACE_Vector", []]],

	//linkeditems

	(["itemcTab"] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_17Rnd_9x19_glock17", 10]] + twc_cratemagazines)],
	
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

	"CUP_H_OpsCore_Spray_SF",

	//vest
	(["CUP_V_CPC_Fastbelt_mc"] call bis_fnc_selectrandom),

	//vestitems

	[["UK3CB_BAF_762_200Rnd_T", 1], ["UK3CB_BAF_H_Earphone", 1], ["CUP_17Rnd_9x19_glock17", 2]],

	//backpack
	"B_Carryall_cbr",

	//backpackitems

	[["ACE_EntrenchingTool", 1], ["ACE_wirecutter", 1], ["UK3CB_BAF_762_200Rnd_T", 4]],

	//night kit
	["CUP_U_CRYE_G3C_MC_US", "CUP_NVG_PVS15_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["CUP_hgun_Glock17", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["CUP_20Rnd_762x51_DMR", 30], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["CUP_17Rnd_9x19_glock17", 10]] + twc_cratemagazines)],
	
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

	"CUP_H_OpsCore_Spray_SF",

	//vest
	(["CUP_V_CPC_communicationsbelt_mc"] call bis_fnc_selectrandom),

	//vestitems

	[["UK3CB_BAF_H_Earphone", 1], ["SmokeShell", 2], ["SmokeShellRed", 2], ["30Rnd_556x45_Stanag", 8], ["30Rnd_556x45_Stanag_Tracer_Red", 3]],

	//backpack
	"CUP_B_US_IIID_OCP",

	//backpackitems

	[["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeRed_Grenade_shell", 10], ["1Rnd_SmokeBlue_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 10]],

	//night kit
	["CUP_U_CRYE_G3C_MC_US", "CUP_NVG_PVS15_black", [["ACE_Flashlight_KSF1", 1], ["ACE_Chemlight_IR", 3], ["Chemlight_red", 3]]],

	//weapons

	[[(["twc_m4b2_us_eotech"] call bis_fnc_selectrandom), []], ["CUP_glaunch_M320", []], ["ACE_Vector", []]],

	//linkeditems

	([] + twc_loadout_basiclinkeditems),
	
	//weapons to remove from crate, weapons to add
	
	[["all"], ([["twc_mk18_specter", 1]] + twc_crateweapons)],
	
	//mags to remove from crate, mags to add
	
	[["all"], ([["30Rnd_556x45_Stanag", 50], ["30Rnd_556x45_Stanag_Tracer_Red", 10], ["1Rnd_HE_Grenade_shell", 30], ["1Rnd_SmokeRed_Grenade_shell", 30], ["1Rnd_SmokeBlue_Grenade_shell", 30], ["1Rnd_SmokeGreen_Grenade_shell", 30], ["CUP_MAAWS_HEAT_M", 4]] + twc_cratemagazines)],
	
	//items to remove from crate, mags to add
	
	[["all"], ([["DemoCharge_Remote_Mag", 3], ["ACE_M26_Clacker", 1]] + twc_crateitems)],
	
	//backpacks to remove from crate, backpacks to add
	
	[["all"], [["TWC_BAF_B_Bergen_OLI_Rifleman_XL_A", 2]]]

];

