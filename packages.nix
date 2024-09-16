{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
  neovim
  git
  tor-browser
  opera
  vimPlugins.nvim-web-devicons
  kitty
  ];
}
