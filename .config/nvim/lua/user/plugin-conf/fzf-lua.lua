local map = require("user.functions").keymaps.map

map("n", {"<leader>ff", "<cmd>FzfLua files<CR>"})
map("n", {"<leader>fo", "<cmd>FzfLua oldfiles<CR>"})
map("n", {"<leader>fh", "<cmd>FzfLua helptags<CR>"})
map("n", {"<leader>f", "<cmd>FzfLua<CR>"})

return {}
