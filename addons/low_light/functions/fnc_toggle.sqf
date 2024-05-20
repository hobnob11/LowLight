/*
 * Author: Hobnob
 *
 * Toggle LowLight
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *  call FUNC(toggle);
 *
 * Public: No
 */

#include "script_component.hpp"

_hasLowLight = player getVariable[QGVAR(HasLowLight),false];
_lowLight = player getVariable[QGVAR(LowLight),false];

if ( _hasLowLight && ! _lowLight ) then
{
	call FUNC(switchOn);
} else 
{
	call FUNC(switchOff);
}