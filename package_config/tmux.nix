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
      set -g base-index 1
      setw -g pane-base-index 1
      set -g @continuum-boot 'on'
      set -g @continuum-boot-options 'alacritty'
    '';
  };
}
