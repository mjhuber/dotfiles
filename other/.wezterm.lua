local wezterm = require 'wezterm';

-- Reload the configuration every ten minutes
wezterm.time.call_after(600, function()
	wezterm.reload_configuration()
end)


-- This will hold the configuration.
local config = wezterm.config_builder()

config.font_size = 14.0
config.color_scheme = 'MaterialDesignColors'
config.window_background_opacity = 1.00

config.colors = {
  background = '#3b3939',

  tab_bar = {
    inactive_tab = {
      bg_color = "#2e2d2d",
      fg_color = '#b0aeae',
    },
    active_tab = {
      bg_color = "#786f6f",
      fg_color = '#ffffff',
    },
  },
}

config.keys = {
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
    -- CMD + P activate command palette
    {key="p", mods="CMD",action = wezterm.action.ActivateCommandPalette,},
    -- CMD + Shift + C activate copy mode
    {key="c", mods="CMD|SHIFT", action=wezterm.action.ActivateCopyMode,},
    -- CMD + D split pane vertically
    {key = 'd',mods = 'CMD',action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },},
    -- CMD + Shift + D split pane horizontally
    {key = 'd',mods = 'CMD|SHIFT',action = wezterm.action.SplitPane {direction = 'Right',size = { Percent = 50 },},
    },

  }

return config
