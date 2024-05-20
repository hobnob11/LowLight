/*
 * Author: Hobnob
 *
 * Runs on Gear Change, will add LowLight vars
 *
 * Arguments:
 * _unit
 * _loadout
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["loadout", FUNC(gearChanged)] call CBA_fnc_addPlayerEventHandler;
 *
 * Public: No
 */

#include "script_component.hpp"

params["_unit", "_loadout"];

_nvg = _loadout select 9 select 5;
_hasLowLight = (configFile >> "cfgWeapons" >> _nvg >> "Hob_Low_Light") call BIS_fnc_getCfgDataBool;
player setVariable[QGVAR(HasLowLight), _hasLowLight];

if (!_hasLowLight) then
{
	call FUNC(SwitchOff);
}