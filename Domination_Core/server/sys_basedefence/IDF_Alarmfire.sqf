_time = random 4;
_base = idfradar;
_shooter = _this select 0;
_shell = _this select 1;
_direction = _shell getreldir _base;
_distance = (_shooter) distance _base;

//defines how close shells have to be aimed before tripping the alarm. FOB kunduz is 40 as a baseline.

if(isNil "idfbasesize") then {idfbasesize = 40};

_accuracy = idfbasesize * 0.5;

_distancescale = _accuracy * ((_distance * (_distance*0.2)) / 3500000);



systemchat format ["%1, %2", _distancescale, _distance];

if (isnil "idfreported") then { idfreported = 0};

	//if (idfreported == 0) then {
	if (0 == 0) then {
		//systemchat "1";
		if ((_shooter) distance _base < 25000) then
{			//systemchat "2";
			if ((_shooter) distance _base > (idfbasesize *3)) then
{			

				
			[_base, _shell, _distance, _shooter] spawn {
			
			
			params ["_base", "_shell", "_distance", "_shooter"];
			
			_dis1= _shell distance _base;
			sleep 3;
			_dis2= _shell distance _base;
			
			if (_dis1 > _dis2) then {
			
			systemchat "4";
			basesafe = 0;
			publicvariable "idfsafe";

			idfreported = 1;
			publicvariable "idfreported";



			[_shell] execVM "domination_core\server\sys_basedefence\IDF_cram.sqf";

			[_shooter,_distance] execvm "domination_core\server\sys_basedefence\IDF_marker.sqf";
			if (alarm == 0) then {
				alarm = 1;
				publicvariable "alarm";

				//systemchat "middle man sees the shell";


				if (idfon == 0) then {
				execVM "domination_core\server\sys_basedefence\IDF_Alarm.sqf";

				};
				if (clearing == 0) then {
				execVM "domination_core\server\sys_basedefence\IDF_Clear.sqf";
				};

				};
			};
			};
		
		};
	};
};

