
/*
	FUNCTION COMPILES
*/

MDC_fnc_numberToString = {
	_number = _this;
	_str = "";
	if (_number == 0) then {
		_str = "0";
	} else {
		_negative = false;
		if (_number < 0) then {
			_number = abs _number;
			_negative = true;
		};
		if (_number % 1 == 0) then {
			while { _number > 0 } do {
				_digit = floor (_number % 10);
				_str = (str _digit) + _str;
				_number = floor (_number / 10);
			};
		} else {
			_decimals = _number % 1;
			_decimals = _decimals * 1000000;
			_number = floor _number;
			_str = _number call MDC_fnc_numberToString;
			_str = _str + "." + str _decimals;
		};
		if (_negative) then { _str = "-" + _str; };
	};
	_str;
};

//Player only

BIS_fnc_numberDigits 	= compile preprocessFileLineNumbers "custom\numberDigits.sqf";
BIS_fnc_numberText 	= compile preprocessFileLineNumbers "custom\numberText.sqf"; 

SC_fnc_removeCoins=
    {
                private ["_player","_amount","_wealth","_newwealth", "_result"];
                _player = _this select 0;
                _amount = _this select 1;
                _result = false;
                _wealth = _player getVariable["cashMoney",0];  
                if(_amount > 0)then{
                if (_wealth < _amount) then {
                    _result = false;
                } else {                         
                _newwealth = _wealth - _amount;
                _player setVariable["cashMoney",_newwealth, true];
                _player setVariable ["moneychanged",1,true];    
                _result = true;
                PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
                publicVariableServer "PVDZE_plr_Save";            
                };
                }else{
                _result = true;
                };
                _result
    };

	
SC_fnc_addCoins = 
{
	private ["_player","_amount","_wealth","_newwealth", "_result"];			
			_player =  _this select  0;
			_amount =  _this select  1;
			_result = false;	
			_wealth = _player getVariable["cashMoney",0];
			_player setVariable["cashMoney",_wealth + _amount, true];
			PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
			publicVariableServer "PVDZE_plr_Save";
			_player setVariable ["moneychanged",1,true];					
			_newwealth = _player getVariable["cashMoney",0];		
			if (_newwealth >= _wealth) then { _result = true; };			
			_result
};	

fnc_usec_selfActions = compile preprocessFileLineNumbers "custom\fn_selfActions.sqf";            // fnc_usec_selfActions - adds custom actions to dayz code
player_build =				compile preprocessFileLineNumbers "custom\building\player_build.sqf";
player_wearClothes =		compile preprocessFileLineNumbers "custom\player_wearClothes.sqf";

/*PlotManagement Zupa*/
	PlotGetFriends      = compile preprocessFileLineNumbers "plotManagement\plotGetFriends.sqf";
	PlotNearbyHumans    = compile preprocessFileLineNumbers "plotManagement\plotNearbyHumans.sqf";
	PlotAddFriend       = compile preprocessFileLineNumbers "plotManagement\plotAddFriend.sqf";
	PlotRemoveFriend    = compile preprocessFileLineNumbers "plotManagement\plotRemoveFriend.sqf";
/*PlotManagement Zupa End*/

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

/*Custom GUI*/
	player_updateGui =			compile preprocessFileLineNumbers "custom\player_updateGui.sqf";
	player_selectSlot =			compile preprocessFileLineNumbers "custom\ui_selectSlot.sqf";
/*Custom GUI END*/	
	
/*Single Coin Currency*/	
	call compile preprocessFileLineNumbers "gold\player_traderMenu.sqf";
	initialized = true;
/*Single Coin Currency END*/
