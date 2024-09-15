{...}:
{
	
  programs.nixvim = {
	enable = true;
	defaultEditor = true;
	viAlias = true;
	vimAlias = true;
	colorschemes.gruvbox.enable = true;
	opts = {
		number = true;
		relativenumber = true;
	};
};
}
