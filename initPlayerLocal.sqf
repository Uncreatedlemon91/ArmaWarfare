// Start player persistence 
// - Saves to player profile to reduce server usage and clutter 
// - Saves location, loadout, direction
_data = profileNameSpace getVariable "Player_Data";
if (isNil "_data") then {
	execVM "Fox\Player\New.sqf";
};

sleep 3;
execVM "Fox\Player\Load.sqf";