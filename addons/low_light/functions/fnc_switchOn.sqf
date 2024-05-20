/*
 * Author: Hobnob
 *
 * Switch LowLight on to previous value, or default.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *  call FUNC(switchOn);
 *
 * Public: No
 */

#include "script_component.hpp"

_gain = player getVariable[QGVAR(gain), GVAR(DefaultGain)];
setApertureNew [_gain, _gain, _gain, 1];
player setVariable[QGVAR(LowLight), true];

