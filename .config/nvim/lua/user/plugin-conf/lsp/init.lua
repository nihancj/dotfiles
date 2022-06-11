local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.plugin-conf.lsp.mason"
require("user.plugin-conf.lsp.handlers").setup()
require "user.plugin-conf.lsp.null-ls"
