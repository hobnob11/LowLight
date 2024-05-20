/*
 * Author: Hobnob
 *
 * Switch LowLight Off
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 *  call FUNC(switchOff);
 *
 * Public: No
 */

#include "script_component.hpp"

player setVariable[QGVAR(LowLight), false];
setAperture -1;