local function get_absolute_path(relative_path)
    return vim.fn.expand(relative_path)
end
vim.lsp.config['pyright'] = {
	-- Command and arguments to start the server.
	cmd = { "pyright-langserver", "--stdio" },

	-- Filetypes to automatically attach to.
	filetypes = { "python" },

	-- Sets the "root directory" to the parent directory of the file in the
	-- current buffer that contains either a ".luarc.json" or a
	-- ".luarc.jsonc" file. Files that share a root directory will reuse
	-- the connection to the same LSP server.
	root_markers = { "brownie-config.yaml", "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git" },

	-- Specific settings to send to the server. The schema for this is
	-- defined by the server. For example the schema for lua-language-server
	-- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {
	  python = {
		analysis = {
			-- include = {"/home/user/.local/share/pipx/venvs/eth-brownie/lib/python3.13/site-packages"},
		extraPaths = {"./.venv/lib/python3.13/site-packages" },
		  autoSearchPaths = true,
		  diagnosticMode = "openFilesOnly",
		  useLibraryCodeForTypes = true
		}
	  }
	}
}
vim.lsp.enable('pyright')
