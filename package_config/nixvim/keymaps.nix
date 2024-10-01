{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>NvimTreeToggle<CR>";
      options.desc = "Toggle Tree";
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
      key = "<leader>sg";
      action = "<cmd>FzfLua live_grep_glob<cr>";
      options.desc = "Live Grep Glob";
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
  ];
}
