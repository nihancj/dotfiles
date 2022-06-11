local dap_ok, dap = pcall(require, "dap")
if not (dap_ok) then
  require("notify")("dap not installed!", "warning")
  return
end

require('dap').set_log_level('INFO') -- Helps when configuring DAP, see logs with :DapShowLog

dap.adapters = {
	go = {
	  type = "server",
	  port = "${port}",
	  executable = {
		command = vim.fn.stdpath("data") .. '/mason/bin/dlv',
		args = { "dap", "-l", "127.0.0.1:${port}" },
	  },
	},
   cpptools = {
	 type = 'executable';
	 name = "cpptools",
	 command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
	 args = {},
	 attach = {
	   pidProperty = "processId",
	   pidSelect = "ask"
	 },
   }
}

local available_config = { 'c', 'go' }

local dap_configuration = {}
for _, launguage in pairs(available_config) do
	local has_config, config = pcall(require, "user.plugin-conf.dap.config." .. launguage)
	if has_config then
		dap_configuration = vim.tbl_deep_extend("force", dap_configuration, config)
	end
end

dap.configurations = dap_configuration
