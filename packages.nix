{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
  neovim
  git
  tor-browser
  ];
}
