local opts = require("user.functions").plugin_config.lua_opts

local plugins = {
	{
		'saghen/blink.cmp',
		version = '1.*',
		dependencies = { 'rafamadriz/friendly-snippets' },
		config = opts('blink'),
		opts_extend = { "sources.default" }
	},
	{
	  "ibhagwan/fzf-lua",
	  config = opts('fzf-lua'),
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = opts('nvim-treesitter'),
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
		opts = { "hi TreesitterContext gui=underline guisp=Grey" }
	},
	{
		'kyazdani42/nvim-tree.lua',
		lazy = true,
		cmd = 'NvimTreeToggle',
		config = opts('nvim-tree'),
	},
	{
		'nvim-lualine/lualine.nvim',
		opts = opts('lualine'),
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
