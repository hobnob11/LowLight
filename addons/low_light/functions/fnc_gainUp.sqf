/*
 * Author: Hobnob
 *
 * Raise LowLight Gain (number actually goes down because higher aperture = lower gain)
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *  call FUNC(gainUp);
 *
 * Public: No
 */

#include "script_component.hpp"

_gain = player getVariable[QGVAR(gain), GVAR(DefaultGain)];
_newGain = ( (_gain - (_gain * 0.2)) max 0.02);
player setVariable[QGVAR(gain), _newGain, false]; 
hint format ["LowLight at %1", _newGain];

_hasLowLight = player getVariable[QGVAR(HasLowLight), false];
_lowLight = player getVariable[QGVAR(LowLight), false];

if ( _hasLowLight && _lowLight ) then
{
	setApertureNew [_newGain, _newGain, _newGain, 1];
}