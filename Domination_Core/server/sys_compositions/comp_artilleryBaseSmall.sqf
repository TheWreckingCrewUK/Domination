/*Recommended Location Finding: 

_position = getMarkerPos "middleMarker"; 
_radius = 2500;  
_options = "-trees -forest*10 +meadow*10 -houses*10 -hills*10";  
_result = selectBestPlaces [_position, _radius, _options, (_radius / 10) min 500, 100];  
_pos = _result select 0 select 0; player setPos (_pos);
*/

private ["_objs"];
_objs = [
	["Land_HBarrier_Big_F",[4.36133,0.230469,0],90,1,0,{}],
	["Land_HBarrier_Big_F",[-0.556641,-5.1875,0.000324249],0,1,0,{}],
	["Land_HBarrier_Big_F",[-0.865234,5.16797,0],0,1,0,{}]
];
_objs;