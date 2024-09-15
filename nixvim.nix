{pkgs, ...}:
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
	plugins = {
		which-key.enable = true;
		nvim-tree.enable = true;
		telescope.enable = true;
	};
	keymaps = [
		{
			mode = "n";
        key = "<leader>t";
        action = "<cmd>NvimTreeToggle<CR>";
		}

		{
			mode = "n";
        key = "<leader>f";
        action = "<cmd>Telescope find_files<CR>";
		}
	];
	globals.mapleader = " ";
	extraPlugins = with pkgs.vimPlugins; [
		nvim-web-devicons
	];
};
}
