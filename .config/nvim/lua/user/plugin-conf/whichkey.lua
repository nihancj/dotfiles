local status_ok, which_key = pcall(require, "which-key")
if not status_ok then return end

local setup = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions =false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  -- replace = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<leader>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  -- },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  keys = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  win = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  -- ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  -- hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = false, -- show help message on the command line when the popup is visible
  triggers = { "<auto>", "nixstoc" }, -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  -- triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    -- i = { "j", "k", },
    -- v = { "j", "k", },
  -- },

 --   defaults = {
 --          ["<leader>d"] = { name = "+debug" },
 --          ["<leader>da"] = { name = "+adapters" },
	-- },
}
which_key.setup(setup)

which_key.add({
    { "<leader>d", group = "debug" },
    -- { "<leader>da", group = "adapters" },
})

-- which_key.add({
--     { "<leader>fo", "<cmd>Telescope oldfiles<cr>" },
--     { "<leader>fl", "<cmd>Telescope resume<cr>" },
--     { "<leader>fp", "<cmd>Telescope project<cr>" },
--     { "<leader>fS", "<cmd>Telescope grep_string<cr>" },
--     { "<leader>fr", "<cmd>Telescope registers<cr>" },
--     { "<leader>ft", "<cmd>Telescope live_grep<cr>" },
--     { "<leader>fk", "<cmd>Telescope keymaps<cr>" },
--     { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({no_ignore=true})<cr>" },
--     { "<leader>f:", "<cmd>Telescope commands<cr>" },
--     { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
--     { "<leader>fH", "<cmd>Telescope highlights<cr>" },
--     { "<leader>fb", "<cmd>Telescope git_branches<cr>" },
--     { "<leader>fq", "<cmd>Telescope buffers<cr>" },
--     { "<leader>fj", "<cmd>Telescope jumplist<cr>" },
--     { "<leader>fs", "<cmd>SessionSearch<cr>" },
--     { "<leader>u", "<cmd>UndotreeToggle<CR>" },
--   })
