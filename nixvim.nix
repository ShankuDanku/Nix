{pkgs, ...}:
{
	
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
	plugins = {
		which-key = {
			enable = true;
		};
		nvim-tree.enable = true;
		telescope.enable = true;
		lualine.enable = true;
		toggleterm.enable = true;
	};
	keymaps = [
		{
			mode = "n";
        key = "<leader>o";
        action = "<cmd>NvimTreeToggle<CR>";
	options.desc = "Toggle Tree";
		}

		{
			mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
	options.desc = "Find Files";
		}
		{
		mode = "t";
		key = "<Esc>";
		action = "<cmd>ToggleTerm<cr>";
		}
		{
			mode = "n";
        key = "<leader>th";
        action = "<cmd>ToggleTerm direction=horizontal<CR>";
	options.desc = "Horizontal Terminal";
	}
		{
			mode = "n";
        key = "<leader>tf";
        action = "<cmd>ToggleTerm direction=float<CR>";
	options.desc = "Floating Terminal";
	}
	];
	globals.mapleader = " ";
	extraPlugins = with pkgs.vimPlugins; [
		nvim-web-devicons
	];
};
}
