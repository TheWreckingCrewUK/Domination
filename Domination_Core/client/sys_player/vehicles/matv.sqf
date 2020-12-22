params["_heli"];

if(isNil "_heli")exitWith{hint "No coyote was given to the spawn system, please notify management"};


if(isNil "twc_coyotecount") then{
	twc_coyotecount = 0;
	publicVariable "twc_coyotecount";
};


if (twc_coyotecount >= 2) exitwith {
	
	
_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Too Many FST Vehicles</t>"; 

 _text1 = format ["<br />There Are Already 2 FST Vehicles In The AO. You Can Return Them To Base To Have Access to Another",1];
_spawntext = parsetext (_title + _text1);
hint _spawntext;
	
	};


//twc_coyotecount=twc_coyotecount + 1;
//publicVariable "twc_coyotecount";

_veh = _heli createvehicle (getPos AmmoBoxSpawner);

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;

if ((missionnamespace getvariable ["twc_wdveh", 0]) == 0) then {
	[
		_veh,
		["rhs_desert",1], 
		["hide_rhino",1,"DoorLF",0,"DoorRF",0,"DoorLB",0,"DoorRB",0,"DUKE_Hide",1,"hide_spare",0]
	] call BIS_fnc_initVehicle;
} else {
	[
		_veh,
		["rhs_olive",1], 
		["hide_rhino",1,"DoorLF",0,"DoorRF",0,"DoorLB",0,"DoorRB",0,"DUKE_Hide",1,"hide_spare",0]
	] call BIS_fnc_initVehicle;
};


_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>"; 

 _text1 =  "<br />The Vehicle Has Been Spawned. It's Already Loaded With Ammunition";
_spawntext = parsetext (_title + _text1);
hint _spawntext;


_veh setammocargo 0;


if (_heli == "rhsusf_m1240a1_m2crows_usmc_wd") then {
	_veh AddMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",8];
};

if (_heli == "rhsusf_m1240a1_mk19crows_usmc_wd") then {
	_veh AddMagazineCargoGlobal ["UK3CB_BAF_32Rnd_40mm_G_Box",8];
};


_fsgun = ["twc_rhs_weap_m240G_mdo_lazer",1];
_fsmag = ["UK3CB_BAF_762_100Rnd_T",5];

if ((random 1) < 0.3) then {
	_fsgun = ["rhs_weap_M320",1];
	_fsmag = ["1Rnd_HE_Grenade_shell",10];
};
_veh AddWeaponCargoGlobal _fsgun;
_veh AddMagazineCargoGlobal _fsmag;


[_veh, player, 4] call twc_fnc_genericfillvehicle;

_veh addEventHandler ["Killed",{

twc_coyotecount=twc_coyotecount - 1;
publicVariable "twc_coyotecount";
	}];
_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;
