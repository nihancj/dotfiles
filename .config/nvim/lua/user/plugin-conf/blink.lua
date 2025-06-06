return{
-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
-- 'super-tab' for mappings similar to vscode (tab to accept)
-- 'enter' for enter to accept
-- 'none' for no mappings
--
-- All presets have the following mappings:
-- C-space: Open menu or open docs if already open
-- C-n/C-p or Up/Down: Select next/previous item
-- C-e: Hide menu
-- C-k: Toggle signature help (if signature.enabled = true)
--
-- See :h blink-cmp-config-keymap for defining your own keymap
keymap = {
	preset = 'none',
	['<C-k>'] = { 'select_prev', 'fallback' },
	['<C-j>'] = { 'select_next', 'fallback' },
	['<A-k>'] = { 'snippet_backward', 'fallback' },
	['<A-j>'] = { 'snippet_forward', 'fallback' },

	['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
	['<C-e>'] = { 'hide', 'fallback' },

	['<Tab>'] = { 'accept', 'fallback' },

	['<Up>'] = { 'select_prev', 'fallback' },
	['<Down>'] = { 'select_next', 'fallback' },
	['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
	['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

	['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
	['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

	['<C-u>'] = { 'show_signature', 'hide_signature', 'fallback' },
},

appearance = {
  -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
  -- Adjusts spacing to ensure icons are aligned
  nerd_font_variant = 'mono'
},

cmdline = { enabled = false },

completion = { documentation = { auto_show = true } },

-- Default list of enabled providers defined so that you can extend it
-- elsewhere in your config, without redefining it, due to `opts_extend`
sources = {
  default = { 'snippets', 'lsp', 'path', 'buffer' },
  -- providers = {
  --   snippets = {
  --     score_offset = 5,
  --   }
  -- },
},

-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
--
-- See the fuzzy documentation for more information
fuzzy = { implementation = "prefer_rust_with_warning" },

}
