local nmap = require("user.functions").keymaps.nmap

nmap {"<leader>ff", "<cmd>FzfLua files<CR>"}
nmap {"<leader>fo", "<cmd>FzfLua oldfiles<CR>"}
nmap {"<leader>fh", "<cmd>FzfLua helptags<CR>"}
nmap {"<leader>f", "<cmd>FzfLua<CR>"}
nmap {"<leader>fn", "<cmd>FzfLua files cwd=~/.config/nvim<CR>"}

return {}
