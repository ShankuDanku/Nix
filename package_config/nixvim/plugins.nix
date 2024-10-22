{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      which-key = {
        enable = true;
        registrations = {
          "<leader>d" = "Diff Views";
          "<leader>s" = "Search Stuff";
          "<leader>h" = "Git Hunks";
          "<leader>l" = "Diagnostics";
          "<leader>a" = "Autocomplete";
          "<leader>ah" = "Show Hover Info";
          "<leader>ar" = "Find All References";
          "<leader>ad" = "Go To Definition";
          "<leader>ai" = "Go To Implementation";
          "<leader>at" = "Show Type Definition";
          "<leader>as" = "Display Singature Help";
          "<leader>hp" = "Preview Git Hunk";
          "<leader>hs" = "Stage Git Hunk";
          "<leader>hu" = "Undo Git Hunk";
          "<leader>lj" = "Go To Next Diagnostic Shit";
          "<leader>lk" = "Go To Prev Diagnostic Shit";
        };
      };
      nvim-tree.enable = true;
      lualine.enable = true;
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
        keymaps = {
          diagnostic = {
            "<leader>lj" = "goto_next";
            "<leader>lk" = "goto_prev";
          };
          lspBuf = {
            "<leader>ah" = "hover";
            "<leader>ar" = "references";
            "<leader>ad" = "definition";
            "<leader>ai" = "implementation";
            "<leader>at" = "type_definition";
            "<leader>as" = "signature_help";
          };
        };
        servers = {
          tsserver.enable = true;
          cssls.enable = true;
          html.enable = true;
          tailwindcss = {
            enable = true;
            filetypes = [
              "html"
              "htmldjango"
            ];
          };
          yamlls.enable = true;
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
            };
          };
          astro.enable = true;
        };
      };
      lsp-format.enable = true;
      transparent = {
        enable = true;
      };
      tmux-navigator.enable = true;
      lint = {
        enable = true;
        autoCmd.event = [
          "BufEnter"
          "BufWritePost"
        ];
        lintersByFt = {
          htmldjango = [
            "djlint"
          ];
        };
      };
      specs = {
        enable = true;
      };
      mini = {
        enable = true;
        modules = {
          animate = {
            open = {
              enable = false;
            };
            close = {
              enable = false;
            };
          };
        };
      };
      emmet = {
        enable = true;
      };
    };
    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
    ];
  };
}
