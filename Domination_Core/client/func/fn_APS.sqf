/*
By TWC Hobbs
Active protection system for russian tanks

Also has a non APS array that piggybacks in the same function to make tanks fire smoke launchers when fired upon by threatening contacts

*/

params ["_rocket"];

if ((isnil "twc_APS_list") && (isnil "twc_nonAPS_list")) exitwith {};

if (((count twc_APS_list) == 0) && ((count twc_nonAPS_list) == 0)) exitwith {};
//systemchat "start2";

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
		sleep (10 + (random 10));
		//systemchat "moving on";
		(driver _tank) dofollow (leader (driver _tank));
	};
};

{
	_rmod1 = ((player distance _x) / 100) min 15;
	_dir = (player getreldir _x);
	if ((_dir > (340 + _rmod1)) || (_dir < (20 - _rmod1))) then {
		[_rocket, _x] spawn {
			params ["_rocket", "_x"];
			
			if (!alive _x) then {
				twc_nonAPS_list deleteat (twc_nonAPS_list find _x);
				publicVariable "twc_nonAPS_list";
			};
			
			_dis1 = _x distance _rocket;
			sleep 0.2;
			_dis2 = _x distance _rocket;
			
			if (_dis1 > _dis2) then {
				
				_gunner = gunner _x;
				
				//if it's far out and the turret is already pointed straight at it, fire the smoke early
				
				if ((_rocket distance _x) > 50) then {
					
					_lr = 0;
					if ((_rocket distance _x) > 600) then {
						_lr = 1;
					};
					
					
					if ((!(_gunner == objnull)) && (alive _gunner)) then {
					
						_dir = ((gunner _x) getreldir _rocket);
						
						_rmod1 = ((_rocket distance _x) / 100) min 15;
							
							if ((_dir > (340 + _rmod1)) || (_dir < (20 - _rmod1))) then {
								[_x, _lr] spawn {
									params ["_x", "_lr"];
									//systemchat "oh snap it's a rocket";
									sleep 1.5;
									[_x] remoteexec ["twc_smoketurret", _x];
									[player, gunner _x, 4] remoteexec ["twc_revealtotank", _x];
									[player, _x] remoteexec ["twc_tankfacethreat", _x];
									sleep 1;
									[_x] remoteexec ["twc_smokegen", _x];
									sleep 5;
									[_x] remoteexec ["twc_panictank", _x];
									if (_lr == 1) then {
										[_x] spawn {
											params ["_x"];
											sleep 10;
											[player, _x] remoteexec ["twc_tankclosedistance", _x];
										};
									};
								};
							};
						};
					};
				
				if ((!(_gunner == objnull)) && (alive _gunner)) then {
				
					waituntil {((_rocket distance _x) < 30) || (!alive _rocket) || (!alive _x)};
					
					if (!alive _rocket) exitwith {};
					if (!alive _x) then {
						twc_nonAPS_list deleteat (twc_nonAPS_list find _x);
						publicVariable "twc_nonAPS_list";
					} else {
				
						//if it's somewhere kinda off the left rear quarter, fire the exhaust smoke
						_hulldir = (_x) getreldir _rocket;
						if ((_hulldir < 320) && (_hulldir > 70) && ((random 1) < 0.7)) then {
							[_x] spawn {
								params ["_x"];
								sleep (random 5);
								//the canisters can be mashed but the generator can't, so have a timer in there so that GMG spam doesn't spam smoke. No need to broadcast
								if ((_x getvariable ["twc_lastsmokegen",0]) < (time + 6)) then {
									[_x] remoteexec ["twc_smokegen", _x];
									_x setvariable ["twc_lastsmokegen",time, true];
									sleep (random 5);
									[_x] remoteexec ["twc_panictank", _x];
								};
							};
						} else {
							waituntil {(!alive _rocket)};
							sleep 2;
							//[[_x],twc_panictank] remoteExec ["bis_fnc_call", 2];
							
						};
						
						_dir2 = ((driver _x) getreldir _rocket);
						if ((_dir2 < (320)) && (_dir2 > (40))) then {
							[player, _x] remoteexec ["twc_tankfacethreat", _x];
						};
					};
				};
			};
		};
	};
} foreach twc_nonAPS_list;



{
	_rmod1 = ((player distance _x) / 100) min 15;
	_dir = (player getreldir _x);
	if ((_dir > (340 + _rmod1)) || (_dir < (20 - _rmod1))) then {
		[_rocket, _x] spawn {
			params ["_rocket", "_x"];
			
			if (!alive _x) then {
				twc_APS_list deleteat (twc_APS_list find _x);
				publicVariable "twc_APS_list";
			};
			
			_dis1 = _x distance _rocket;
			sleep 0.2;
			_dis2 = _x distance _rocket;
			
			if (_dis1 > _dis2) then {
				//if it's far out and the turret is already pointed straight at it, fire the smoke early
				
				_gunner = gunner _x;
				if ((_rocket distance _x) > 50) then {
					
					_lr = 0;
					if ((_rocket distance _x) > 600) then {
						_lr = 1;
					};
				
				
				if ((!(_gunner == objnull)) && (alive _gunner)) then {
				
					_dir = ((gunner _x) getreldir _rocket);
					
					_rmod1 = ((_rocket distance _x) / 100) min 15;
						
						if ((_dir > (340 + _rmod1)) || (_dir < (20 - _rmod1))) then {
							[_x, _lr, _rocket] spawn {
								params ["_x", "_lr", "_rocket"];
								//systemchat "oh snap it's a rocket";
								sleep 1.5;
								[_x] remoteexec ["twc_smoketurret", _x];
								[player, gunner _x, 4] remoteexec ["twc_revealtotank", _x];
								sleep 1;
								[_x] remoteexec ["twc_smokegen", _x];
								sleep 2;
								
								if ((_x distance player) > 500) then {
									[_x] remoteexec ["twc_panictank", _x];
								} else {
								
									_dir2 = ((driver _x) getreldir _rocket);
									if ((_dir2 < (320)) && (_dir2 > (40))) then {
										[player, _x] remoteexec ["twc_tankfacethreat", _x];
									};
								};
								if (_lr == 1) then {
									[_x] spawn {
										params ["_x"];
										sleep 10;
										[player, _x] remoteexec ["twc_tankclosedistance", _x];
									};
								};
							};
						};
					};
				};
				
				waituntil {((_rocket distance _x) < 150) || (!alive _rocket) || (!alive _x)};
				
				if (!alive _rocket) exitwith {};
				if (!alive _x) then {
					twc_APS_list deleteat (twc_APS_list find _x);
					publicVariable "twc_APS_list";
				} else {
				
				_gunner = gunner _x;
				
				if ((!(_gunner == objnull)) && (alive _gunner)) then {
				
					_dir = ((gunner _x) getreldir _rocket);
					
					
						if ((_dir > 210) || (_dir < 150)) then {
								
							//if the turret is pointed sorta toward the threat, fire the turret smoke
							if ((_dir > 280) || (_dir < 80)) then {
								[_x] spawn {
									params ["_x"];
									sleep 0.7;
									[_x] remoteexec ["twc_smoketurret", _x];
								};
							};
							
							//if it's somewhere kinda off the left rear quarter, fire the exhaust smoke
							_hulldir = (_x) getreldir _rocket;
							if ((_hulldir < 290) && (_hulldir > 150)) then {
								[_x] spawn {
									params ["_x"];
									sleep 2;
									[_x] remoteexec ["twc_smokegen", _x];
									sleep 2;
									[_x] remoteexec ["twc_panictank", _x];
								};
							};
							
							
				
							waituntil {((_rocket distance _x) < 50) || (!alive _rocket) || (!alive _x)};
							
							if (!alive _rocket) exitwith {};
							if (!alive _x) then {
								twc_APS_list deleteat (twc_APS_list find _x);
								publicVariable "twc_APS_list";
							} else {
								_charge = str (ceil(_dir / 20));
								if ((_x getvariable ["twc_aps_fired" + _charge, 0]) == 0) then {
									playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _x, false, getPosASL _x, 1.5, 2, 0];
									_bang = createvehicle ["rhsusf_mine_m14_ammo", ((position _x) vectoradd [0,0,2]), [], 0, "can_collide"];
									_bang setdamage 1;
									_x setvariable ["twc_aps_fired" + _charge, 1, true];
									
									waituntil {((_rocket distance _x) < 30) || (!alive _rocket) || (!alive _x)};
									
									_c1 = (_x getRelPos [3, _hulldir]) vectoradd [0,0,3.5];
									//_bang2 = createvehicle ["rhsusf_mine_m14_ammo", _c1, [], 0, "can_collide"];
									//_bang2 setdamage 1;
									_bang3 = createvehicle ["APERSMine_Range_Ammo", _c1, [], 0, "can_collide"];
									_bang3 setdamage 1;
									sleep 0.1;
									//systemchat "yep";
									_dis3 = _dis2 min 150;
									_chance = 0.3 * ((_dis3 - 30) / 70);
									//systemchat format ["%1", _chance];
									if ((random 1) < _chance) then {
										
							
										waituntil {((_rocket distance _x) < 20) || (!alive _rocket) || (!alive _x)};
										
										if (alive _rocket) then {
											if (!alive _x) then {
												twc_APS_list deleteat (twc_APS_list find _x);
												publicVariable "twc_APS_list";
											} else {
												_airpos = getpos _rocket;
												deletevehicle _rocket;
												'rhs_ammo_ptb1500' createvehicle _airpos;
												[player, gunner _x, 4] remoteexec ["twc_revealtotank", _x];
											};
										};
										_dir2 = ((driver _x) getreldir _rocket);
										if ((_dir2 < (320)) && (_dir2 > (40))) then {
											[player, _x] remoteexec ["twc_tankfacethreat", _x];
										};
									} else {
									//if the APS fails, driver nopes out of there
										if ((!((driver _x) == objnull)) && (alive (driver _x))) then {
											sleep 2;
											
											if ((random 1) < 0.3) then {
												[_x] remoteexec ["twc_panictank", _x];
											} else {
												_dir2 = ((driver _x) getreldir _rocket);
												if ((_dir2 < (320)) && (_dir2 > (40))) then {
													[player, _x] remoteexec ["twc_tankfacethreat", _x];
												};
											};
											[player, gunner _x, 1.5] remoteexec ["twc_revealtotank", _x];
										};
									};
								};
							};
						};
						waituntil {((_rocket distance _x) < 20)};
						sleep 1;
						//systemchat "turning";
						[player, _x] remoteexec ["twc_tankfacethreat", _x];
						
					};
				};
			};
		};
	};
} foreach twc_APS_list;