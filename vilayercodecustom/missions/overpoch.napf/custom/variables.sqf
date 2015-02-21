 //Player self-action handles 
 dayz_resetSelfActions = { s_player_plotManagement = -1; }; call dayz_resetSelfActions;
 
 /**DoorManagement Config**/
DoorAdminList = ["-2","-3"]; // List of Player Id's of admins that can manage all doors
AllowManualCode = true;// 2 reason| 1: Allows breaking codes (if 2nd config = false and code = 3 digits) | 2: Friends can access access not owned doors until owner gets on.
HarderPenalty = true;// Cen's Penalty: Flashes screen white. And kicks player to lobby if failed more then (random number between 4 and 14) times.
// AllowUncrackableCode = false; // in next release: if set to true, player can change code to more then 4 digits, The manualCode will always fail when he does. THIS is for AntiCodeCrack servers that allow Manual Code for people that like that system.
// in next release. AllowManualCode will allow players to change the code in the DoorManagement Menu.
/**DoorManagement Config END**/
DZE_DoorsLocked = ["Land_DZE_GarageWoodDoorLocked","Land_DZE_LargeWoodDoorLocked","Land_DZE_WoodDoorLocked","CinderWallDoorLocked_DZ","CinderWallDoorSmallLocked_DZ"];