/*
by [TWC] Hobbs
renders unit blind if there's not enough units in his group, like if a sniper team needs both players or an armour crew needs all 3.

Once they have enough, then it runs itself again to wait until the situation changes, so if someone drops out it renders the player blind again

*/


waituntil {(count (units group player)) < 3};

_com = 0;
_gun = 0;
_obs = 0;

{
	if ((typeof _x) == "Modern_Artillery_Commander") then {
		_com = 1;
	};
	if ((typeof _x) == "Modern_Artillery_Gunner") then {
		_gun = 1;
	};
	if ((typeof _x) == "Modern_British_FSTForwardObserver") then {
		_obs = 1;
	};
} foreach (units group player);

if(!isMultiplayer)exitWith{};
cutText ["", "Black", 0.001];
player forceWalk true;

while {(_com == 0) || (_gun == 0) || (_obs == 0)}do{

	cutText ["", "Black", 0.001];
		[
			"<t size='1.2'>Artillery Crew</t><br/><t size='0.6'>You need at least a Commander, Operator and Observer in the group before you can proceed</t>", 0, 0.22, 5, 0, 0, 2
		] spawn bis_fnc_dynamictext;
		
		sleep 5;
	{
		if ((typeof _x) == "Modern_Artillery_Commander") then {
			_com = 1;
		};
		if ((typeof _x) == "Modern_Artillery_Gunner") then {
			_gun = 1;
		};
		if ((typeof _x) == "Modern_British_FSTForwardObserver") then {
			_obs = 1;
		};
	} foreach (units group player);
	sleep 5;
	if ((player distance twc_basepos) > 10) then {
		player setpos twc_basepos;
	};
};

cutText ["","Black IN",5];
player forceWalk false;




execvm "domination_core\client\sys_restrict\fullArtyCrew.sqf";