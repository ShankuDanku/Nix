{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    #nix
    alejandra

    # terminal
    alacritty
    tmux

    # neovim
    neovim
    vimPlugins.nvim-web-devicons
    ripgrep

    # git
    git
    pre-commit

    # browsers
    tor-browser
    google-chrome
    firefox

    # python
    python312
    djlint

    # flutter
    flutter
    android-studio

    # apps
    discord

    # databases
    postgresql_16

    # javascript
    nodejs-slim
    nodePackages.npm
    create-react-app

    # dev stuff
    tailwindcss
    podman
  ];
}
