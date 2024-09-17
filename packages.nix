{pkgs, ...}: let
  alejandra =
    (import (builtins.fetchTarball {
      url = "https://github.com/kamadorueda/alejandra/tarball/3.0.0";
      sha256 = "18jm0d5xrxk38hw5sa470zgfz9xzdcyaskjhgjwhnmzd5fgacny4";
    }) {})
    .outPath;
in {
  environment.systemPackages = with pkgs; [
    neovim
    git
    tor-browser
    opera
    vimPlugins.nvim-web-devicons
    kitty
    alejandra
    python312
    pre-commit
    nil
  ];
}
