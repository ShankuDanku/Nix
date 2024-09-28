{...}: {
  home-manager.users.sashank = {pkgs, ...}: {
    programs.alacritty = {
      enable = true;
      settings = {
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
