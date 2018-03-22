/*
*    TWC public sevrer
*   Sling loadable ammo crates
*
*  Paddock Change all ammo boxes to have the correct ammo and weapons
*
*
*/

if (( count(allPlayers - entities "HeadlessClient_F"))<3) then {_wheel = "ace_Wheel" createVehicle (getPos AmmoBoxSpawner); } else {


_wheel = "ace_Wheel" createVehicle (getPos AmmoBoxSpawner); 
 createVehicle ["ace_Wheel", position _wheel vectoradd [random 1,random 1, 0.4], [], 0, "can_collide"];  
 createVehicle ["ace_Wheel", position _wheel vectoradd [random 1,random 1, 0.8], [], 0, "can_collide"];  
 createVehicle ["ace_Wheel", position _wheel vectoradd [random 1,random 1, 1.2], [], 0, "can_collide"];  
};