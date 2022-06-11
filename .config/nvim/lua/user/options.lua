vim.cmd "colorscheme onedarker"
-- vim.cmd "call background#disable()" -- Transparent  Disable
vim.g.c_syntax_for_h = 1


-- Auto commands
local group1 = vim.api.nvim_create_augroup("Vertically center document when entering insert mode", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", { command = "norm zz", group = group1 })

local group2 = vim.api.nvim_create_augroup("Remove trailing whitespace on save", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", { command = "%s/\\s\\+$//e", group = group2 })

local group3 = vim.api.nvim_create_augroup("Disable auto commenting", { clear = true })
vim.api.nvim_create_autocmd("FileType *", { command = "set formatoptions-=c formatoptions-=r formatoptions-=o", group = group3 })
