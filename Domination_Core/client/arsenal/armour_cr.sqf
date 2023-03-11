[arsenalAmmoBox,["arifle_MXC_F"],false] call BIS_fnc_addVirtualWeaponCargo;
[arsenalAmmoBox,["30Rnd_65x39_caseless_mag","30Rnd_65x39_caseless_mag_Tracer"],false] call BIS_fnc_addVirtualMagazineCargo;
[arsenalAmmoBox,["H_HelmetCrew_B","U_B_CombatUniform_mcam_vest","V_BandollierB_rgr","acc_pointer_IR"],false] call Bis_fnc_addVirtualItemCargo;
[arsenalAmmoBox,[""],false] call Bis_fnc_addVirtualBackpackCargo;

comment "Exported from Arsenal by jayman";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_vest";
player addItemToUniform "ACRE_PRC148";

//Infantry Medical Equipment
[] call TWC_Domination_fnc_addInfantryMedicalGear;

player addVest "V_BandollierB_rgr";
for "_i" from 1 to 3 do {player addItemToVest "30Rnd_65x39_caseless_mag";};
player addItemToVest "30Rnd_65x39_caseless_mag_Tracer";
player addItemToVest "ACE_DAGR";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addHeadgear "H_HelmetCrew_B";

comment "Add weapons";
player addWeapon "arifle_MXC_F";
player addPrimaryWeaponItem "acc_pointer_IR";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "NVGoggles";