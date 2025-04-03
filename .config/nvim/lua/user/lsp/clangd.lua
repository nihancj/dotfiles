vim.lsp.config['clangd'] = {
	-- Command and arguments to start the server.
	cmd = { 'clangd' },

	-- Filetypes to automatically attach to.
	filetypes = { 'c', 'cpp' },

	-- Sets the "root directory" to the parent directory of the file in the
	-- current buffer that contains either a ".git" .
	-- Files that share a root directory will reuse
	-- the connection to the same LSP server.
	root_markers = { '.git' },

	settings = {},
}
vim.lsp.enable('clangd')
