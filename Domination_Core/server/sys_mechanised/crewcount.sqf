params ["_player"];

waituntil {!alive _player};


_count = group player getvariable ["armourcount", 0];
group player setvariable ["armourcount", _count - 1, true];