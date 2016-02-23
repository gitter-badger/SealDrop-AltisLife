/*
	File: fn_insertRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something with inserting... Don't have time for
	descriptions... Need to write it...
*/
private["_uid","_name","_side","_money","_bank","_licenses","_handler","_thread","_queryResult","_query","_alias"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_money = [_this,2,0,[""]] call BIS_fnc_param;
_bank = [_this,3,2500,[""]] call BIS_fnc_param;
_returnToSender = [_this,4,ObjNull,[ObjNull]] call BIS_fnc_param;

if((_uid isEqualTo "") OR (_name isEqualTo "")) exitWith {};
if(isNull _returnToSender) exitWith {};

_query = format["SELECT playerid, name FROM players WHERE playerid='%1'",_uid];

_queryResult = [_query,2] call DB_fnc_asyncCall;

if(typeName _queryResult isEqualTo "STRING") exitWith {[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP};
if(count _queryResult != 0) exitWith {[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP};

_name = [_name] call DB_fnc_mresString;
_alias = [[_name]] call DB_fnc_mresArray;
_money = [_money] call DB_fnc_numberSafe;
_bank = [_bank] call DB_fnc_numberSafe;

_query = format["INSERT INTO players (playerid, name, cash, bankacc, aliases, cop_licenses, med_licenses, civ_licenses, civ_gear, cop_gear, med_gear) VALUES('%1', '%2', '%3', '%4', '%5','""[]""','""[]""','""[]""','""[]""','""[]""','""[]""')",
	_uid,
	_name,
	_money,
	_bank,
	_alias
];

[_query,1] call DB_fnc_asyncCall;
[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;