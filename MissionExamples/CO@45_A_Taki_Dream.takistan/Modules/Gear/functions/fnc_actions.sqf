/*
	Author: GuzzenVonLidl
	Sets the addactions for gearbox

	Usage:
	[player, "sl"] call GW_Gear_Fnc_Actions;

	Arguments:
	0: Unit <OBJECT>

	Return Value: NO

	Public: No
*/
#include "..\scriptComponent.hpp"
#define	bullShit nil,1,false,false,"",""

params [["_unit", objNull, [objNull]]];

_unit addAction ["<t color='#ffff00'>Attachment Menu</t>", {["player", [], -100, ["_this call GW_Gear_Fnc_replaceAttachments","main"]] call cba_fnc_fleximenu_openMenuByDef},bullShit,7];
_unit addAction ["Platoon > Actual","[player,'pl'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["Platoon > Forward Air Controller","[player,'fac'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["<t color='#00ff00'>Squad > Squad Leader</t>","[player,'sl'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["Squad Medic","[player,'sm'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["<t color='#00ff00'>Squad > Fire Team Leader</t>","[player,'ftl'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["<t color='#FF0000'>Squad > Rifleman</t>","[player,'rat'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["<t color='#FF0000'>Squad > Grenadier</t>","[player,'g'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["<t color='#4785f4'>Squad > Asst. Gunner</t>","[player,'ag'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["<t color='#4785f4'>Squad > Automatic Rifleman</t>","[player,'ar'] call GW_Gear_Fnc_Handler;",bullShit,5];

_unit addAction ["Echo > Pilot","[player,'p'] call GW_Gear_Fnc_Handler;",bullShit,5];
_unit addAction ["Echo > Crew","[player,'crew'] call GW_Gear_Fnc_Handler;",bullShit,5];

if !(isMultiplayer) then {
	_unit addAction ["<t color='#4785f4'>Squad > Asst. Heavy AT</t>","[player,'ahat'] call GW_Gear_Fnc_Handler;",bullShit,5];
	_unit addAction ["<t color='#4785f4'>Squad > Heavy AT</t>","[player,'hat'] call GW_Gear_Fnc_Handler;",bullShit,5];
	_unit addAction ["<t color='#4785f4'>Squad > Asst. Medium Machine Gunner</t>","[player,'ammg'] call GW_Gear_Fnc_Handler;",bullShit,5];
	_unit addAction ["<t color='#4785f4'>Squad > Medium Machine Gunner</t>","[player,'mmg'] call GW_Gear_Fnc_Handler;",bullShit,5];
};
