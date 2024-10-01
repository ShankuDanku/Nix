{...}: {
  programs.nixvim.autoCmd = [
    {
      event = [
        "BufWritePost"
      ];
      pattern = [
        "*.html"
      ];
      command = ":! djlint % --reformat --format-css --format-js --quiet";
    }
    {
      event = [
        "CursorHold"
      ];
      command = ":lua require('specs').show_specs()";
    }
  ];
}
