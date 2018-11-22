/*
By TWC Hobbs
Active protection system for russian tanks

Also has a non APS array that piggybacks in the same function to make tanks fire smoke launchers when fired upon by threatening contacts

*/

params ["_rocket"];

if ((isnil "twc_APS_list") && (isnil "twc_nonAPS_list")) exitwith {};

if (((count twc_APS_list) == 0) && ((count twc_nonAPS_list) == 0)) exitwith {};
//systemchat "start";

twc_smokegen = {[(_this select 0), "rhs_weap_smokegen"] call BIS_fnc_fire;};

twc_smoketurret = {[(_this select 0), "rhs_weap_902a"] call BIS_fnc_fire;
[(_this select 0), "rhs_weap_902b"] call BIS_fnc_fire;};

twc_panictank = {
_pos = getpos (_this select 0);
_pos = [getpos (_this select 0), 20, 200, 10, 0, 1, 0, [], [getpos (_this select 0), getpos (_this select 0)]] call BIS_fnc_findSafePos;
(driver (_this select 0)) domove _pos;
};

{
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
			
			
			//if it's far out and the turret is already pointed straight at it, fire the smoke early
			
			if ((_rocket distance _x) > 500) then {
			
			_gunner = gunner _x;
			
			if ((!(_gunner == objnull)) && (alive _gunner)) then {
			
				_dir = ((gunner _x) getreldir _rocket);
				
				_rmod1 = ((_rocket distance _x) / 100) min 15;
					
					if ((_dir > (340 + _rmod1)) || (_dir < (20 - _rmod1))) then {
						[_x] spawn {
							params ["_x"];
							//systemchat "oh snap it's a rocket";
							sleep 1.5;
							[[_x],twc_smoketurret] remoteExec ["bis_fnc_call", 2];
							sleep 1;
							[[_x],twc_smokegen] remoteExec ["bis_fnc_call", 2];
							sleep 2;
							[[_x],twc_panictank] remoteExec ["bis_fnc_call", 2];
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
					if ((_hulldir < 320) && (_hulldir > 150) && ((random 1) < 0.7)) then {
						[_x] spawn {
							params ["_x"];
							sleep (random 5);
							//the canisters can be mashed but the generator can't, so have a timer in there so that GMG spam doesn't spam smoke. No need to broadcast
							if ((_x getvariable ["twc_lastsmokegen",0]) < (time + 6)) then {
								[[_x],twc_smokegen] remoteExec ["bis_fnc_call", 2];
								_x setvariable ["twc_lastsmokegen",time];
							};
						};
					} else {
						waituntil {(!alive _rocket)};
						sleep 2;
						[[_x],twc_panictank] remoteExec ["bis_fnc_call", 2];
					};
				};
			};
		};
	};
} foreach twc_nonAPS_list;



{
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
			
			if ((_rocket distance _x) > 500) then {
			
			_gunner = gunner _x;
			
			if ((!(_gunner == objnull)) && (alive _gunner)) then {
			
				_dir = ((gunner _x) getreldir _rocket);
				
				_rmod1 = ((_rocket distance _x) / 100) min 15;
					
					if ((_dir > (340 + _rmod1)) || (_dir < (20 - _rmod1))) then {
						[_x] spawn {
							params ["_x"];
							//systemchat "oh snap it's a rocket";
							sleep 1.5;
							[[_x],twc_smoketurret] remoteExec ["bis_fnc_call", 2];
							sleep 1;
							[[_x],twc_smokegen] remoteExec ["bis_fnc_call", 2];
							sleep 2;
							[[_x],twc_panictank] remoteExec ["bis_fnc_call", 2];
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
								[[_x],twc_smoketurret] remoteExec ["bis_fnc_call", 2];
							};
						};
						
						//if it's somewhere kinda off the left rear quarter, fire the exhaust smoke
						_hulldir = (_x) getreldir _rocket;
						if ((_hulldir < 290) && (_hulldir > 150)) then {
							[_x] spawn {
								params ["_x"];
								sleep 2;
								[[_x],twc_smokegen] remoteExec ["bis_fnc_call", 2];
								sleep 2;
								[[_x],twc_panictank] remoteExec ["bis_fnc_call", 2];
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
								
								waituntil {((_rocket distance _x) < 25) || (!alive _rocket) || (!alive _x)};
								
								_c1 = (_x getRelPos [3, _hulldir]) vectoradd [0,0,3.5];
								//_bang2 = createvehicle ["rhsusf_mine_m14_ammo", _c1, [], 0, "can_collide"];
								//_bang2 setdamage 1;
								_bang3 = createvehicle ["APERSMine_Range_Ammo", _c1, [], 0, "can_collide"];
								_bang3 setdamage 1;
								
								//systemchat "yep";
								if ((random 1) < 0.5) then {
									
						
									waituntil {((_rocket distance _x) < 20) || (!alive _rocket) || (!alive _x)};
									
									if (!alive _rocket) exitwith {};
									if (!alive _x) then {
										twc_APS_list deleteat (twc_APS_list find _x);
										publicVariable "twc_APS_list";
									} else {
										_airpos = getpos _rocket;
										deletevehicle _rocket;
										'rhs_ammo_ptb1500' createvehicle _airpos;
										(gunner _x) reveal [player, 1.5];
									};
								} else {
								//if the APS fails, driver nopes out of there
									if ((!((driver _x) == objnull)) && (alive (driver _x))) then {
										sleep 2;
										[[_x],twc_panictank] remoteExec ["bis_fnc_call", 2];
									};
								};
							};
						};
					};
				};
			};
		};
	};
} foreach twc_APS_list;