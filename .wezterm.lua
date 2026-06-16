local wezterm = require 'wezterm'
local gpus = wezterm.gui.enumerate_gpus()

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font("Iosevka Etoile")
config.enable_wayland = false
config.freetype_load_flags = 'NO_HINTING|MONOCHROME'

-- https://github.com/wez/wezterm/issues/2756
-- config.freetype_load_target = 'Light'
-- config.freetype_render_target = 'HorizontalLcd'
config.cell_width = 0.7
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false

-- config.use_ime = true
-- config.ime_preedit_rendering = "Builtin"
config.exit_behavior = "CloseOnCleanExit"
config.window_background_opacity = 0.8

return config
