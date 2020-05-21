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
//if ((missionnamespace getvariable ["twc_lastreplen" + (name player), -700]) > (time - 600)) exitwith {};
//missionnamespace setvariable ["twc_lastreplen" + (name player), time];

_weapons = [["twc_L5A4_white",1]];
_magazines = [["SmokeShell",5], ["SmokeShellYellow",5], ["SmokeShellRed",5], ["SmokeShellGreen",5], ["SmokeShellPurple",5], ["SmokeShellBlue",5], ["SmokeShellOrange",5], ["Chemlight_green",5], ["Chemlight_yellow",5], ["Chemlight_red",5], ["Chemlight_blue",5],["ACE_Chemlight_IR",5],["twc_l5a4_w",15]];
_items = [["ItemMap",4],["ACE_EarPlugs",2],[(["ACE_MRE_SteakVegetables","ACE_MRE_MeatballsPasta","ACE_MRE_LambCurry","ACE_MRE_CreamTomatoSoup","ACE_MRE_CreamChickenSoup","ACE_MRE_ChickenHerbDumplings","ACE_MRE_ChickenTikkaMasala","ACE_MRE_BeefStew"] call bis_fnc_selectrandom),3],[(["ACE_MRE_SteakVegetables","ACE_MRE_MeatballsPasta","ACE_MRE_LambCurry","ACE_MRE_CreamTomatoSoup","ACE_MRE_CreamChickenSoup","ACE_MRE_ChickenHerbDumplings","ACE_MRE_ChickenTikkaMasala","ACE_MRE_BeefStew"] call bis_fnc_selectrandom),3],["ACE_WaterBottle",2],["ACE_MapTools",2],["ACE_DefusalKit",2],["rhsusf_ANPVS_14",2],["ACE_Flashlight_KSF1", 2],["ACE_HandFlare_White",15],["ACE_HandFlare_Green",15],["ACE_fieldDressing",20],["ACE_morphine",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_packingBandage",20], ["ACE_tourniquet", 4],["ACE_EntrenchingTool",2]];

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
