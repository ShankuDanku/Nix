{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      resurrect
      catppuccin
      cpu
      battery
    ];
    extraConfigBeforePlugins = ''
      set-option -g status-position top
      unbind C-b
      set-option -g prefix C-a
      bind-key C-a send-prefix
      set -g base-index 1
      setw -g pane-base-index 1
      set -g @catppuccin_window_left_separator ""
      set -g @catppuccin_window_right_separator " "
      set -g @catppuccin_window_middle_separator " "
      set -g @catppuccin_window_default_fill "none"
      set -g @catppuccin_window_default_text "#W"
      set -g @catppuccin_window_current_fill "all"
      set -g @catppuccin_window_current_text "#W"
      set -g @catppuccin_status_modules_right "directory date_time battery cpu"
      set -g @catppuccin_status_left_separator  ""
      set -g @catppuccin_status_right_separator " "
      set -g @catppuccin_status_fill "all"
      set -g @catppuccin_status_connect_separator "yes"
      set -g @catppuccin_status_background "default"
    '';
  };
}
