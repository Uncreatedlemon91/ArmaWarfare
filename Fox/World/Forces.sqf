// Creates force spawners on the world. Place markers on map and hide them unless debug is enabled. 
// 
_Opforfaction = selectRandom []; // Determine the faction to be opfor
_BluForFaction = selectRandom []; // Determine the faction to be blufor 

_oInf = random 100;
_oMot = random 40;
_oArmor = random 40;
_oArt = random 40;
_oAir = random 10;
_oData = [_oInf, _oMot, _oArmor, _oArt, _oAir];

_bInf = random 100;
_bMot = random 40;
_bArmor = random 40;
_bArt = random 40;
_bAir = random 10;


{
	// Current result is saved in variable _x
	for [0, _x, 1] do {
		_spawnPos = [player, 1, 150, 3, 0, 20, 0] call BIS_fnc_findSafePos;
		_mkr = createMarker [format ["Marker_%1_%2", _x, _spawnPos], _spawnPos];
		_mkr setMarkerType "hd_flag";
		_mkr setMarkerColor "ColorRed";
		_mkr setMarkerAlpha 0.5;
	};
} forEach _oData;