{...}: {
  imports = [
    ./git.nix
    ./tor.nix
    ./nixvim/import.nix
    ./tmux.nix
    ./bash.nix
    ./postgres.nix
  ];
}
