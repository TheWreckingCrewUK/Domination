//made by hartzie edited by FakeMatty
_player1 = if(!isNil "usmcp1")then{if(!isPlayer usmcp1)then{"";}else{(name usmcp1);};}else{"";};
_player2 = if(!isNil "usmcp2")then{if(!isPlayer usmcp2)then{"";}else{(name usmcp2);};}else{"";};
_player3 = if(!isNil "usmcp3")then{if(!isPlayer usmcp3)then{"";}else{(name usmcp3);};}else{"";};
_player4 = if(!isNil "usmcp4")then{if(!isPlayer usmcp4)then{"";}else{(name usmcp4);};}else{"";};
_player5 = if(!isNil "usmcp5")then{if(!isPlayer usmcp5)then{"";}else{(name usmcp5);};}else{"";};
_player6 = if(!isNil "usmcp6")then{if(!isPlayer usmcp6)then{"";}else{(name usmcp6);};}else{"";};
_player7 = if(!isNil "usmcp7")then{if(!isPlayer usmcp7)then{"";}else{(name usmcp7);};}else{"";};
_player8 = if(!isNil "usmcp8")then{if(!isPlayer usmcp8)then{"";}else{(name usmcp8);};}else{"";};
_player9 = if(!isNil "usmcp9")then{if(!isPlayer usmcp9)then{"";}else{(name usmcp9);};}else{"";};
_player10 = if(!isNil "usmcp10")then{if(!isPlayer usmcp10)then{"";}else{(name usmcp10);};}else{"";};
_player11 = if(!isNil "usmcp11")then{if(!isPlayer usmcp11)then{"";}else{(name usmcp11);};}else{"";};
_player12 = if(!isNil "usmcp12")then{if(!isPlayer usmcp12)then{"";}else{(name usmcp12);};}else{"";};
_player13 = if(!isNil "usmcp13")then{if(!isPlayer usmcp13)then{"";}else{(name usmcp13);};}else{"";};
_playermed = if(!isNil "usmcmed")then{if(!isPlayer usmcmed)then{"";}else{(name usmcmed);};}else{"";};


g_playerlist = [["Charlie USMC", [["Charlie Squad Leader", [_player1, "Squad Leader"]], ["Fire Team 1", [_player2, "Fire Team Leader"], [_player3, "Rifleman"], [_player4, "Automatic Rifleman"], [_player5, "Assistant Automatic Rifleman"]], ["Fire Team 2", [_player6, "Fire Team Leader"], [_player7, "Rifleman"], [_player8, "Automatic Rifleman"], [_player9, "Assistant Automatic Rifleman"]], ["Fire Team 3", [_player10, "Fire Team Leader"], [_player11, "Rifleman"], [_player12, "Machine Gunner"], [_player13, "Assistant Machine Gunner"], [_playermed, "Medic"]]]]					
				];

_bigheadline = "<t color='#CCCC00' size='1.5' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_headline = "<t color='#CCCC00' size='1.2' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_smallheadline = "<t color='#99CCFF' size='1.1' shadow='1' shadowColor='#000000' align='left'>%1</t><br />";
_itemEmpty = "<t color='#99FFFF' size='1' shadow='1' shadowColor='#000000' align='left'>  Offline</t><br />";
_item = "<t color='#33CC00' size='1' shadow='1' shadowColor='#000000' align='left'>  %1</t><br />";
_text = "";


{
	//systemChat format["debug:%1", _x];
	_text = "";
	_text = _text + format[_bigheadline, _x select 0];
	{
		//systemChat format["debug:%1", _x];
		_text = _text + format[_headline, _x select 0];
		for "_i" from 1 to ((count _x) -1) do {
			_temp2 = _x select _i;
			_text = _text + format [_smallheadline, _temp2 select 1];
			if (_temp2 select 0 == "") then {
				_text = _text + _itemEmpty;
			} else {
				_text = _text + format [_item, _temp2 select 0];
			};
		};
	} forEach (_x select 1);
	hint parseText _text;
	sleep 7;
} forEach g_playerList;

