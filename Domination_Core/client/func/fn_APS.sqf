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
		sleep 0.5;
		_dis2 = _x distance _rocket;
		
		if (_dis1 > _dis2) then {
			
			waituntil {((_rocket distance _x) < 30) || (!alive _rocket) || (!alive _x)};
			
			if (!alive _rocket) exitwith {};
			if (!alive _x) then {
				twc_APS_list deleteat (twc_APS_list find _x);
				publicVariable "twc_APS_list";
			} else {
			
			_dir = (_x getreldir _rocket);
			
				if ((_dir > 210) || (_dir < 150)) then {
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
} foreach twc_APS_list;