/*
by [TWC] Hobbs
renders unit blind if there's not enough units in his group, like if a sniper team needs both players or an armour crew needs all 3.

Once they have enough, then it runs itself again to wait until the situation changes, so if someone drops out it renders the player blind again

*/


waitUntil {!isNull player};

if ((count (units group player)) > 1) exitwith {};

if(!isMultiplayer)exitWith{};
cutText ["", "Black", 0.001];
player forceWalk true;


(group player) setvariable ["twc_teamrestrictedgrp", 1, true];

while {(count (units group player)) < 2}do{

cutText ["", "Black", 0.001];
    [
        "<t size='1.2'>Sniper Team</t><br/><t size='0.6'>You need both members of the sniper team online to proceed</t>", 0, 0.22, 5, 0, 0, 2
    ] spawn bis_fnc_dynamictext;
	sleep 0.5;
	closeDialog 602;
	if ((player distance twc_basepos) > 10) then {
		player setpos twc_basepos;
	};
};
cutText ["","Black IN",5];
player forceWalk false;


[player] call twc_fnc_legitgroup;