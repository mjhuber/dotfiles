local wezterm = require 'wezterm';
-- Reload the configuration every ten minutes
wezterm.time.call_after(600, function()
	wezterm.reload_configuration()
end)
-- This will hold the configuration.
local config = wezterm.config_builder()
config.font_size = 14.0
config.keys = {
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
    -- CMD + P activate command palette
    {key="p", mods="CMD",action = wezterm.action.ActivateCommandPalette,},
    -- CMD + Shift + C activate copy mode
    {key="c", mods="CMD|SHIFT", action=wezterm.action.ActivateCopyMode,},
}
return config
