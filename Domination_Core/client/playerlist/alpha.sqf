//made by hartzie edited by FakeMatty
_player1 = if(!isNil "bafp1")then{if(!isPlayer bafp1)then{"";}else{(name bafp1);};}else{"";};
_player2 = if(!isNil "bafp2")then{if(!isPlayer bafp2)then{"";}else{(name bafp2);};}else{"";};
_player3 = if(!isNil "bafp3")then{if(!isPlayer bafp3)then{"";}else{(name bafp3);};}else{"";};
_player4 = if(!isNil "bafp4")then{if(!isPlayer bafp4)then{"";}else{(name bafp4);};}else{"";};
_player5 = if(!isNil "bafp5")then{if(!isPlayer bafp5)then{"";}else{(name bafp5);};}else{"";};
_player6 = if(!isNil "bafp6")then{if(!isPlayer bafp6)then{"";}else{(name bafp6);};}else{"";};
_player7 = if(!isNil "bafp7")then{if(!isPlayer bafp7)then{"";}else{(name bafp7);};}else{"";};
_player8 = if(!isNil "bafp8")then{if(!isPlayer bafp8)then{"";}else{(name bafp8);};}else{"";};
_player9 = if(!isNil "bafmed")then{if(!isPlayer bafmed)then{"";}else{(name bafmed);};}else{"";};




g_playerlist = [["Alpha British Army", [["Alpha Section Leader", [_player1, "Section Leader"], [_player2, "Rifleman"], [_player3, "Grenadier"], [_player4, "Automatic Rifleman"]], ["Fire Team 2", [_player5, "2IC"], [_player6, "Automatic Rifleman"], [_player7, "Machine Gunner"], [_player8, "Marksman"], [_player9, "Medic"]]]]					
				
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

