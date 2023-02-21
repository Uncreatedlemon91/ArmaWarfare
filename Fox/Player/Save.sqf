// Gathers player information and saves it to the player profile 
//
while {alive player} do {
	_loc = getPos player;
	_dir = getDir player;
	_gear = getUnitLoadout player;

	profileNameSpace setVariable ["PlayerLocation", _loc];
	profileNameSpace setVariable ["PlayerDirection", _dir];
	profileNameSpace setVariable ["PlayerLoadout", _gear];
	saveProfileNameSpace;

	if (LemonDebug == true) then {
		systemChat format ["LemonDebug:: Player (%1) Data Saved!", name	player];
	};

	sleep 1;
};
