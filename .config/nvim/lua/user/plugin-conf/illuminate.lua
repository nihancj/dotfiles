local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then return end


illuminate.configure({
    providers = {
        -- 'lsp',
        'treesitter',
	},
    delay = 500,
    under_cursor = false,
    large_file_cutoff = 1200,
    large_file_overides = nil,
})

local augrp = require('user.functions').autogroup()
vim.api.nvim_create_autocmd({"BufEnter", "VimEnter"}, {
	group = augrp("Disable vim-illuminate highlighting"),
	patter = "*",
	command = ":lua require('illuminate').invisible_buf()",
})
