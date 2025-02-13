{ ... }: {

  programs.wezterm = {
    enable = false;
    enableZshIntegration = true;

    extraConfig = ''
      local wezterm = require 'wezterm'
      local config = wezterm.config_builder()

      config.font =
        wezterm.font('Mononoki Nerd Font Mono', { weight = 'Regular' })

      config.font_size = 16.0
      config.default_cursor_style = 'SteadyBar'

      config.color_scheme = 'Gruvbox dark, pale (base16)'

      config.hide_tab_bar_if_only_one_tab = false
      config.tab_max_width = 32

      config.window_decorations = "RESIZE"

      config.window_background_opacity = 0.9
      
      return config
    '';
  };

}
