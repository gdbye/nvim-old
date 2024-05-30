require("lazy").setup({
	{"github/copilot.vim"},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{'brenoprata10/nvim-highlight-colors'},
	{"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
    		"williamboman/mason.nvim",
    		"williamboman/mason-lspconfig.nvim",
    		"neovim/nvim-lspconfig",
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/LuaSnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		}
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
		},
	},
	{ "folke/neodev.nvim", opts = {} },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
		config = function()
			require("startup").setup({theme = "dashboard"})
		end
	},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ 'echasnovski/mini.pairs', version = '*' },

})
