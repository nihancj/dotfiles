local config = {
   colorcolumn = {"80"},
   disabled_filetypes = { "help", "text", "markdown" },
   -- custom_colorcolumn = { lua = '5', python = '20' },
   scope = "line",
}

require("smartcolumn").setup(config)
