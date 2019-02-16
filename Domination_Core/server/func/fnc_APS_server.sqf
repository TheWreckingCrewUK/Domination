
twc_smokegen = {[(_this select 0), "rhs_weap_smokegen"] call BIS_fnc_fire;
//systemchat "exhaust smoke";
};

twc_smoketurret = {[(_this select 0), "rhs_weap_902a"] call BIS_fnc_fire;
[(_this select 0), "rhs_weap_902b"] call BIS_fnc_fire;
//systemchat "turret smoke";
};

twc_revealtotank = {
params ["_player", "_tank", "_amount"];
	_tank reveal [_player, _amount];
	//systemchat "reveal player";
};

twc_panictank = {
//systemchat "Panic";
_pos = getpos (_this select 0);
_pos = [getpos (_this select 0), 20, 200, 10, 0, 1, 0, [], [getpos (_this select 0), getpos (_this select 0)]] call BIS_fnc_findSafePos;
(driver (_this select 0)) domove _pos;
};

twc_tankclosedistance = {
params ["_player", "_tank"];
_pos = getpos _player;
_dir = _tank getdir _player;
_dis = _player distance _tank;

_pos1 = _tank getRelPos [(_dis - (200 + random 300)), _dir];
_movepos = getpos _player;
_movepos = [_pos1, 20, 200, 10, 0, 1, 0, [], [_pos1, _pos1]] call BIS_fnc_findSafePos;
(driver _tank) domove _movepos;
};

twc_tankfacethreat = {
	params ["_player", "_tank"];
	
		[_player, _tank] spawn {
		params ["_player", "_tank"];
		dostop _tank;
		sleep 0.5;
		//if ((speed _tank) > 10) exitwith {};
		_dir = _tank getdir _player;
		//systemchat "facing threat";
		_pos1 = _tank getpos [50, _dir];
		(driver _tank) domove _pos1;
		waituntil {(((driver _tank) getreldir _player) > 350) || (((driver _tank) getreldir _player) < 10)};
		doStop (driver _tank);
		sleep 10 + random 10;
		//systemchat "moving on";
		(driver _tank) dofollow (leader (driver _tank));
	};
};