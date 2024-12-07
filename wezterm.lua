-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- my coolnight colorscheme
config.colors = {
	foreground = "#E2E8EF",
	background = "#1a2332",
	cursor_bg = "#5CB2FF",
	cursor_border = "#5CB2FF",
	cursor_fg = "#5CB2FF",
	selection_bg = "#222325",
	selection_fg = "#ffffff",
	ansi = { "#000000", "#ff3e3e", "#9fef00", "#ffaf00", "#004cff", "#9f00ff", "#2ee7b6", "#ffffff" },
	brights = { "#666666", "#ff8484", "#c5f467", "#ffcc5c", "#5cb2ff", "#c16cfa", "#5cecc6", "#ffffff" },
}

config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono")
config.font_size = 12

config.default_cursor_style = 'SteadyUnderline'

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
