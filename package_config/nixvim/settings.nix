{...}: {
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

    globals.mapleader = " ";
  };
}
