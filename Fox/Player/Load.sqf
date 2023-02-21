// Get saved data and apply it to player actor 
// 
_loc = profileNameSpace getVariable "PlayerLocation";
_dir = profileNameSpace getVariable "PlayerDirection";
_gear = profileNameSpace getVariable "PlayerLoadout";

player setPos _loc;
player setDir _dir;
player setUnitLoadout _gear;

if (LemonDebug = true) then {
	systemChat format ["LemonDebug:: Player (%1) Data restored!", name player];
};

sleep 3;

execVM "Fox\Player\Save.sqf";