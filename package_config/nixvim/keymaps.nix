{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>f";
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
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options.desc = "Horizontal Terminal";
    }
    {
      mode = "n";
      key = "<leader>tv";
      action = "<cmd>ToggleTerm direction=vertical size=80<cr>";
      options.desc = "Vertical Terminal";
    }
    {
      mode = "n";
      key = "<leader>tf";
      action = "<cmd>ToggleTerm direction=float<cr>";
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
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DiffviewOpen<cr>";
      options.desc = "Open Diff View";
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>DiffviewClose<cr>";
      options.desc = "Close Diff View";
    }
    {
      mode = [
        "n"
        "i"
      ];
      key = "<C-S>";
      action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
      options.desc = "Signature Help";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
    }
  ];
}
