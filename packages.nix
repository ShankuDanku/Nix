{pkgs, ...}: let
  alejandra =
    (import (builtins.fetchTarball {
      url = "https://github.com/kamadorueda/alejandra/tarball/3.0.0";
      sha256 = "18jm0d5xrxk38hw5sa470zgfz9xzdcyaskjhgjwhnmzd5fgacny4";
    }) {})
    .outPath;
in {
  environment.systemPackages = with pkgs; [
    # terminal
    kitty
    tmux

    # neovim
    neovim
    vimPlugins.nvim-web-devicons

    # git
    git
    pre-commit

    # browsers
    tor-browser
    opera
    google-chrome

    # nix
    nil
    alejandra

    # python
    python312
    ruff
    python312Packages.django
    python312Packages.python-lsp-server

    # flutter
    flutter
    android-studio
  ];
}
