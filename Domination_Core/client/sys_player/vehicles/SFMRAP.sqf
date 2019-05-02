 
 

 if (isnil "twc_sfmraptimeout") then {
 twc_sfmraptimeout = - 3600;
 publicVariable "twc_sfmraptimeout";
 };
 
if ((twc_sfmraptimeout > (time))) exitwith {
	_title ="<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>";
	_text1 = format ["<br />The MRAP spawner is on cooldown currently. %1 minutes remaining.<br /><br />Note: The MRZR's are not restricted in this way.", (ceil ( (twc_sfmraptimeout-time) / 60))];
	hint parsetext (_title + _text1);
	while {(twc_sfmraptimeout-time) > 0} do {
		sleep 20;
	};
	hint "Another MRAP is now available from the spawner";
	
};

twc_sfmraptimeout = time + 3600;
 
 
 _spawnpos = getpos AmmoBoxSpawner;
 
_vehtype = "rhsusf_M1220_M153_M2_usarmy_wd";

 
 _veh = _vehtype createvehicle _spawnpos;   

_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>"; 

 _text1 =  "<br />The MRAP Has Been Spawned. It's Already Loaded With Ammunition";
_spawntext = parsetext (_title + _text1);
hint _spawntext;



_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;


if ((missionnamespace getvariable ["twc_wdveh", 0]) == 0) then {
	[
		_veh,
		["rhs_desert",1], 
		["DUKE_Hide",1]
	] call BIS_fnc_initVehicle;
} else {
	[
		_veh,
		["rhs_woodland",1], 
		["DUKE_Hide",1]
	] call BIS_fnc_initVehicle;
};

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;


_veh AddWeaponCargoGlobal ["rhs_weap_m72a7",4];
_veh AddWeaponCargoGlobal ["rhs_weap_maaws_optic",1];

_veh AddMagazineCargoGlobal ["CUP_30Rnd_556x45_Emag",20];
_veh AddMagazineCargoGlobal ["CUP_30Rnd_556x45_Emag_Tracer_Red",5];

_veh AddMagazineCargoGlobal ["rhs_mag_maaws_HEAT",6];

_veh AddMagazineCargoGlobal ["UGL_FlareWhite_F",5];
_veh AddMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];
_veh AddMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",5];

_veh addItemCargoGlobal ["SatchelCharge_Remote_Mag",1];
_veh addItemCargoGlobal ["ACE_Clacker",1];
_veh addItemCargoGlobal ["ACE_EntrenchingTool",1];
_veh addItemCargoGlobal ["ACE_fieldDressing",25];
_veh addItemCargoGlobal ["ACE_elasticBandage",10];
_veh addItemCargoGlobal ["ACE_packingBandage",10];
_veh addItemCargoGlobal ["ACE_salineIV_250",5];
_veh addItemCargoGlobal ["ACE_epinephrine",3];
_veh addItemCargoGlobal ["ACE_morphine",3];
_veh addItemCargoGlobal ["HandGrenade",2];
_veh addItemCargoGlobal ["SmokeShell",3];
_veh addItemCargoGlobal ["SmokeShellRed",3];

_fsgun = ["UK3CB_BAF_L7A2",1];
_fsmag = ["UK3CB_BAF_762_100Rnd_T",5];

_veh AddMagazineCargoGlobal ["rhsusf_mag_17Rnd_9x19_JHP",4];
_veh AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd_T",5];
_veh AddMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd",10];


_veh AddMagazineCargoGlobal ["UK3CB_BAF_12G_Slugs",5];
_veh AddMagazineCargoGlobal ["UK3CB_BAF_12G_Pellets",4];

_mag = (group player) getvariable ["twc_cqbmag", "CUP_30Rnd_556x45_Emag"];
_veh AddMagazineCargoGlobal [_mag ,5];


if ((random 1) < 0.5) then {
	_fsgun = ["UK3CB_BAF_L110A2_ELCAN3D",1];
	_fsmag = ["UK3CB_BAF_556_200Rnd_T",5];
};

_veh AddWeaponCargoGlobal _fsgun;
_veh AddMagazineCargoGlobal _fsmag;