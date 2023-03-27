//made by hartzie edited by FakeMatty
_player1 = if(!isNil "usp1")then{if(!isPlayer usp1)then{"";}else{(name usp1);};}else{"";};
_player2 = if(!isNil "usp2")then{if(!isPlayer usp2)then{"";}else{(name usp2);};}else{"";};
_player3 = if(!isNil "usp3")then{if(!isPlayer usp3)then{"";}else{(name usp3);};}else{"";};
_player4 = if(!isNil "usp4")then{if(!isPlayer usp4)then{"";}else{(name usp4);};}else{"";};
_player5 = if(!isNil "usp5")then{if(!isPlayer usp5)then{"";}else{(name usp5);};}else{"";};
_player6 = if(!isNil "usp6")then{if(!isPlayer usp6)then{"";}else{(name usp6);};}else{"";};
_player7 = if(!isNil "usp7")then{if(!isPlayer usp7)then{"";}else{(name usp7);};}else{"";};
_player8 = if(!isNil "usp8")then{if(!isPlayer usp8)then{"";}else{(name usp8);};}else{"";};
_player9 = if(!isNil "usp9")then{if(!isPlayer usp9)then{"";}else{(name usp9);};}else{"";};
_playermed = if(!isNil "usmed")then{if(!isPlayer usmed)then{"";}else{(name usmed);};}else{"";};



g_playerlist = [ ["Bravo US Army",      [["Bravo Squad Leader", [_player1, "Squad Leader"]], ["Fire Team 1", [_player2, "Fire Team Leader"], [_player3, "Rifleman"], [_player4, "Grenadier"], [_player5, "Automatic Rifleman"]], ["Fire Team 2", [_player6, "Fire Team Leader"], [_player7, "Rifleman"], [_player8, "Automatic Rifleman"], [_player9, "Marksman"], [_playermed, "Medic"]]]]				
				
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

