{...}: {
  home-manager.users.sashank = {pkgs, ...}: {
    programs.kitty = {
      enable = true;
      font.name = "family=\"Ubuntu Mono\"";
      settings = {
        background_image = builtins.fetchurl {
          url = "https://raw.githubusercontent.com/NixOS/nixos-artwork/f99638d8d1a11d97a99ff7e0e1e7df58c28643ff/wallpapers/nix-wallpaper-nineish-solarized-dark.png";
        };
        background_image_layout = "cscaled";
      };
    };
    home.stateVersion = "24.05";
  };
}
