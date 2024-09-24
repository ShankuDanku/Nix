{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      which-key = {
        enable = true;
        registrations = {
          "<leader>t" = "Toggle Terminals";
          "<leader>d" = "Diff Views";
          "<leader>s" = "Search Stuff";
        };
      };
      nvim-tree.enable = true;
      lualine.enable = true;
      toggleterm.enable = true;
      fzf-lua.enable = true;
      gitgutter.enable = true;
      gitblame.enable = true;
      autoclose.enable = true;
      diffview.enable = true;
      treesitter = {
        enable = true;
        indent = true;
        folding = true;
      };
      lsp = {
        enable = true;
        servers = {
          nil-ls = {
            enable = true;
            settings.formatting.command = [
              "alejandra"
            ];
          };
          pylsp = {
            enable = true;
            settings.plugins.ruff.enabled = true;
          };
        };
      };
      lsp-format.enable = true;
      luasnip.enable = true;
      cmp.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp_luasnip.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
    ];
  };
}
