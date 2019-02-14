/* change classnames based on twc_wdveh parameter. much easier than doing it in the ace menu creation bit

*/

if (_heli == "rhsusf_m1a2sep1tuskid_usarmy") then {

if (twc_wdveh == 1) then {
_heli = "rhsusf_m1a2sep1tuskiwd_usarmy";
};
};


if ( _heli == "CUP_B_LAV25_desert_USMC") then {

if (twc_wdveh == 1) then {
_heli = "CUP_B_LAV25_USMC";
};
};


if ( _heli == "RHS_M6") then {

if (twc_wdveh == 1) then {
_heli = "RHS_M6_wd";
};
};

if ( _heli == "UK3CB_BAF_FV432_Mk3_GPMG_Green") then {

if (twc_wdveh == 0) then {
_heli = "UK3CB_BAF_FV432_Mk3_GPMG_Sand";
};
};

if ( _heli == "UK3CB_BAF_FV432_Mk3_RWS_Green") then {

if (twc_wdveh == 0) then {
_heli = "UK3CB_BAF_FV432_Mk3_RWS_Sand";
};
};

if ( _heli == "ukcw_cvrt_Scim_d") then {

if (twc_wdveh == 1) then {
_heli = "ukcw_cvrt_Scim_w";
};
};


if ( _heli == "ukcw_cvrt_Scim_w_L1") then {

if (twc_wdveh == 0) then {
_heli = "ukcw_cvrt_Scim_d_L1";
};
};


if ( _heli == "rhsusf_m113d_usarmy_M240") then {

if (twc_wdveh == 1) then {
_heli = "rhsusf_m113_usarmy_M240";
};
};


/* don't do this, it's done by post spawn
if ( _heli == "CUP_B_MCV80_GB_D_SLAT") then {

if (twc_wdveh == 1) then {
_heli = "CUP_B_MCV80_GB_W_SLAT";
};
};


if ( _heli == "CUP_B_MCV80_GB_D") then {

if (twc_wdveh == 1) then {
_heli = "CUP_B_MCV80_GB_W";
};
};
if ( _heli == "rhsusf_m1a1aimwd_usarmy") then {

if (twc_wdveh == 0) then {
_heli = "rhsusf_m1a1aimd_usarmy";
};
};

if ( _heli == "RHS_M2A2_wd") then {

if (twc_wdveh == 0) then {
_heli = "RHS_M2A2";
};
};
*/
