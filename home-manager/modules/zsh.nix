{ ... }: {
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";

    prezto = {
      enable = true;

      pmodules = [
        "environment"
        "terminal"
        "history"
        "completion"
        "command-not-found"
        "syntax-highlighting"
        "autosuggestions"
        "prompt"
      ];

      prompt = {
        theme = "sorin";
      };


    };

    shellAliases = {
      l = "eza -l -F --color=always --icons=always";
      ls = "eza --color=always --icons=always";
      hbs = "home-manager build && home-manager switch";
    };

    envExtra = ''
      eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    '';

  };
}
