{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      which-key = {
        enable = true;
      };
      nvim-tree.enable = true;
      lualine.enable = true;
      toggleterm.enable = true;
      fzf-lua.enable = true;
      gitgutter.enable = true;
      gitblame.enable = true;
      autoclose.enable = true;
      diffview.enable = true;
      conform-nvim = {
        enable = true;
        formattersByFt = {
          nix = ["alejandro"];
        };
      };
    };

      extraPlugins = with pkgs.vimPlugins; [
        nvim-web-devicons
      ];
  };
}