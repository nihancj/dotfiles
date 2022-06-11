local M = {}
M.c = {
	{
	   name = "Launch",
	   type = "cpptools",
	   request = "launch",
	   program = '${workspaceFolder}/out',
	   cwd = '${workspaceFolder}',
	   stopOnEntry = true,
	   -- args = { '' },
	   -- runInTerminal = false,
	},
	{
	   name = "Build",
	   type = "cpptools",
	   request = "launch",
	   program = '/usr/bin/make',
	   cwd = '${workspaceFolder}',
	   stopOnEntry = true,
	   -- args = { '' },
	   -- runInTerminal = false,
	},
	{
		name = "Launch file",
		type = "cpptools",
		request = "launch",
		program = function()
		  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopAtEntry = true,
	},
	{
		name = 'Attach to gdbserver :1234',
		type = 'cpptools',
		request = 'launch',
		MIMode = 'gdb',
		miDebuggerServerAddress = 'localhost:1234',
		miDebuggerPath = '/usr/bin/gdb',
		cwd = '${workspaceFolder}',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
	},
}

return M;
