/*
 * Author: Hobnob
 *
 * Lower LowLight Gain (number actually goes up because higher aperture = lower gain)
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *  call FUNC(gainDown);
 *
 * Public: No
 */

#include "script_component.hpp"

_gain = player getVariable[QGVAR(gain), GVAR(DefaultGain)];
_newGain = ( (_gain + (_gain * 0.2)) min 500);
player setVariable[QGVAR(gain), _newGain, true];
hint format ["LowLight at %1", _newGain];

_hasLowLight = player getVariable[QGVAR(HasLowLight), false];
_lowLight = player getVariable[QGVAR(LowLight), false];

if ( _hasLowLight && _lowLight ) then
{
	setApertureNew [_newGain, _newGain, _newGain, 1];
}