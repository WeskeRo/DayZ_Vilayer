private ["_item","_onLadder","_hasclothesitem","_config","_text","_myModel","_itemNew","_currentSex","_newSex","_model","_playerNear"];

zupa_cid =player getVariable ["CharacterID","0"];
_bubank = player getVariable ["bank", 0];

if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_83") , "PLAIN DOWN"] };
DZE_ActionInProgress = true;

_item = _this;
call gear_ui_init;

_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_hasclothesitem = _this in magazines player;
_config = configFile >> "CfgMagazines";
_text = getText (_config >> _item >> "displayName");

if (!_hasclothesitem) exitWith { DZE_ActionInProgress = false; cutText [format[(localize "str_player_31"),_text,"wear"] , "PLAIN DOWN"]};

if (vehicle player != player) exitWith { DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_85"), "PLAIN DOWN"]};

//if (!isNull (unitBackpack player)) exitWith { DZE_ActionInProgress = false; cutText [(localize "STR_EPOCH_ACTIONS_9"), "PLAIN DOWN"] };

if ("CSGAS" in (magazines player)) exitWith { DZE_ActionInProgress = false; cutText [(localize "STR_EPOCH_ACTIONS_10"), "PLAIN DOWN"] };

_myModel = (typeOf player);
_itemNew = "Skin_" + _myModel;

//diag_log ("Debug Clothes: model In: " + str(_itemNew) + " Out: " + str(_item));

if ( (isClass(_config >> _itemNew)) ) then {
	if ( (isClass(_config >> _item)) ) then {
		// Current sex of player skin
		
		_currentSex = getText (configFile >> "CfgSurvival" >> "Skins" >> _itemNew >> "sex");
		// Sex of new skin
		_newSex = getText (configFile >> "CfgSurvival" >> "Skins" >> _item >> "sex");
		//diag_log ("Debug Clothes: sex In: " + str(_currentSex) + " Out: " + str(_newSex));

		if(_currentSex == _newSex) then {
			// Get model name from config
			_model = getText (configFile >> "CfgSurvival" >> "Skins" >> _item >> "playerModel");
			if (_model != _myModel) then {
				if(([player,_item] call BIS_fnc_invRemove) == 1) then {
					player addMagazine _itemNew;
					player setVariable["bank",_bubank,true];
					player setVariable["CharacterID",zupa_cid,true];
					[dayz_playerUID,dayz_characterID,_model] call player_humanityMorph;
					player setVariable["bank",_bubank,true];
					player setVariable["CharacterID",zupa_cid,true];
				};
			};
			player setVariable["bank",_bubank,true];
			player setVariable["CharacterID",zupa_cid,true];

		} else {
			cutText [(localize "str_epoch_player_86"), "PLAIN DOWN"];
		};
			player setVariable["bank",_bubank,true];
			player setVariable["CharacterID",zupa_cid,true];
	};
		player setVariable["bank",_bubank,true];
			player setVariable["CharacterID",zupa_cid,true];
};
player setVariable["bank",_bubank,true];
player setVariable["CharacterID",zupa_cid,true];
DZE_ActionInProgress = false;
player setVariable["bank",_bubank,true];
player setVariable["CharacterID",zupa_cid,true];
sleep 2;
player setVariable["CharacterID",zupa_cid,true];
player setVariable["bank",_bubank,true];
sleep 2;
player setVariable["CharacterID",zupa_cid,true];
player setVariable["bank",_bubank,true];