/*
by Hobbs
creates civs in a natural manner in places that cannot be seen by players, then have them move around naturally before deleting themselves when not seen by players and outside of a sane radius to avoid performance issues


listed as twc_fnc_perspb_trigger in server func init so that it boots with PB in domination mode
*/

params ["_table"];

_pos = getpos _table;

//blufluff
_trg = createTrigger ["EmptyDetector", _pos];
_trg setTriggerArea [500, 500, 0, false];
_trg setTriggerActivation ["west", "PRESENT", true];
_trg setTriggerTimeout [10,10,10, false];

_trg setTriggerStatements ["this","if ((count (nearestObjects [getpos thistrigger, ['vysilacka'], 100])) > 0) then {[getpos thistrigger, true] call twc_fnc_civfluff;}",""];

