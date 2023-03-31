//made by hartzie edited by FakeMatty
_player1 = if(!isNil "cdfp1")then{if(!isPlayer cdfp1)then{"";}else{(name cdfp1);};}else{"";};
_player2 = if(!isNil "cdfp2")then{if(!isPlayer cdfp2)then{"";}else{(name cdfp2);};}else{"";};
_player3 = if(!isNil "cdfp3")then{if(!isPlayer cdfp3)then{"";}else{(name cdfp3);};}else{"";};
_player4 = if(!isNil "cdfp4")then{if(!isPlayer cdfp4)then{"";}else{(name cdfp4);};}else{"";};
_player5 = if(!isNil "cdfp5")then{if(!isPlayer cdfp5)then{"";}else{(name cdfp5);};}else{"";};
_player6 = if(!isNil "cdfp6")then{if(!isPlayer cdfp6)then{"";}else{(name cdfp6);};}else{"";};
_player7 = if(!isNil "cdfp7")then{if(!isPlayer cdfp7)then{"";}else{(name cdfp7);};}else{"";};
_player8 = if(!isNil "cdfp8")then{if(!isPlayer cdfp8)then{"";}else{(name cdfp8);};}else{"";};
_player9 = if(!isNil "cdfp9")then{if(!isPlayer cdfp9)then{"";}else{(name cdfp9);};}else{"";};
_playermed = if(!isNil "cdfmed")then{if(!isPlayer cdfmed)then{"";}else{(name cdfmed);};}else{"";};



g_playerlist = [ ["Delta CDF",      [["Delta Squad Leader", [_player1, "Squad Leader"]], ["Fire Team 1", [_player2, "Fire Team Leader"], [_player3, "Rifleman"], [_player4, "Rifleman"], [_player5, "Grenadier"],[_player6, "Assistant Grenadier"]], ["Fire Team 2", [_player7, "Fire Team Leader"], [_player8, "Machine Gunner"], [_player9, "Assistant Machine Gunner"], [_playermed, "Medic"]]]]				
				
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

