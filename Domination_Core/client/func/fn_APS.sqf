params ["_rocket"];

if (isnil "twc_APS_list") exitwith {};

if ((count twc_APS_list) == 0) exitwith {};

{
	[_rocket, _x] spawn {
		params ["_rocket", "_x"];
		if (!alive _x) then {
			twc_APS_list deleteat (twc_APS_list find _x);
			publicVariable "twc_APS_list";
		};
		
		waituntil {((_rocket distance _x) < 30) || (!alive _rocket) || (!alive _x)};
		
		if (!alive _rocket) exitwith {};
		if (!alive _x) then {
			twc_APS_list deleteat (twc_APS_list find _x);
			publicVariable "twc_APS_list";
		} else {
		
			if (((_x getreldir _rocket) > 210) || ((_x getreldir _rocket) < 150)) then {
				_bang = createvehicle ["rhsusf_mine_m14_ammo", ((position _x) vectoradd [0,0,2]), [], 0, "can_collide"];
				_bang setdamage 1;
				
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
					};
				};
			};
		};
	};
} foreach twc_APS_list;