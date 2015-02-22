
fnc_usec_selfActions = compile preprocessFileLineNumbers "custom\fn_selfActions.sqf";            // fnc_usec_selfActions - adds custom actions to dayz code
player_build =				compile preprocessFileLineNumbers "custom\building\player_build.sqf";

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

/*Snap Build Pro*/
if (!isDedicated) then {
	//player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
	snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
	dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
	
	fnc_usec_selfActions =			compile preprocessFileLineNumbers "custom\fn_selfActions.sqf";		//Checks which actions for self
	player_unlockVault =			compile preprocessFileLineNumbers "custom\BuildVectors\compile\player_unlockVault.sqf";
	player_lockVault =				compile preprocessFileLineNumbers "custom\BuildVectors\compile\player_lockVault.sqf";
	fnc_SetPitchBankYaw =       	compile preprocessFileLineNumbers "custom\BuildVectors\fnc_SetPitchBankYaw.sqf";
	DZE_build_vector_file =         "custom\BuildVectors\build_vectors.sqf";
	build_vectors =                 compile preprocessFileLineNumbers DZE_build_vector_file;
};
/*Snap Build Pro END*/

	player_updateGui =			compile preprocessFileLineNumbers "custom\player_updateGui.sqf";
	player_selectSlot =			compile preprocessFileLineNumbers "custom\ui_selectSlot.sqf";