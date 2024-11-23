local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Colors & Appearance
config.color_scheme_dirs = {
    os.getenv("HOME") .. "/.config/wezterm  ",
}
config.color_scheme = "thescream"
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = true

-- Fonts
config.font = wezterm.font_with_fallback({
    { family = "IosevkaTerm Nerd Font Mono", weight = "Medium" },
    { family = "Iosevka Nerd Font Mono", weight = "Medium" },
    "FiraCode",
    "Hack",
    "Noto Color Emoji",
})
config.font_size = 16
config.warn_about_missing_glyphs = true
config.bold_brightens_ansi_colors = true

-- Window
config.window_background_opacity = 0.85
config.window_close_confirmation = "NeverPrompt"
config.scrollback_lines = 50000
config.window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
}

-- Keybinds
config.keys = {
    {
        key = "d",
        mods = "SHIFT|ALT",
        action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
    },
    {
        key = "d",
        mods = "ALT",
        action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
    },
    {
        key = "q",
        mods = "CTRL|ALT",
        action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
    },
    {
        key = "l",
        mods = "ALT",
        action = wezterm.action({ ActivatePaneDirection = "Next" }),
    },
    {
        key = "h",
        mods = "ALT",
        action = wezterm.action({ ActivatePaneDirection = "Next" }),
    },
}

return config
