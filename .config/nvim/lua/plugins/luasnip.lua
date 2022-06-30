local status_ok, ls = pcall(require, "luasnip")
if not status_ok then
    return
end
local types = require "luasnip.util.types"

ls.config.set_config {
    -- This tells Luasnip to remember to keep around the last snippet.
    -- You can jump back into it even if you move outside of the selection.
    history = true,

    -- This one is cool cause if you have dynamic snippets, it updates as you type!
    updateevents = "TextChanged,TextChangedI",

    -- Autosnippets
    enable_autosnippets = true,

    -- Crazy highlights!!
    -- ext_opts = nil,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = { { "<-", "Error" } },
            },
        },
    },
}
