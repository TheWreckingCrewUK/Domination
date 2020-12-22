/*
        Different Ammobox v 1.0
        by Demonized.

        1: place a marker named DMZ_DA anywhere you want the players to see their ammobox, all will see their box in same position.
        2: place this in init line of any unit.
                _null = this execVM "DMZ_DA.sqf";
        3: save this script as DMZ_DA.sqf and place it in your mission folder.

        For more classnames on ammoboxes or weapons and magazines go here:
                http://forums.bistudio.com/showthread.php?t=73241&page=2
				edited by FakeMatty
				edited by jayman to make it reload on box close animation.
				This reduces players lag as it no longer fills every 240 seconds.
*/

_weapons = [["twc_L5A4_white",1], ["ACE_Flashlight_Maglite_ML300L",1]];
_magazines = [["UK3CB_BAF_SmokeShell",10], ["UK3CB_BAF_SmokeShellYellow",5], ["UK3CB_BAF_SmokeShellRed",5], ["UK3CB_BAF_SmokeShellGreen",5], ["UK3CB_BAF_SmokeShellPurple",5], ["UK3CB_BAF_SmokeShellBlue",5], ["UK3CB_BAF_SmokeShellOrange",5], ["Chemlight_green",20], ["Chemlight_yellow",20], ["Chemlight_red",20], ["Chemlight_blue",20],["ACE_Chemlight_IR",10],["twc_l5a4_w",15]];
_items = [["ItemMap",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_Flashlight_KSF1", 1],["ACE_HandFlare_White",5],["ACE_HandFlare_Green",5],["ACE_fieldDressing",40],["ACE_morphine",10],["ACE_elasticBandage",20],["ACE_quikclot",20], ["ACE_tourniquet", 4],["ACE_SpraypaintGreen",1],["Toolkit",0],["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["twc_l5a4_w",25]];

twc_crateweapons = [];
twc_cratemagazines = [];
twc_crateitems = [];
{twc_crateweapons pushback _x} foreach _weapons;
{twc_cratemagazines pushback _x} foreach  _magazines;
{twc_crateitems pushback _x} foreach _items;

_backpacks = [];
_tmp_weapons = [];
_tmp_magazines = [];
_tmp_items = [];
_tmp_backpacks = [];

#include "pol_base.sqf";
#include "ger_base.sqf";
#include "usmc_modern_base.sqf";
#include "1990_base.sqf";
#include "2000_base.sqf";
#include "baf_modern_base.sqf";


_tmp_items pushback [(headgear player), 1];

{
        _weapons set [count _weapons, _x];
} forEach _tmp_weapons;

{
        _magazines set [count _magazines, _x];
} forEach _tmp_magazines;

{
        _items set [count _items, _x];
} forEach _tmp_items;

{
        _backpacks set [count _backpacks, _x];
} forEach _tmp_backpacks;

// empty it.
clearWeaponCargo crateBox;
clearMagazineCargo crateBox;
clearItemCargo crateBox;
clearbackPackCargo crateBox;

_spawnweps = [(configFile >> "CfgVehicles" >> (typeOf player)), "weapons", "none"] call BIS_fnc_returnConfigEntry;
 
{
_spawnweps pushback (_x select 0);
} foreach _tmp_weapons;


_spawnitems = [(configFile >> "CfgVehicles" >> (typeOf player)), "weapons", "none"] call BIS_fnc_returnConfigEntry;
 
{
_spawnweps pushback (_x select 0);
} foreach _tmp_items;


_checkweps = (player getvariable ["twc_allowedweapons", []]);
if (count _checkweps == 0) then {player setvariable ["twc_allowedweapons", _spawnweps]};

// add in all weapons.
{crateBox addWeaponCargo [(_x select 0),(_x select 1)]} foreach _weapons;

// add in all magazines.
{crateBox addMagazineCargo [(_x select 0),(_x select 1)]} foreach _magazines;

{crateBox addItemCargo [(_x select 0),(_x select 1)]} foreach _items;

{crateBox addBackpackCargo [(_x select 0),(_x select 1)]} foreach _backpacks;

[player] call twc_fnc_buildmagarray;
