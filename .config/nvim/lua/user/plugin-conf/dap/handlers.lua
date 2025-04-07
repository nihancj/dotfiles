local nmap = require("user.functions").keymaps.nmap

vim.api.nvim_create_user_command("DapUIToggle", function ()
	require('dapui').toggle()
end, { nargs = 0, })

nmap({ "<leader>du", "<cmd>lua require('dapui').toggle()<CR>" })
nmap({ "<leader>db", "<cmd>:DapToggleBreakpoint<CR>" })
nmap({ "<leader>dc", "<cmd>:DapContinue<CR>" })
nmap({ "<leader>dt", "<cmd>:DapTerminate<CR>" })
