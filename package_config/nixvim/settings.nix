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
      completeopt = "menu,menuone,noinsert,noselect";
      showmode = false;
    };

    globals.mapleader = " ";
  };
}
