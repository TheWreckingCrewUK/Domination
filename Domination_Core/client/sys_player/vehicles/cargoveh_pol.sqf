 _spawnpos = getpos AmmoBoxSpawner;
 
 

 
 
 _veh = "rhs_kamaz5350_msv" createvehicle _spawnpos;  
  
 
 

clearWeaponCargoGlobal _veh;
clearBackpackCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearitemCargoGlobal _veh;

_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Vehicle Spawner</t>"; 

 _text1 =  "<br />The Vehicle Has Been Spawned.";
_spawntext = parsetext (_title + _text1);
hint _spawntext;

_box = _veh;
_box AddWeaponCargoGlobal ["rhs_weap_rpg75",3];

_box AddMagazineCargoGlobal ["twc_rhsgref_30rnd_556x45_m21",30];
_box AddMagazineCargoGlobal ["twc_rhsgref_30rnd_556x45_m21_t",10];


_box AddMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag",3];
_box AddMagazineCargoGlobal ["rhs_rpg7_TBG7V_mag",2];


_box AddMagazineCargoGlobal ["rhs_100Rnd_762x54mmR_7N26",5];
_box AddMagazineCargoGlobal ["rhs_100Rnd_762x54mmR_green",2];

_box AddMagazineCargoGlobal ["rhs_VOG25",15];
_box AddMagazineCargoGlobal ["rhs_GRD40_White",5];


_box addItemCargoGlobal ["ACE_fieldDressing",20];
_box addItemCargoGlobal ["ACE_elasticBandage",20];
_box addItemCargoGlobal ["ACE_quikclot",20];
_box addItemCargoGlobal ["ACE_packingBandage",20];
_box addItemCargoGlobal ["ACE_personalAidKit",5];
_box addItemCargoGlobal ["ACE_salineIV_500",2];
_box addItemCargoGlobal ["ACE_atropine",5];
_box addItemCargoGlobal ["ACE_epinephrine",5];
_box addItemCargoGlobal ["ACE_morphine",5];
_box addItemCargoGlobal ["HandGrenade",5];
_box addItemCargoGlobal ["SmokeShell",5];
_box addItemCargoGlobal ["SmokeShellRed",2];


_boxaction = ["deleteCreate","Return Vehicle","",{deleteVehicle this;

 twc_specvehcount = 0;
 publicVariable "twc_specvehcount";
},{(count (player nearobjects ["Land_InfoStand_V1_F", 200]) > 0)}] call ace_interact_menu_fnc_createAction;
[_veh,0,["ACE_MainActions"],_boxaction] call ace_interact_menu_fnc_addActionToobject;