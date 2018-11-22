params ["_rocket"];

if (isnil "twc_APS_list") exitwith {};

if ((count twc_APS_list) == 0) exitwith {};
//systemchat "start";
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
			
			waituntil {((_rocket distance _x) < 50) || (!alive _rocket) || (!alive _x)};
			
			if (!alive _rocket) exitwith {};
			if (!alive _x) then {
				twc_APS_list deleteat (twc_APS_list find _x);
				publicVariable "twc_APS_list";
			} else {
			playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _x, false, getPosASL _x, 1.5, 2, 0];
			_gunner = gunner _x;
			
			if (!(_gunner == objnull)) then {
			
				_dir = ((gunner _x) getreldir _rocket);
				
				
					if ((_dir > 210) || (_dir < 150)) then {
							
						//if the turret is pointed sorta toward the threat, fire the turret smoke
						if ((_dir > 280) || (_dir < 80)) then {
							[_x] spawn {
								params ["_x"];
								sleep 0.7;
								[_x, "rhs_weap_902a"] call BIS_fnc_fire;
								[_x, "rhs_weap_902b"] call BIS_fnc_fire;
							};
						};
						
						//if it's somewhere kinda off the left rear quarter, fire the exhaust smoke
						_hulldir = (_x) getreldir _rocket;
						if ((_hulldir < 290) && (_hulldir > 150)) then {
							[_x] spawn {
								params ["_x"];
								sleep 2;
								[_x, "rhs_weap_smokegen"] call BIS_fnc_fire;
							};
						};
						_charge = str (ceil(_dir / 20));
						if ((_x getvariable ["twc_aps_fired" + _charge, 0]) == 0) then {
						
							_bang = createvehicle ["rhsusf_mine_m14_ammo", ((position _x) vectoradd [0,0,2]), [], 0, "can_collide"];
							_bang setdamage 1;
							_x setvariable ["twc_aps_fired" + _charge, 1, true];
							
							
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
									(gunner _x) reveal [player, 2];
								};
							};
						};
					};
				};
			};
		};
	};
} foreach twc_APS_list;