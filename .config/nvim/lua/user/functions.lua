P = function(v)
	print(vim.inspect(v))
	return v
end

SetTabs = function()
	local ft = vim.bo.filetype
	local opts = {
		["javascript"] = { 2, 2, 2, true },
	}

	vim.opt.tabstop = opts[ft][1]
	vim.opt.softtabstop = opts[ft][2]
	vim.opt.shiftwidth = opts[ft][3]
	vim.opt.expandtab = opts[ft][4]
end

local M = {}

M.reload_nvim = function() -- {{{
	for name, _ in pairs(package.loaded) do
		-- if name:match('^user') or name:match('^nvim-tree') then
		if name:match("^user") then
			package.loaded[name] = nil
		end
	end

	dofile(vim.env.MYVIMRC)
	vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end -- }}}

M.autogroup = function(text) -- {{{
	local group = vim.api.nvim_create_augroup(text, { clear = true })
	return group
end -- }}}

M.keymaps = {
	-- {{{

	map = function(list)
		if list[4] == nil then
			list[4] = { noremap = true, silent = true }
		else
			list[4] = vim.tbl_deep_extend("force", { noremap = true, silent = true }, list[4])
		end
		vim.api.nvim_set_keymap(list[1], list[2], list[3], list[4])
	end,
	nmap = function(list)
		table.insert(list, 1, "n")
		M.keymaps.map(list)
	end,
	imap = function(list)
		table.insert(list, 1, "i")
		M.keymaps.map(list)
	end,
	vmap = function(list)
		table.insert(list, 1, "v")
		M.keymaps.map(list)
	end,
	xmap = function(list)
		table.insert(list, 1, "x")
		M.keymaps.map(list)
	end,
	tmap = function(list)
		table.insert(list, 1, "t")
		table.insert(list, { silent = true })
		M.keymaps.map(list)
	end,
} -- }}}

M.plugin_config = {
	-- {{{

	lua_conf = function(plugin)
		plugin = "user.plugin-conf." .. plugin
		pcall(require, plugin)
	end,
	vim_conf = function(plugin)
		vim.cmd('source /home/user/.config/nvim/lua/user/plugin-conf/' .. plugin .. '.vim')
	end,
	telescope = function(extension)
		require("telescope").load_extension(extension)
	end,
} -- }}}

M.lsp_format_on_save = {
	-- {{{

	enable = function()
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = M.autogroup("lsp_format_on_save"),
			command = "lua vim.lsp.buf.format({ async = false })",
		})
	end,
	disable = function()
		if vim.fn.exists("#lsp_format_on_save") == 1 then
			vim.api.nvim_del_augroup_by_name("lsp_format_on_save")
		end
	end,
	toggle = function()
		if vim.fn.exists("#lsp_format_on_save#BufWritePre") == 0 then
			M.lsp_format_on_save.enable()
			vim.notify("Enabled format on save")
		else
			M.lsp_format_on_save.disable()
			vim.notify("Disabled format on save")
		end
	end,
}
vim.api.nvim_create_user_command("LspToggleAutoFormat", 'lua require("user.functions").lsp_format_on_save.toggle()', {}) -- }}}

return M
