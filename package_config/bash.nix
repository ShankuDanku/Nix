{...}: {
  programs.bash = {
    promptInit = ''
      function git_branch(){
      	git branch --show-current 2>/dev/null
      }
      function git_hash(){
      	git rev-parse HEAD 2>/dev/null | cut -b 1-10
      }
      PS1="\n\[\033[46m\]\[\033[1;30m\]  \w \[\033[00m\]\[\033[36m\]\[\033[42m\] \[\033[00m\]\[\033[42m\]\[\033[30m\]\$(git_branch) \$(git_hash) \[\033[00m\]\[\033[32m\]\[\033[00m\]\n\n\[\033[1;34m\]  ⤷ \[\033[00m\]";
    '';
    shellAliases = {
      tmux = "tmux -u";
    };
  };
}
