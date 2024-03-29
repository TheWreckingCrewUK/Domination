[arsenalAmmoBox,["hgun_ACPC2_F"],false] call BIS_fnc_addVirtualWeaponCargo;
[arsenalAmmoBox,["9Rnd_45ACP_Mag","B_IR_Grenade"],false] call BIS_fnc_addVirtualMagazineCargo;
[arsenalAmmoBox,["H_PilotHelmetFighter_B","U_B_PilotCoveralls","ACRE_PRC148","ACE_DAGR"],false] call Bis_fnc_addVirtualItemCargo;
[arsenalAmmoBox,["B_Parachute"],false] call Bis_fnc_addVirtualBackpackCargo;

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
player forceAddUniform "U_B_PilotCoveralls";
player addItemToUniform "ACRE_PRC148";

//Infantry Medical Equipment
[] call TWC_Domination_fnc_addInfantryMedicalGear;

for "_i" from 1 to 2 do {player addItemToUniform "9Rnd_45ACP_Mag";};
player addItemToUniform "B_IR_Grenade";
player addBackpack "B_Parachute";
player addHeadgear "H_PilotHelmetFighter_B";

comment "Add weapons";
player addWeapon "hgun_ACPC2_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";