{...}: let
  nix-art = builtins.fetchGit {
    url = "https://github.com/NixOS/nixos-artwork";
    name = "nix-art";
  };
in {
  home-manager.users.sashank = {pkgs, ...}: {
    programs.kitty = {
      enable = true;
      font.name = "JetBrainsMono Nerd Font";
      settings = {
        background_image = "${nix-art}/wallpapers/nix-wallpaper-nineish-dark-gray.png";
        background_image_layout = "cscaled";
      };
    };
    home.stateVersion = "24.05";
  };
}
