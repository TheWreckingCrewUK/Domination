[arsenalAmmoBox,[""],false] call Bis_fnc_addVirtualWeaponCargo;

[arsenalAmmoBox,["HandGrenade","SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange","Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","B_IR_Grenade","ACE_HandFlare_Green","ACE_HandFlare_Red","ACE_HandFlare_White","ACE_HandFlare_Yellow"],false] call BIS_fnc_addVirtualMagazineCargo;

[arsenalAmmoBox,["ItemMap","ItemCompass","ItemWatch","CUP_NVG_1PN138","ACE_fieldDressing","ACE_splint","ACE_morphine","ACE_epinephrine","ACE_tourniquet","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_Flashlight_XL50","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_wirecutter","ACE_Clacker","ACE_EarPlugs"],false] call Bis_fnc_addVirtualItemCargo;

//Checks for KAT and adds extra equipment
if(configNull == (configFile >> "kat_pharma"))then{

}else{
	[arsenalAmmoBox,["kat_Painkiller"],false] call BIS_fnc_addVirtualMagazineCargo;
};

switch(typeOf player)do{
	//Alpha
	case "CUP_B_BAF_Soldier_SquadLeader_MTP":{execVM "Domination_Core\client\arsenal\alpha_sl.sqf"};
	case "CUP_B_BAF_Soldier_Rifleman_MTP":{execVM "Domination_Core\client\arsenal\alpha_rf.sqf"};
	case "CUP_B_BAF_Soldier_Grenadier_MTP":{execVM "Domination_Core\client\arsenal\alpha_grn.sqf"};
	case "CUP_B_BAF_Soldier_AutoRifleman_MTP":{execVM "Domination_Core\client\arsenal\alpha_ar.sqf"};
	case "CUP_B_BAF_Soldier_HeavyGunner_MTP":{execVM "Domination_Core\client\arsenal\alpha_mg.sqf"};
	case "CUP_B_BAF_Soldier_Marksman_MTP":{execVM "Domination_Core\client\arsenal\alpha_mark.sqf"};
	case "CUP_B_BAF_Soldier_TeamLeader_MTP":{execVM "Domination_Core\client\arsenal\alpha_2ic.sqf"};
	case "CUP_B_BAF_Soldier_Medic_MTP":{execVM "Domination_Core\client\arsenal\alpha_med.sqf"};
	//Bravo
	case "CUP_B_US_Soldier_SL_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_sl.sqf"};
	case "CUP_B_US_Soldier_TL_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_tl.sqf"};
	case "CUP_B_US_Soldier_ACOG_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_rf.sqf"};
	case "CUP_B_US_Soldier_GL_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_grn.sqf"};
	case "CUP_B_US_Soldier_AR_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_ar.sqf"};
	case "CUP_B_US_Soldier_Marksman_EBR_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_mark.sqf"};
	case "CUP_B_US_Medic_OEFCP":{execVM "Domination_Core\client\arsenal\bravo_med.sqf"};
	//Charlie
	case "CUP_B_USMC_Soldier_SL_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_sl.sqf"};
	case "CUP_B_USMC_Soldier_TL_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_tl.sqf"};
	case "CUP_B_USMC_Soldier_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_rf.sqf"};
	case "CUP_B_USMC_Soldier_AR_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_ar.sqf"};
	case "CUP_B_USMC_Soldier_LAT_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_aar.sqf"};
	case "CUP_B_USMC_Soldier_MG_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_mg.sqf"};
	case "CUP_B_USMC_Soldier_Light_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_mgass.sqf"};
	case "CUP_B_USMC_Medic_FROG_WDL":{execVM "Domination_Core\client\arsenal\charlie_med.sqf"};
	//Delta
	case "CUP_B_CDF_Officer_FST":{execVM "Domination_Core\client\arsenal\delta_sl.sqf"};
	case "CUP_B_CDF_Soldier_TL_FST":{execVM "Domination_Core\client\arsenal\delta_tl.sqf"};
	case "CUP_B_CDF_Soldier_FST":{execVM "Domination_Core\client\arsenal\delta_rf.sqf"};
	case "CUP_B_CDF_Soldier_LAT_FST":{execVM "Domination_Core\client\arsenal\delta_at.sqf"};
	case "CUP_B_CDF_Soldier_AAT_FST":{execVM "Domination_Core\client\arsenal\delta_aat.sqf"};
	case "CUP_B_CDF_Soldier_MG_FST":{execVM "Domination_Core\client\arsenal\delta_mg.sqf"};
	case "CUP_B_CDF_Soldier_AMG_FST":{execVM "Domination_Core\client\arsenal\delta_mgass.sqf"};
	case "CUP_B_CDF_Medic_FST":{execVM "Domination_Core\client\arsenal\delta_med.sqf"};
	//Armour crew
	case "CUP_B_US_Soldier_Engineer_OEFCP":{execVM "Domination_Core\client\arsenal\armour_co.sqf"};
	case "CUP_B_US_Crew_OEFCP":{execVM "Domination_Core\client\arsenal\armour_cr.sqf"};	
	//Pilots
	case "CUP_B_BAF_Soldier_Helipilot_MTP":{execVM "Domination_Core\client\arsenal\alpha_helo.sqf"};
	case "CUP_B_US_Pilot":{execVM "Domination_Core\client\arsenal\bravo_helo.sqf"};
	default {hint "Arsenal/init.sqf Failed"};
};

/*
if (!isNil "armour1" && {player == armour1}) then {
	execVM "Domination_Core\client\arsenal\armour_co.sqf";
};
if (!isNil "armour2" && {player == armour2}) then {
	execVM "Domination_Core\client\arsenal\armour_cr.sqf";
};
if (!isNil "armour3" && {player == armour3}) then {
	execVM "Domination_Core\client\arsenal\armour_cr.sqf";
};

if (!isNil "helo1" && {player == helo1}) then {
	execVM "Domination_Core\client\arsenal\helo.sqf";
};
if (!isNil "helo2" && {player == helo2}) then {
	execVM "Domination_Core\client\arsenal\helo.sqf";
};
if (!isNil "helo3" && {player == helo3}) then {
	execVM "Domination_Core\client\arsenal\helo.sqf";
};

if (!isNil "jet1" && {player == jet1}) then {
	execVM "Domination_Core\client\arsenal\jet.sqf";
};

if (!isNil "bafp1" && {player == bafp1}) then {
	execVM "Domination_Core\client\arsenal\alpha_sl.sqf";
};
if (!isNil "bafp2" && {player == bafp2}) then {
	execVM "Domination_Core\client\arsenal\alpha_rf.sqf";
};
if (!isNil "bafp3" && {player == bafp3}) then {
	execVM "Domination_Core\client\arsenal\alpha_grn.sqf";
};
if (!isNil "bafp4" && {player == bafp4}) then {
	execVM "Domination_Core\client\arsenal\alpha_ar.sqf";
};
if (!isNil "bafp5" && {player == bafp5}) then {
	execVM "Domination_Core\client\arsenal\alpha_2ic.sqf";
};
if (!isNil "bafp6" && {player == bafp6}) then {
	execVM "Domination_Core\client\arsenal\alpha_ar.sqf";
};
if (!isNil "bafp7" && {player == bafp7}) then {
	execVM "Domination_Core\client\arsenal\alpha_mg.sqf";
};
if (!isNil "bafp8" && {player == bafp8}) then {
	execVM "Domination_Core\client\arsenal\alpha_mark.sqf";
};
if (!isNil "bafp9" && {player == bafp9}) then {
	execVM "Domination_Core\client\arsenal\alpha_med.sqf";
};

if (!isNil "p9" && {player == p9}) then {
	execVM "Domination_Core\client\arsenal\bravo_sl.sqf";
};
if (!isNil "p10" && {player == p10}) then {
	execVM "Domination_Core\client\arsenal\bravo_tl.sqf";
};
if (!isNil "p11" && {player == p11}) then {
	execVM "Domination_Core\client\arsenal\bravo_rf.sqf";
};
if (!isNil "p12" && {player == p12}) then {
	execVM "Domination_Core\client\arsenal\bravo_grn.sqf";
};
if (!isNil "p13" && {player == p13}) then {
	execVM "Domination_Core\client\arsenal\bravo_ar.sqf";
};
if (!isNil "p14" && {player == p14}) then {
	execVM "Domination_Core\client\arsenal\bravo_tl.sqf";
};
if (!isNil "p15" && {player == p15}) then {
	execVM "Domination_Core\client\arsenal\bravo_ar.sqf";
};
if (!isNil "p16" && {player == p16}) then {
	execVM "Domination_Core\client\arsenal\bravo_mark.sqf";
};
if (!isNil "p17" && {player == p17}) then {
	execVM "Domination_Core\client\arsenal\bravo_med.sqf";
};

if (!isNil "p18" && {player == p18}) then {
	execVM "Domination_Core\client\arsenal\charlie_sl.sqf";
};
if (!isNil "p19" && {player == p19}) then {
	execVM "Domination_Core\client\arsenal\charlie_tl.sqf";
};
if (!isNil "p20" && {player == p20}) then {
	execVM "Domination_Core\client\arsenal\charlie_rf.sqf";
};
if (!isNil "p21" && {player == p21}) then {
	execVM "Domination_Core\client\arsenal\charlie_ar.sqf";
};
if (!isNil "p22" && {player == p22}) then {
	execVM "Domination_Core\client\arsenal\charlie_aar.sqf";
};
if (!isNil "p23" && {player == p23}) then {
	execVM "Domination_Core\client\arsenal\charlie_tl.sqf";
};
if (!isNil "p24" && {player == p24}) then {
	execVM "Domination_Core\client\arsenal\charlie_rf.sqf";
};
if (!isNil "p25" && {player == p25}) then {
	execVM "Domination_Core\client\arsenal\charlie_ar.sqf";
};
if (!isNil "p26" && {player == p26}) then {
	execVM "Domination_Core\client\arsenal\charlie_aar.sqf";
};
if (!isNil "p27" && {player == p27}) then {
	execVM "Domination_Core\client\arsenal\charlie_tl.sqf";
};
if (!isNil "p28" && {player == p28}) then {
	execVM "Domination_Core\client\arsenal\charlie_mg.sqf";
};
if (!isNil "p29" && {player == p29}) then {
	execVM "Domination_Core\client\arsenal\charlie_mgass.sqf";
};
if (!isNil "p30" && {player == p30}) then {
	execVM "Domination_Core\client\arsenal\charlie_med.sqf";
};