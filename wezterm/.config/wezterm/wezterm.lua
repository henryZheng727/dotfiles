-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply changes.
config.color_scheme = 'catppuccin-mocha'

-- Finally, return the configuration to wezterm:
return config
