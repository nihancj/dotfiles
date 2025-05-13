require("user.lsp.luals")
require("user.lsp.clangd")
require("user.lsp.rust-analyzer")
require("user.lsp.ts-ls")

vim.diagnostic.config({virtual_text = { current_line = true }})

local nmap = require("user.functions").keymaps.nmap
nmap({"gl", "<cmd>lua vim.diagnostic.open_float()<CR>"})
nmap({"grf", "<cmd>lua vim.lsp.buf.format()<CR>"})
nmap({"gd", "<cmd>lua vim.lsp.buf.definition()<CR>"})
nmap({"gD", "<cmd>lua vim.lsp.buf.declaration()<CR>"})
