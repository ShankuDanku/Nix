{pkgs, ...}: {
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
    python312Packages.django
    python312Packages.python-lsp-server

    # flutter
    flutter
    android-studio

    gcc
    podman
    postgresql_16
  ];
}
