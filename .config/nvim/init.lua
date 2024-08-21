vim.loader.enable()
require "user.basic_settings"
require "user.functions"
require "user.plugin-conf.lazy"
require "user.keymaps"
require "user.after_settings"
--
-- local client = vim.lsp.start_client {
-- 	name = "educationalsp",
-- 	cmd = { "/home/user/Programming/educationalsp/main" },
-- 	on_attach = require("user.plugin-conf.lsp.handlers").on_attach,
-- }
--
-- if not client then
-- 	vim.notify("Hey you didn't do the client thing good!")
-- end
--
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "markdown",
-- 	callback = function()
-- 		vim.lsp.buf_attach_client(0, client)
-- 	end,
-- })
