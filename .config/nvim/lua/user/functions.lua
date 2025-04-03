P = function(v)
	print(vim.inspect(v))
	return v
end

local M = {}

M.autogroup = function(text)
	return vim.api.nvim_create_augroup(text, { clear = true })
end

M.keymaps = {
	map = function(mode, list)
		table.insert(list, 1, mode)
		list[4] = { noremap = true, silent = false }
		if mode == "t" then
			list[4]["silent"] = true
		end
		vim.api.nvim_set_keymap(list[1], list[2], list[3], list[4])
	end,
}

M.plugin_config = {
	lua_conf = function(plugin)
		plugin = "user.plugin-conf." .. plugin
		pcall(require, plugin)
	end,
}

M.lsp_format_on_save = {
	enable = function()
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = M.autogroup("lsp_format_on_save"),
			command = "lua vim.lsp.buf.format({ async = true })",
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

