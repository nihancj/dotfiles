local status_ok, mason = pcall(require, "mason")
local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok and status_ok_1 and status_ok then return end

-- local lsp_servers = { "rust_analyzer", "lua_ls", "gopls", "vimls", "bashls", "tsserver", "clangd" }
local lsp_servers = mason_lspconfig.get_installed_servers()
local settings = {
	ui = {
		border = "rounded",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup({
	automatic_installation = false,
})

local opts = {}

for _, server in pairs(lsp_servers) do
	opts = {
		on_attach = require("user.plugin-conf.lsp.handlers").on_attach,
		capabilities = require("user.plugin-conf.lsp.handlers").capabilities,
	}

	-- server = vim.split(server, "@")[1]
	local has_custom_opts, server_custom_opts = pcall(require, "user.plugin-conf.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end

	lspconfig[server].setup(opts)
end
