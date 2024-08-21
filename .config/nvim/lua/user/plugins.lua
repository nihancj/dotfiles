local F = require("user.functions").plugin_config


local core_plugins = {
	-- Backends
	{ "nvim-lua/plenary.nvim" },        -- Useful lua functions used ny lots of plugins
	{ 'kyazdani42/nvim-web-devicons' }, -- Required by nvim-tree, bufferline, lualine
	{
		'nvim-treesitter/nvim-treesitter',
		config = function() F.lua_conf("treesitter") end,
		lazy = false,
	},

	-- Completions, Diagnostic and Formatting
	{
		'neovim/nvim-lspconfig',
		config = function() F.lua_conf('lsp') end,
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		},
	},
	{
		'williamboman/mason.nvim',
		build = ':MasonUpdate',
	},
	{
		'hrsh7th/nvim-cmp',
		config = function() F.lua_conf('cmp') end,
		dependencies = {
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-nvim-lsp',
			'saadparwaiz1/cmp_luasnip',
			'L3MON4D3/LuaSnip',
			'rafamadriz/friendly-snippets',
			'jose-elias-alvarez/null-ls.nvim',
		}
	},
	{
		'mfussenegger/nvim-dap',
		lazy = true,
		dependencies = {
			{ 'rcarriga/nvim-dap-ui',
				config = function() F.lua_conf('dap.dap-ui') end,
			},
			{ 'jay-babu/mason-nvim-dap.nvim',
				opts = {},
			},
			{'theHamsta/nvim-dap-virtual-text',
				-- config = function() F.lua_conf('dap.virtual-text') end},
				opts = {},
			}
		},
		config = function() F.lua_conf('dap') end
	},
	{
		'leoluz/nvim-dap-go',
		dependencies = 'mfussenegger/nvim-dap',
		config = function() F.lua_conf('dap.go') end,
		lazy = true,
		ft = "go"
	},
	{
		'jbyuki/one-small-step-for-vimkind',
		dependencies = 'mfussenegger/nvim-dap',
		config = function() F.lua_conf('dap.lua') end,
		lazy = true,
	},



	-- Telescope
	{
		'nvim-telescope/telescope.nvim',
		config = function() F.lua_conf("telescope") end,
		dependencies = {
			'nvim-telescope/telescope-fzf-native.nvim',
			'nvim-telescope/telescope-project.nvim'
		},
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		config = function() F.telescope('fzf') end,
		build = 'make'
	},
	{
		'nvim-telescope/telescope-project.nvim',
		config = function() F.telescope('project') end,
	},



	-- Typing
	{
		'windwp/nvim-autopairs',
		config = function() F.lua_conf('autopairs') end,
	},
	{
		'numToStr/Comment.nvim',
		config = function() F.lua_conf('comment') end,
		lazy = false,
	},
	{
		'kylechui/nvim-surround',
		dependencies = 'nvim-treesitter/nvim-treesitter-textobjects',
		opts = {}
	},


	-- Traversing
	{
		'nvim-treesitter/nvim-treesitter-context',
		config = function() F.lua_conf('treesitter-context') end,
		opts = { "hi TreesitterContext gui=underline guisp=Grey" }
	},
	{
		'kevinhwang91/nvim-ufo',
		dependencies = 'kevinhwang91/promise-async',
		config = function() F.lua_conf('nvim-ufo') end,
		-- opts = {},
	},



	-- Utils
	{
		'kyazdani42/nvim-tree.lua',
		config = function() F.lua_conf("nvim-tree") end,
		lazy = true,
		cmd = 'NvimTreeToggle',
	},
	{
		'stevearc/oil.nvim',
		opts = {},
	},
	{
		'mbbill/undotree',
		lazy = true,
		cmd= 'UndotreeToggle'
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	-- { "sindrets/diffview.nvim" },
	-- {
	-- 	"NStefan002/speedtyper.nvim",
	-- 	cmd = 'Speedtyper',
	-- 	opts = {},
	-- },
	-- {
	-- 	'lervag/vimtex',
	-- 	config = function() F.vim_conf('vimtex') end,
	-- 	ft = 'tex',
	-- },



	-- Style points
	-- { 'LunarVim/colorschemes', lazy = false },
	{ 'rebelot/kanagawa.nvim',
		config = function() F.lua_conf('kanagawa') end,
		lazy = false,
	},
	{
		'tribela/vim-transparent',
		cmd = 'TransparentToggle'
	},
	{
		'norcalli/nvim-colorizer.lua',
		cmd = 'ColorizerToggle'
	},
	{
		'nvim-lualine/lualine.nvim',
		config = function() F.lua_conf('lualine') end,
		lazy = false,
	},
	-- {
	-- 	'akinsho/bufferline.nvim',
	-- 	config = function() f.lua_conf("bufferline") end,
	-- 	dependencies = 'moll/vim-bbye'
	-- },
	-- {
	-- 	'folke/which-key.nvim',
	-- 	config = function() f.lua_conf('whichkey') end
	-- },
	{
		'j-hui/fidget.nvim',
		config = function() F.lua_conf("fidget") end,
		tag = 'legacy',
	},
	{
		'stevearc/dressing.nvim',
		lazy = false,
		opts = {},
	},


	-- Useless
	-- {
	-- 	'tamton-aquib/zone.nvim',
	-- 	cmd = 'Zone',
	-- },



	-- Own Plugins
	{
		dir = "~/nvim-plugins/plugin-switcher.nvim",
		config = function() F.lua_conf('plugin-switcher') end,
		lazy = false,
	},
	-- {
	-- 	dir = "~/nvim-plugins/oil.nvim",
	-- 	config = function() F.lua_conf('oil') end,
	-- },
	-- {
	-- 	dir = "~/nvim-plugins/diffview.nvim",
	-- 	config = function() F.lua_conf('diffview') end,
	-- 	cmd = 'DiffviewToggle'
	-- }
	-- {
	-- 	dir = "~/nvim-plugins/telescope-readme.nvim",
	-- 	config = function() F.telescope('readme') end,
	-- 	lazy = false,
	-- },
	{
		"adalessa/laravel.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"tpope/vim-dotenv",
			"MunifTanjim/nui.nvim",
			"nvimtools/none-ls.nvim",
		},
		cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
		keys = {
			{ "<leader>la", ":Laravel artisan<cr>" },
			{ "<leader>lr", ":Laravel routes<cr>" },
			{ "<leader>lm", ":Laravel related<cr>" },
		},
		event = { "VeryLazy" },
		config = true,
	}
}



return core_plugins
