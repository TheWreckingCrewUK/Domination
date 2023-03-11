//Allows me to edit medical Gear in one place

//Checks for KAT and adds different equipment
if(configNull == (configFile >> "kat_pharma"))then{
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
}else{
	player addItemToBackpack "kat_X_AED";
	player addItemToBackpack "kat_accuvac";
	player addItemToBackpack "kat_stethoscope";
	player addItemToBackpack "ACE_surgicalKit";
	for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "kat_IV_16";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_adenosine";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_amiodarone";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_atropine";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_IO_FAST";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_etomidate";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_fentanyl";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_flumazenil";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_larynx";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_lidocaine";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_lorazepam";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_naloxone";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_nitroglycerin";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_norepinephrine";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_phenylephrine";};
	for "_i" from 1 to 3 do {player addItemToBackpack "kat_Pulseoximeter";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
};