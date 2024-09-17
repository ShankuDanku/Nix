{...}: {
  programs.nixvim.autoCmd = [
    {
      command = ":%!alejandra -qq";
      event = [
        "BufWritePre"
      ];
      pattern = [
        "*.nix"
      ];
    }
    {
      command = ":lua vim.lsp.start({name='nil-nix', cmd={'nil'}})";
      event = [
        "FileType"
      ];
      pattern = [
        "nix"
      ];
    }
  ];
}
