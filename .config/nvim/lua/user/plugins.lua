local F = require("user.functions").plugin_config


local plugins = {
	{
		'saghen/blink.cmp',
		version = '1.*',
		dependencies = { 'rafamadriz/friendly-snippets' },
		config = function() F.lua_conf('blink') end,
		opts_extend = { "sources.default" }
	},
	{
	  "ibhagwan/fzf-lua",
	  config = function() F.lua_conf('fzf-lua') end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {},
	},
	{
		'windwp/nvim-autopairs',
		opts = {},
	},
	{
		'kylechui/nvim-surround',
		dependencies = 'nvim-treesitter/nvim-treesitter-textobjects',
		opts = {}
	},
	{
		'nvim-treesitter/nvim-treesitter-context',
		config = function() F.lua_conf('treesitter-context') end,
		opts = { "hi TreesitterContext gui=underline guisp=Grey" }
	},
	{
		'kyazdani42/nvim-tree.lua',
		lazy = true,
		cmd = 'NvimTreeToggle',
		config = function() F.lua_conf('nvim-tree') end,
	},
	{
		'nvim-lualine/lualine.nvim',
		config = function() F.lua_conf('lualine') end,
	},
	{ 'rebelot/kanagawa.nvim',
		lazy = false,
		opts = {compile = true},
	},
	{
		'stevearc/oil.nvim',
		cmd = 'Oil'
	},
	{
		'tribela/vim-transparent',
		cmd = 'TransparentToggle'
	},
	{
		'norcalli/nvim-colorizer.lua',
		cmd = 'ColorizerToggle'
	},
}

return plugins
