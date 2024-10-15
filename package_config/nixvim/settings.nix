{...}: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    colorschemes.onedark = {
      enable = true;
      settings = {
        style = "darker";
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
      completeopt = "menu,menuone";
      showmode = false;
      foldlevel = 4;
      tabstop = 4;
      expandtab = true;
      softtabstop = 4;
      shiftwidth = 4;
    };

    globals.mapleader = " ";
  };
}
