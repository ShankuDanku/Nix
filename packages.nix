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

    # python
    python312

    # flutter
    flutter
    android-studio

    podman
    postgresql_16
    tailwindcss
    alejandra
  ];
}
