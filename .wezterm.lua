-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('VictorMono NF', { weight = 600 })
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.96
config.enable_kitty_graphics = true
-- wezterm.on('update-right-status', function(window, pane)
--   window:set_left_status ''
--   window:set_right_status ''
-- end)
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.skip_close_confirmation_for_processes_named = {
  'bash',
  'sh',
  'zsh',
  'fish',
  'tmux',
  'nu',
  'cmd.exe',
  'pwsh.exe',
  'powershell.exe',
}
config.window_close_confirmation = 'NeverPrompt'
config.front_end = 'WebGpu'
config.initial_cols = 140
config.initial_rows = 35
config.adjust_window_size_when_changing_font_size = false
config.cell_width = 0.9
config.line_height = 0.77
config.default_cursor_style = 'BlinkingBlock'
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

-- callback to tokyonight theme
if config.color_scheme then
  config.colors = {
    tab_bar = {
      background = "#1e1e2e"
    }
  }
else
  config.colors = {
    foreground = "#c0caf5",
    background = "#1a1b26",
    cursor_bg = "#c0caf5",
    cursor_border = "#c0caf5",
    cursor_fg = "#1a1b26",
    selection_bg = "#283457",
    selection_fg = "#c0caf5",
    split = "#7aa2f7",
    compose_cursor = "#ff9e64",

    ansi = { "#15161e", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
    brights = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" },

    tab_bar = {
      inactive_tab_edge = "#16161e",
      background = "#1a1b26"
    }
  }
end

-- config.wsl_domains = wsl_domains
config.default_domain = 'WSL:Ubuntu-22.04'

-- and finally, return the configuration to wezterm
return config
