local aucmd = vim.api.nvim_create_autocmd
local augrp = require("user.functions").autogroup

aucmd("InsertEnter", {
	group = augrp("Vertically center document when entering insert mode"),
	command = "norm zz",
})

aucmd("BufWritePre", {
	group = augrp("Remove trailing whitespace on save"),
	command = "%s/\\s\\+$//e",
})

aucmd("BufWritePost", {
	group = augrp("Sort dmenu apps"),
	pattern = "*dmenu-custom/apps",
	command = "!sort -o %:p %:p",
})

aucmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ 'r', 'o' })
	end
})

vim.cmd("colorscheme kanagawa")
