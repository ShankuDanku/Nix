{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      resurrect
      catppuccin
      continuum
    ];
    extraConfigBeforePlugins = ''
      set-option -g status-position top
      unbind C-b
      set-option -g prefix C-a
      bind-key C-a send-prefix
    '';
  };
}
