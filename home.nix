{...}: let
  catppucin-alacritty = builtins.fetchGit {
    url = "https://github.com/catppuccin/alacritty";
  };
in {
  home-manager.users.sashank = {pkgs, ...}: {
    programs.alacritty = {
      enable = true;
      settings = {
        import = [
          "${catppucin-alacritty}/catppuccin-mocha.toml"
        ];
        window = {
          startup_mode = "Fullscreen";
          padding = {
            x = 30;
            y = 30;
          };
        };
        font = {
          normal = {
            family = "JetBrainsMono Nerd Font";
          };
          size = 12;
        };
      };
    };
    home.stateVersion = "24.05";
  };
}
