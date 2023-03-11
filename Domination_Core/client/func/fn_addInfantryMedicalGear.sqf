//Allows me to edit medical Gear in one place

//Checks for KAT and adds different equipment
if(configNull == (configFile >> "kat_pharma"))then{
	for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
}else{
	for "_i" from 1 to 1 do {player addItemToUniform "kat_Painkiller";};
};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};