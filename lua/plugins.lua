require("lazy").setup({
	"Mofiqul/vscode.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		'ribru17/bamboo.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require('bamboo').setup {
			}
			require('bamboo').load()
		end,
	},

	"neovim/nvim-lspconfig",
	
	"dcampos/nvim-snippy",
	"dcampos/cmp-snippy",	
	
	"hrsh7th/cmp-buffer",
	"hrsh7th/nvim-cmp",	
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",	
	
	"nvim-lualine/lualine.nvim",
	
	"preservim/nerdtree", 
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	"nvim-treesitter/nvim-treesitter"
}, opts)

