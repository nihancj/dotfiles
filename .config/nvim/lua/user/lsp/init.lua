require("user.lsp.luals")
require("user.lsp.clangd")
require("user.lsp.rust-analyzer")

vim.diagnostic.config({virtual_text = { current_line = true }})

local nmap = require("user.functions").keymaps.nmap
nmap({"grl", "<cmd>lua vim.diagnostic.open_float()<CR>"})
nmap({"grf", "<cmd>lua vim.lsp.buf.format()<CR>"})
