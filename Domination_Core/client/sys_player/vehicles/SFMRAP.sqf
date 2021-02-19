 
 

 if (isnil "twc_sfmraptimeout") then {
 twc_sfmraptimeout = - 3600;
 publicVariable "twc_sfmraptimeout";
 };
 
if ((twc_sfmraptimeout > (time)) && (!isserver)) exitwith {
	_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>";
	_text1 = format ["<br />The MRAP spawner is on cooldown currently. %1 minutes remaining.<br /><br />Note: The RG's are not restricted in this way.", (ceil ( (twc_sfmraptimeout-time) / 60))];
	hint parsetext (_title + _text1);
	while {(twc_sfmraptimeout-time) > 0} do {
		sleep 20;
	};
	hint "Another MRAP is now available from the spawner";
	
};

twc_sfmraptimeout = time + 3600;
 
 
 _spawnpos = getpos AmmoBoxSpawner;
 
_vehtype = "twc_M1239_M2_Deploy_socom_d";

 
 _veh = _vehtype createvehicle _spawnpos;   

_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>"; 

 _text1 =  "<br />The MRAP Has Been Spawned. It's Already Loaded With Ammunition";
_spawntext = parsetext (_title + _text1);
hint _spawntext;

_veh setammocargo 0;

_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0) && (twc_sfmraptimeout < time)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;



clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;
_mult = 1;
_veh AddMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",9];

_veh AddWeaponCargoGlobal ["CUP_launch_M72A6",2];
_veh AddWeaponCargoGlobal ["CUP_launch_MAAWS_optic",1];
_veh AddWeaponCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",2];
_veh AddWeaponCargoGlobal ["ACE_Yardage450",1];

_veh AddMagazineCargoGlobal ["CUP_MAAWS_HEAT_M",4];


_veh addItemCargoGlobal ["SatchelCharge_Remote_Mag",1];
_veh addItemCargoGlobal ["ACE_Clacker",1];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",1];
_veh addItemCargoGlobal ["ACE_fieldDressing",25];
_veh addItemCargoGlobal ["ACE_epinephrine",3];
_veh addItemCargoGlobal ["ACE_tourniquet",3];
_veh addItemCargoGlobal ["ACE_morphine",3];
_veh addItemCargoGlobal ["HandGrenade",2];
_veh addItemCargoGlobal ["SmokeShell",3];
_veh addItemCargoGlobal ["SmokeShellRed",3];

_fsgun = ["CUP_lmg_M240_ElcanM143",1];
_fsmag = ["UK3CB_BAF_762_100Rnd_T",5];

if ((random 1) < 0.3) then {
	_fsgun = ["CUP_glaunch_M320",1];
	_fsmag = ["1Rnd_HE_Grenade_shell",10];
};


if ((random 1) < 0.2) then {
	_fsgun = ["UK3CB_BAF_M6",1];
	_fsmag = ["UK3CB_BAF_1Rnd_60mm_Mo_Shells",15];
};

_veh AddWeaponCargoGlobal _fsgun;
_veh AddMagazineCargoGlobal _fsmag;

[_veh, 12] call ace_cargo_fnc_setSpace;
_veh setvariable ["ace_cargo_loaded", ["ACE_Wheel", "ACE_Wheel", "ACE_Wheel", "ACE_Wheel"], true];

_veh setammocargo 0;
_veh setrepaircargo 0;
_veh setfuelcargo 0;

[_veh, player, 4] call twc_fnc_genericfillvehicle;