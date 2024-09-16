{pkgs, ...}: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    colorschemes.onedark = {
      enable = true;
      settings = {
        style = "warm";
      };
    };
    opts = {
      number = true;
      relativenumber = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;
      hlsearch = false;
      cursorline = true;
      timeoutlen = 250;
    };
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
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>o";
        action = "<cmd>NvimTreeToggle<CR>";
        options.desc = "Toggle Tree";
      }
      {
        mode = "t";
        key = "<Esc>";
        action = "<C-Bslash><C-N>";
      }
      {
        mode = "n";
        key = "<leader>th";
        action = ":1ToggleTerm direction=horizontal<cr>";
        options.desc = "Horizontal Terminal";
      }
      {
        mode = "n";
        key = "<leader>tv";
        action = ":2ToggleTerm direction=vertical size=80<cr>";
        options.desc = "Vertical Terminal";
      }
      {
        mode = "n";
        key = "<leader>tf";
        action = ":3ToggleTerm direction=float<cr>";
        options.desc = "Floating Terminal";
      }
      {
        mode = "n";
        key = "<leader>tt";
        action = "<cmd>ToggleTermToggleAll<cr>";
        options.desc = "Toggle Terminals";
      }
      {
        mode = "n";
        key = "<leader>sf";
        action = "<cmd>FzfLua files<cr>";
        options.desc = "Find Files";
      }
      {
        mode = "n";
        key = "<leader>ss";
        action = "<cmd>FzfLua live_grep<cr>";
        options.desc = "Live Grep";
      }
    ];
    globals.mapleader = " ";
    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
    ];
  };
}
