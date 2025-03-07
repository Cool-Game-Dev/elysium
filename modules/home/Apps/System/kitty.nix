{ config, pkgs, vauxhall, ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      # THEME

      # Fonts
      font_family = "JetBrains Mono NF, emoji";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      font_size = 9.0;
      disable_ligatures = "never";

      # Cursor 
      cursor = "none";
      cursor_shape = "block";
      cursor_shape_unfocused = "hollow";
      shell_integration = "no-cursor";
      cursor_blink_interval = 0.5;
      cursor_stop_blinking_after = 0;
      cursor_trail = 15;
      cursor_trail_decay = "0.3 0.6";
      cursor_trail_start_threshold = 2;

      # Tabs
      tab_bar_edge = "top";
      tab_bar_style = "fade";
      tab_powerline_style = "slanted";
      tab_title_max_length = 50;

      active_tab_foreground = vauxhall.text.hex;
      active_tab_background = vauxhall.background.hex;
      active_tab_font_style = "bold";
      inactive_tab_foreground = vauxhall.text.hex;
      inactive_tab_background = vauxhall.background-alt.hex;
      inactive_tab_font_style = "normal";

      # The basic colors
      foreground = vauxhall.text.hex;
      background = vauxhall.background.hex;
      selection_background = vauxhall.text.hex;
      background_opacity = 0.65;

      # The basic 16 colors
      # black
      color0 = vauxhall.background.hex;
      color8 = vauxhall.gray.hex;

      # red
      color1 = vauxhall.hotRed.hex;
      color9 = "#e74856";

      # green
      color2 = vauxhall.mint.hex;
      color10 = "#16c60c";

      # yellow
      color3 = vauxhall.yellow.hex;
      color11 = "#f9f1a5";

      # blue
      color4 = vauxhall.blue.hex;
      color12 = vauxhall.cyanBlue.hex;

      # magenta
      color5 = vauxhall.purple.hex;
      color13 = vauxhall.magenta.hex;

      # cyan
      color6 = vauxhall.cyanBlue.hex;
      color14 = vauxhall.cyan.hex;

      # white
      color7 = vauxhall.text.hex;
      color15 = vauxhall.white.hex;

      # KEYBINDS

      clear_all_shortcuts = "yes";
    };

    keybindings = {
      # Clipboard bindings
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";

      # Scroll bindings
      "ctrl+w" = "close_tab";
      "ctrl+up" = "scroll_line_up";
      "ctrl+down" = "scroll_line_down";
      "ctrl+page_up" = "scroll_page_up";
      "ctrl+page_down" = "scroll_page_down";
      "ctrl+home" = "scroll_home";
      "ctrl+end" = "scroll_end";
      "ctrl+alt+up" = "scroll_to_prompt -1";
      "ctrl+alt+down" = "scroll_to_prompt 1";

      # Window bindings
      "ctrl+enter" = "new_window";
      "ctrl+shift+w" = "close_window";

      # Tab bindings
      "ctrl+t" = "new_tab !neighbor";
      "ctrl+tab" = "next_tab";
      "ctrl+shift+tab" = "previous_tab";
      "ctrl+," = "move_tab_forward";
      "ctrl+alt+t" = "set_tab_title";

      # Miscellaneous
      "ctrl+shift+plus" = "change_font_size all +2.0";
      "ctrl+shift+minus" = "change_font_size all -2.0";
      "ctrl+shift+backspace" = "change_font_size all 0";
      "ctrl+shift+alt+s" = "edit_config_file";
    };
  };
}
