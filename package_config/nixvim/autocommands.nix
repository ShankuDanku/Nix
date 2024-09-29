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
  ];
}
