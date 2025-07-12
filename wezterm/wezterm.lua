local wezterm = require("wezterm")
local config = {}

local SYSTEM_TITLE_BAR_COLOR = "#292c30"
local ACTIVE_TAB_BG_COLOR = "#080808"
local TAB_FG_COLOR = "#b3b1ad"

config.initial_cols = 105
config.initial_rows = 30
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Moonfly (Gogh)"
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.window_frame = {
	active_titlebar_bg = SYSTEM_TITLE_BAR_COLOR,
}

config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = ACTIVE_TAB_BG_COLOR,
			fg_color = TAB_FG_COLOR,
		},
		inactive_tab = {
			bg_color = SYSTEM_TITLE_BAR_COLOR,
			fg_color = TAB_FG_COLOR,
		},
		new_tab = {
			bg_color = SYSTEM_TITLE_BAR_COLOR,
			fg_color = TAB_FG_COLOR,
		},
	},
}

config.window_padding = {
	left = 5,
	right = 5,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "}",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "{",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

return config
