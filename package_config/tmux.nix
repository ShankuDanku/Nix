{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
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
      set -g @catppuccin_window_number_position "right"
      set -g @catppuccin_window_default_text "#W"
      set -g @catppuccin_window_current_text "#W"
      set -g @catppuccin_window_default_fill "none"
      set -g @catppuccin_window_current_fill "all"
      set -g @catppuccin_status_modules_right "date_time battery cpu"
      set -g @catppuccin_status_fill "all"
      set -g @catppuccin_status_connect_separator "yes"
      set -g @catppuccin_status_background "default"
      set -g @catppuccin_directory_text "#{pane_current_path}"
    '';
    extraConfig = ''
      set -g 'status-format[1]' ' '
      set -g status 2
    '';
  };
}
