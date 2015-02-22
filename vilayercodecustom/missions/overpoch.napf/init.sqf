/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	24;				//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epochconfig

//ns_blowout = true; // true / false
//ns_blowout_dayz = true;// true / false
//ns_blow_delaymod = 0.74; //blowout delay
//ns_blow_itemapsi = "ItemRadio"; //ItemAPSI replacement
//ns_blow_playerdamage = 3000; // damage players without ns_blow_itemapsi can get per blowout
//ns_blow_emp = false; //Namalsk Only

DZE_PlotPole=[50,0];
DZE_SelfTransfuse = true; // default value
DZE_selfTransfuse_Values = [7000, 15, 300]; // default value
DZE_TRADER_SPAWNMODE = false;
DZE_GodModeBase = true;
DZE_BuildingLimit = 450;
DZE_DeathMsgGlobal = true;

DZE_MissionLootTable = true;
spawnShoremode = 0; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
// 
MaxVehicleLimit = 500; // Default = 50
MaxDynamicDebris = 400; // Default = 100
dayz_MapArea = 18000; // Default = 10000

dayz_minpos = -1000; 
dayz_maxpos = 26000;

dayz_paraSpawn = true;

dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100

DZE_BuildOnRoads = true; // Default: False
DZE_noRotate = []; //Objects that cannot be rotated. Ex: DZE_noRotate = ["ItemVault"] (NOTE: The objects magazine classname)
DZE_vectorDegrees = [0.01, 0.1, 1, 5, 15, 45, 90];
DZE_curDegree = 45; //Starting rotation angle. //Prefered any value in array above
DZE_dirWithDegrees = true; //When rotating objects with Q&E, use the custom degrees

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
dayz_fullMoonNights = true;

DZE_ConfigTrader = true;

//Load in compiled functions
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "custom\variables.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
call compile preprocessFileLineNumbers "custom\compiles.sqf";	
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\mission.sqf";

	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	[] execVM "custom\startup\Server_WelcomeCredits.sqf";  //napisy po prawej stronie
	//[] execVM "custom\service_point\service_point.sqf";   //refuel, repair, reammo
	//[] execVM "TradeFromVehicle Version 2.0\setup\init.sqf";

	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Custom Loadouts
	[] ExecVM "custom\loadout\loadout.sqf";
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	
	

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
};

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"


[] execVM "custom\marker\marker.sqf";

execVM "custom\safezone\safezone.sqf";
execVM "custom\ActionMenu\actionmenu_activate.sqf";

//---Single Coin Currency--- and this completely at the bottom
        execVM "gold\init.sqf";