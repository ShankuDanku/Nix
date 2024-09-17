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
  ];
}
