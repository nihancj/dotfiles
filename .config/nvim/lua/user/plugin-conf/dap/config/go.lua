local M = {}
M.go = {
	{
		type = "go", -- Which adapter to use
		name = "Debug", -- Human readable name
		request = "launch", -- Whether to "launch" or "attach" to program
		program = "${file}", -- The buffer you are focused on when running nvim-dap
	},
}

return M
