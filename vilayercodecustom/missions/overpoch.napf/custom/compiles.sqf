
fnc_usec_selfActions = compile preprocessFileLineNumbers "custom\fn_selfActions.sqf";            // fnc_usec_selfActions - adds custom actions to dayz code
player_build =				compile preprocessFileLineNumbers "custom\player_build.sqf";

/*Plot*/
PlotGetFriends      = compile preprocessFileLineNumbers "plotManagement\plotGetFriends.sqf";
PlotNearbyHumans    = compile preprocessFileLineNumbers "plotManagement\plotNearbyHumans.sqf";
PlotAddFriend       = compile preprocessFileLineNumbers "plotManagement\plotAddFriend.sqf";
PlotRemoveFriend    = compile preprocessFileLineNumbers "plotManagement\plotRemoveFriend.sqf";
/*Plot End*/

/*DoorManagement Zupa*/
DoorGetFriends 		= compile preprocessFileLineNumbers "doorManagement\doorGetFriends.sqf";
DoorNearbyHumans 	= compile preprocessFileLineNumbers "doorManagement\doorNearbyHumans.sqf";
DoorAddFriend 		= compile preprocessFileLineNumbers "doorManagement\doorAddFriend.sqf";
DoorRemoveFriend 	= compile preprocessFileLineNumbers "doorManagement\doorRemoveFriend.sqf";

player_unlockDoor       = compile preprocessFileLineNumbers "doorManagement\player_unlockDoor.sqf";
player_unlockDoorCode = compile preprocessFileLineNumbers "doorManagement\player_unlockDoorCode.sqf";
player_manageDoor       = compile preprocessFileLineNumbers "doorManagement\initDoorManagement.sqf";
player_enterCode       = compile preprocessFileLineNumbers "doorManagement\player_enterCode.sqf";
player_changeCombo = compile preprocessFileLineNumbers "doorManagement\player_changeCombo.sqf"; 
/*DoorManagement End*/