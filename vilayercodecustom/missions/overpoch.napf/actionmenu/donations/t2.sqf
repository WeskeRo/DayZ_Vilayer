_crate = "USVehicleBox" createVehicle (position player);
_crate setVariable ["Mission",1,true];

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

_crate addMagazineCargoGlobal ["ItemVault", 3];
_crate addMagazineCargoGlobal ["ItemEtool", 1];
_crate addMagazineCargoGlobal ["ItemToolbox", 1];
_crate addMagazineCargoGlobal ["ItemHatchet", 1];
_crate addMagazineCargoGlobal ["ItemKnife", 1];
_crate addMagazineCargoGlobal ["ItemCrowbar", 1];
_crate addMagazineCargoGlobal ["workbench_kit", 1];
_crate addMagazineCargoGlobal ["ItemComboLock", 1];

_crate addMagazineCargoGlobal ["ItemWoodFloor", 9];
_crate addMagazineCargoGlobal ["ItemWoodWallWithDoorLg", 1];
_crate addMagazineCargoGlobal ["ItemWoodWallLg", 10];
_crate addMagazineCargoGlobal ["ItemWoodWallWithDoorLg", 1];
_crate addMagazineCargoGlobal ["ItemWoodWallGarageDoorLocked", 1];
_crate addMagazineCargoGlobal ["forest_large_net_kit", 2];


_crate attachto [player, [0,3,1.7]];
sleep 3;
detach _crate;
player reveal _crate;