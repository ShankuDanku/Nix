{...}: {
  programs.bash = {
    promptInit = ''
      PS1="\[\033[1;94m\]⤷ "
    '';
    shellAliases = {
      tmux = "tmux -u";
    };
  };
}
