pathtoscripts = "custom\actionmenu\tools\";
pathtocolors = "custom\actionmenu\sky\";
pathtofog = "custom\actionmenu\fog\";
pathtodonations = "custom\actionmenu\donations\";
pathtobuilding = "custom\actionmenu\building\";
pathtofun = "custom\actionmenu\fun\";

EXECscript1 = 'player execVM "'+pathtoscripts+'%1"';
EXECscript2 = 'player execVM "'+pathtocolors+'%1"';
EXECscript4 = 'player execVM "'+pathtofog+'%1"';
EXECscript5 = 'player execVM "'+pathtodonations+'%1"';
EXECscript6 = 'player execVM "'+pathtobuilding+'%1"';
EXECscript7 = 'player execVM "'+pathtofun+'%1"';

if ((getPlayerUID player) in ["76561198009425402","76561198121993182","76561198018007006","76561198089990137"]) then {
Actionmenu =
[
	["",true],
		["Action Menu", [2], "#USER:ActionMenua", -5, [["expression", ""]], "1", "1"],
		["Deploy Menu", [3], "#USER:DeployMenu", -5, [["expression", ""]], "1", "1"],
		["View Distance (Better FPS)", [5], "#USER:FogMenu", -5, [["expression", ""]], "1", "1"],
		["Donations", [6], "#USER:DonatorMenu", -5, [["expression", ""]], "1", "1"],
	    ["FunMenu", [7], "#USER:FunMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];} else {
ActionMenu =
[
		["",true],
		["Action Menu", [2], "#USER:ActionMenua", -5, [["expression", ""]], "1", "1"],
		["Deploy Menu", [3], "#USER:DeployMenu", -5, [["expression", ""]], "1", "1"],
		["View Distance (Fog)", [5], "#USER:FogMenu", -5, [["expression", ""]], "1", "1"],
		["Donations", [6], "#USER:DonatorMenu", -5, [["expression", ""]], "1", "1"],
	    ["FunMenu", [7], "#USER:FunMenu", -5, [["expression", ""]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
};

ActionMenua =
[
		["",true],
		["Flip Vehicle", [2],  "", -5, [["expression", format[EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["Commit Suicide", [3],  "", -5, [["expression", format[EXECscript1,"suicide.sqf"]]], "1", "1"],
		["Hints & Tips - Read Me!", [8],  "", -5, [["expression", format[EXECscript1,"help.sqf"]]], "1", "1"],			
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

DeployMenu =
[
		["",true],
		["Deploy Bike", [2],  "", -5, [["expression", format[EXECscript1,"bike.sqf"]]], "1", "1"],
		["Deploy Gyrocopter", [4],  "", -5, [["expression", format[EXECscript1,"gyro.sqf"]]], "1", "1"],
		["Pack Created Vehicle", [5],  "", -5, [["expression", format[EXECscript1,"pack.sqf"]]], "1", "1"],		
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

FogMenu =
[
["",true],
        ["250M", [2],  "", -5, [["expression", format[EXECscript4 ,"250.sqf"]]], "1", "1"],
        ["500M", [3],  "", -5, [["expression", format[EXECscript4 ,"500.sqf"]]], "1", "1"],
        ["750M", [4],  "", -5, [["expression", format[EXECscript4 ,"750.sqf"]]], "1", "1"],
        ["1000M", [5],  "", -5, [["expression", format[EXECscript4 ,"1000.sqf"]]], "1", "1"],
        ["1250M", [6],  "", -5, [["expression", format[EXECscript4 ,"1250.sqf"]]], "1", "1"],
        ["1500M", [7],  "", -5, [["expression", format[EXECscript4 ,"1500.sqf"]]], "1", "1"],
        ["1750M", [8],  "", -5, [["expression", format[EXECscript4 ,"1750.sqf"]]], "1", "1"],
        ["2000M", [9],  "", -5, [["expression", format[EXECscript4 ,"2000.sqf"]]], "1", "1"],
        ["2500M", [10],  "", -5, [["expression", format[EXECscript4 ,"2500.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Next page", [12], "#USER:FogMenu2", -5, [["expression", ""]], "1", "1"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FogMenu2 =
[
["",true],
        ["3000M", [2],  "", -5, [["expression", format[EXECscript4 ,"3000.sqf"]]], "1", "1"],
        ["4000M", [3],  "", -5, [["expression", format[EXECscript4 ,"4000.sqf"]]], "1", "1"],
        ["5000M", [4],  "", -5, [["expression", format[EXECscript4 ,"5000.sqf"]]], "1", "1"],
        ["10000M", [5],  "", -5, [["expression", format[EXECscript4 ,"10000.sqf"]]], "1", "1"],
        ["20000M (Super Computer)", [6],  "", -5, [["expression", format[EXECscript4 ,"20000.sqf"]]], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
            ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
DonatorMenu =
[
		["",true],
        ["Supplies", [2],  "", -5, [["expression", format[EXECscript5 ,"t1.sqf"]]], "1", "1"],
		["Website Box", [3],  "", -5, [["expression", format[EXECscript5 ,"t2.sqf"]]], "1", "1"],
        ["Show Position", [4],  "", -5, [["expression", format[EXECscript5 ,"showpos.sqf"]]], "1", "1"],
        ["", [-1], "", -5, [["expression", ""]], "1", "0"],
        ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FunMenu =
[
		["",true],
		["Dance 1", [2], "", -5, [["expression", format[EXECscript7, "dance3.sqf"]]], "1", "1"],
		["Dance 2", [3],  "", -5, [["expression", format[EXECscript7,"dance2.sqf"]]], "1", "1"],
		//["Fartek Dance", [4],  "", -5, [["expression", format[EXECscript7,"dance2.sqf"]]], "1", "1"],
		["Dance 3", [5],  "", -5, [["expression", format[EXECscript7,"dance4.sqf"]]], "1", "1"],
		["Boxing", [6],  "", -5, [["expression", format[EXECscript7,"boxing.sqf"]]], "1", "1"],
		["Handstand", [7],  "", -5, [["expression", format[EXECscript7,"handstand.sqf"]]], "1", "1"],
		["Laydown", [8],  "", -5, [["expression", format[EXECscript7,"Laydown.sqf"]]], "1", "1"],
		["Play Dead", [9], "", -5, [["expression", format[EXECscript7, "deathflop.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];



showCommandingMenu "#USER:ActionMenu";