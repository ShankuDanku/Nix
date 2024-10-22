{...}: {
  programs.nixvim.autoCmd = [
    {
      event = [
        "CursorHold"
      ];
      command = ":lua require('specs').show_specs()";
    }
  ];
}
