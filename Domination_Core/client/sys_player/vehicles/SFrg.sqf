 _spawnpos = getpos AmmoBoxSpawner;
 

_vehtype = "twc_M1238A1_M2_socom_d";


 
 _car = _vehtype createvehicle _spawnpos;   
_veh = _car;

_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>"; 

 _text1 =  "<br />The Vehicle Has Been Spawned. It's Already Loaded With Ammunition";
_spawntext = parsetext (_title + _text1);
hint _spawntext;

_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;

_mult = 1;
_veh setammocargo 0;

_veh AddMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",4*_mult];

_veh AddWeaponCargoGlobal ["CUP_launch_M72A6",1*_mult];

_veh AddMagazineCargoGlobal ["30Rnd_556x45_Stanag_Pull_Tracer_Red",10*_mult];

_veh AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10*_mult];
_veh AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",5*_mult];

_veh addItemCargoGlobal ["ACE_DefusalKit",1*_mult];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",1*_mult];
_veh addItemCargoGlobal ["ACE_CableTie",10*_mult];
_veh addItemCargoGlobal ["ACE_fieldDressing",25*_mult];
_veh addItemCargoGlobal ["ACE_elasticBandage",15*_mult];
_veh addItemCargoGlobal ["ACE_quikclot",15*_mult];
_veh addItemCargoGlobal ["ACE_packingBandage",15*_mult];
_veh addItemCargoGlobal ["ACE_salineIV_250",5*_mult];
_veh addItemCargoGlobal ["ACE_salineIV_500",5*_mult];
_veh addItemCargoGlobal ["ACE_epinephrine",10*_mult];
_veh addItemCargoGlobal ["ACE_morphine",10*_mult];
_veh addItemCargoGlobal ["HandGrenade",2*_mult];
_veh addItemCargoGlobal ["SmokeShell",3*_mult];
_veh addItemCargoGlobal ["SmokeShellRed",1];

_fsgun = ["CUP_lmg_M240_ElcanM143",1];
_fsmag = ["UK3CB_BAF_762_100Rnd_T",5*_mult];



if ((random 1) < 0.5) then {
	_fsgun = ["twc_m249_mgo_lazer",1];
	_fsmag = ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",5*_mult];
};


if ((random 1) < 0.2) then {
	_fsgun = ["CUP_launch_MAAWS_optic",1];
	_veh AddMagazineCargoGlobal ["CUP_MAAWS_HEDP_M",4];
	_fsmag = ["CUP_MAAWS_HEDP_M",2];
};


_veh AddWeaponCargoGlobal _fsgun;
_veh AddMagazineCargoGlobal _fsmag;
[_veh, player, 1] call twc_fnc_genericfillvehicle;