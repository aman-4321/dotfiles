local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12

config.color_scheme = "rose-pine"

config.colors = {
	background = "black",
}

config.enable_tab_bar = false
config.window_decorations = "NONE"

config.window_background_opacity = 0.75

return config
