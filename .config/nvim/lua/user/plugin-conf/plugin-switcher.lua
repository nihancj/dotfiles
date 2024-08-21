local status_ok, switcher = pcall(require, "plugin-switcher")
if not status_ok then
	vim.notify("plugin-switcher missing")
	return
end

local main_plugins = {
	"nvim-lspconfig",
	"nvim-cmp",
	"nvim-ufo",
	"fidget.nvim",
	"nvim-autopairs",
	"nvim-surround",
	"nvim-treesitter-context",
	"telescope.nvim",
	-- "bufferline.nvim",
	-- "which-key.nvim",
	"gitsigns.nvim",
	"oil.nvim",
}

local minimal_plugins = {
	"nvim-autopairs",
	"nvim-surround",
	"nvim-treesitter-context",
	"telescope.nvim",
	-- "bufferline.nvim",
	-- "which-key.nvim",
}

local lua_plugins = {
	-- "zone.nvim"
}

switcher.setup({
	plugins = {
		main = main_plugins,
		minimal = minimal_plugins,
		debugger = {
			"nvim-dap",
		},
	},
	-- Set plugins to load on specified filetypes
	filetype_plugins = {
		lua = lua_plugins,
	},
	-- Set a function to execute after a profile group is loaded
	-- Works with groups specified in plugins and ft_plugins
	hooks = {
		main = vim.schedule_wrap(function()
			vim.cmd("LspStart")
		end),
	},
	-- persistence = {}
})
