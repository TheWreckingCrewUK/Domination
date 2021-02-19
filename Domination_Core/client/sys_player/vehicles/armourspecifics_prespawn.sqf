/* change classnames based on twc_wdveh parameter. much easier than doing it in the ace menu creation bit

*/



if ( _heli == "CUP_B_LAV25_desert_USMC") then {

if (twc_wdveh == 1) then {
_heli = "CUP_B_LAV25_USMC";
};
};


if ( _heli == "CUP_B_M6LineBacker_USA_W") then {

if (twc_wdveh == 1) then {
_heli = "CUP_B_M6LineBacker_USA_W_wd";
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

