local wezterm = require('wezterm')
local os = wezterm.target_triple

if os == 'x86_64-pc-windows-msvc' then -- Windows
    shell = { 'C:/Program Files/PowerShell/7/pwsh.exe' }
elseif os == 'aarch64-apple-darwin' then -- macOS (Apple Silicon)
    shell = { '/usr/bin/zsh' }           
else
    shell = {}
end

table.insert(shell, '-l')

return {
    -- [COLORS]
    color_scheme = 'AyuDark (Gogh)',

    -- [FONT]
    font = wezterm.font({
        family = 'JetBrainsMono Nerd Font',
    }),

    -- [GUI]
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = false,
    hide_mouse_cursor_when_typing = true,

    -- [TABS]
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
    show_tab_index_in_tab_bar = true,
    switch_to_last_active_tab_when_closing_tab = true,
    tab_max_width = 15,

    -- [CURSOR]
    default_cursor_style = "BlinkingBlock",
    cursor_blink_ease_in = "Constant",
    cursor_blink_ease_out = "Constant",
    cursor_blink_rate = 600,
    
    -- [WINDOW]
    window_decorations = "INTEGRATED_BUTTONS | RESIZE",
    window_padding = {  bottom = 0 },

    -- [SHELL]
    default_prog = shell,
}
