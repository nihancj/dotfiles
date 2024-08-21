vim.cmd("colorscheme kanagawa")
vim.cmd("colorscheme kanagawa")
-- vim.cmd "call background#disable()" -- Transparent  Disable
vim.g.c_syntax_for_h = 1

-- Auto commands
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

aucmd("FileType", {
	group = augrp("Disable auto commenting"),
	command = "set formatoptions-=c formatoptions-=r formatoptions-=o",
})

aucmd("BufWritePost", {
	group = augrp("Sort dmenu apps"),
	pattern = "*dmenu-custom/apps",
	command = "!sort -o %:p %:p",
})

-- require("user.functions").lsp_format_on_save.enable()
vim.cmd("au BufRead xinitrc* setf sh")
vim.cmd("command! Sudow w !doas tee % > /dev/null")
vim.cmd("command! AllowWhitespace lua vim.api.nvim_del_augroup_by_name('Remove trailing whitespace on save')")
