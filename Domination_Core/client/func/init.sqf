
twc_fnc_seenbyblufor = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_seenbyblufor.sqf";
twc_fnc_posNearPlayers = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_posNearPlayers.sqf";

twc_fnc_buildmagarray = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_buildmagarray.sqf";

twc_fnc_buildmagarray_set = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_buildmagarray_set.sqf";

twc_fnc_heliparadrop = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_heliparadrop.sqf";
twc_fnc_civfluff_server = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_civfluff_server.sqf";
twc_fnc_civfluff_client = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_civfluff_client.sqf";


twc_fnc_genericfillvehicle = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_genericfillvehicle.sqf";

twc_fnc_seenbyplayers = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_seenbyplayers.sqf";
twc_fnc_lookedatbyplayers = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_lookedatbyplayers.sqf";
twc_fnc_findsneakypos = compile preprocessfilelinenumbers "Domination_Core\server\func\fnc_findsneakypos.sqf";

twc_fnc_pubstartingloadout = compile preprocessfilelinenumbers "Domination_Core\client\sys_player\fnc_startingloadout.sqf";

twc_fnc_playerheadshot = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_playerheadshot.sqf";
twc_fnc_setradio = compile preprocessfilelinenumbers "Domination_Core\client\func\fnc_setradio.sqf";

twc_fnc_vehicledrop = compile preprocessfilelinenumbers "Domination_Core\client\sys_player\vehicledrop.sqf";

twc_issidenearby = {
	_check = true;
	{
		if ((side _x) == (side player)) then {
			if ((_x distance player) > 40) then {_check = false};
		};
	} foreach (allplayers);
	if (!_check) then {
	
		_title  = "<t color='#ffbf00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Time Skip</t>"; 

		 _text1 = "<br />All members of the side need to be nearby to switch team";
		hint parsetext (_title + _text1);
	};
	_check;
};

twc_fnc_cantp1 = {

	_return = false;
	
	if (((getmarkertype "twc_tp1") == "") || ((getmarkertype "twc_tp2") == "") || (!((vehicle player) == player))) exitwith {_return};
	
	if ((player distance (getmarkerpos "twc_tp1")) < (player distance (getmarkerpos "twc_tp2"))) then {
		_return = true;
	};
	_return;
};

twc_fnc_cantp2 = {

	_return = false;
	
	if (((getmarkertype "twc_tp1") == "") || ((getmarkertype "twc_tp2") == "") || (!((vehicle player) == player))) exitwith {_return};
	
	if ((player distance (getmarkerpos "twc_tp1")) > (player distance (getmarkerpos "twc_tp2"))) then {
		_return = true;
	};
	_return;
};

twc_fnc_isplayeratbase = {

	_return = false;
	
	if ((player distance (twc_basepos)) < (500)) then {
		_return = true;
	};
	_return;
};

twc_fnc_isplayeratbaseorpb = {

	_return = false;
	
	if ((player distance (twc_basepos)) < (500)) then {
		_return = true;
	};
	
	_markerstring = ("respawn_"+ (str (side player)) + "_forwardbase");
	if ((player distance (getmarkerpos _markerstring)) < (500)) then {
		_return = true;
	};
	_return;
};


twc_hintfullsection = {
	params ["_group"];
	
	_arr = [];
	{
		_arr pushback [name _x, typeof _x, getPlayerUID _x];
	} foreach (units _group);
	
	if (!hasinterface) exitwith {
		diag_log ("twcgoodeggs "+(str _arr));
	};
};

twc_fnc_basetp = {

	if ((player distance (getmarkerpos "twc_tp2")) < (player distance (getmarkerpos "twc_tp1"))) exitwith {
		player setpos (getmarkerpos "twc_tp1");
		player setdir (markerdir "twc_tp1");
	};

	if ((player distance (getmarkerpos "twc_tp2")) > (player distance (getmarkerpos "twc_tp1"))) exitwith {
		player setpos (getmarkerpos "twc_tp2");
		player setdir (markerdir "twc_tp2");
	};
	
	hint "huh, you broke it. Well done I guess";
};