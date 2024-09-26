{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      which-key = {
        enable = true;
        registrations = {
          "<leader>t" = "Toggle Terminals";
          "<leader>d" = "Diff Views";
          "<leader>s" = "Search Stuff";
          "<leader>h" = "Git Hunks";
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
            settings.plugins = {
              ruff.enabled = true;
              jedi_completion.enabled = true;
              jedi_definition.enabled = true;
              jedi_hover.enabled = true;
              jedi_references.enabled = true;
              jedi_signature_help.enabled = true;
              jedi_symbols.enabled = true;
              pylsp_mypy.enabled = true;
            };
          };
        };
      };
      lsp-format.enable = true;
      transparent.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
    ];
  };
}
