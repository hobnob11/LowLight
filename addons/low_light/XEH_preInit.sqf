#include "script_component.hpp"
ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

#include "\a3\ui_f\hpp\defineDIKCodes.inc"
#define DIK_MOUSEUP         0xF8
#define DIK_MOUSEDOWN       0xF9

["loadout", FUNC(gearChanged)] call CBA_fnc_addPlayerEventHandler;

[       ["Hob", ADDON_NAME]
,       "LowLightToggle"
,       [       "Toggle Low Light"
        ,       "Toggles Low Light on/off"
        ]
,       { [player] call FUNC(toggle); }
,       ""
,       [DIK_N,[false, true, false]]
,       false
] call cba_fnc_addKeybind;

[       ["Hob", ADDON_NAME]
,       QGVAR(GainUp)
,       [       "Increase Gain"
        ,       "Increases Gain / Brightness."
        ]
,       { [player] call FUNC(gainUp); }
,       ""
,       [DIK_MOUSEUP,[true, false, false]]
,       false
] call cba_fnc_addKeybind;

[       ["Hob", ADDON_NAME]
,       QGVAR(GainDown)
,       [       "Decrease Gain"
        ,       "Decreases Gain / Brightness."
        ]
,       { [player] call FUNC(gainDown); }
,       ""
,       [DIK_MOUSEDOWN,[true, false, false]]
,       false
] call cba_fnc_addKeybind;

[       QGVAR(DefaultGain)
,       "SLIDER"
,       ["Default Gain", "The Default Gain / Brightness"]
,       ["Hob", ADDON_NAME]
,       [0.02,1,500, 2]
,       2
//,       { [player] call FUNC(switchOn); } this needs to check if its off
] call cba_fnc_addSetting;

ADDON = true;

