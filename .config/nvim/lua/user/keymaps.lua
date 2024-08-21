local keymaps = require("user.functions").keymaps

-- Remap space as leader key
    keymaps.map{"", "<Space>", "<Nop>"}
    vim.g.mapleader = " "
    --vim.g.maplocalleader = " "


-- Normal --
local normal_mode = {
    -- Resize with arrows
	{ "<C-Up>", "<cmd>resize +2<CR>" },
	{ "<C-Down>", "<cmd>resize -2<CR>" },
	{ "<C-Left>", "<cmd>vertical resize -2<CR>" },
	{ "<C-Right>", "<cmd>vertical resize +2<CR>" },

    -- Navigate buffers
	{ "<A-h>", "<cmd>e #<CR>" },
	{ "<A-l>", "<cmd>Telescope buffers<CR>" },
	{ "<A-j>", "<cmd>bnext<CR>" },
	{ "<A-k>", "<cmd>bprevious<CR>" },
	{ "<A-BS>", "<cmd>bdelete!<CR>" },
	{ "<A-w>", "<cmd>write!<CR>" },
	{ "<A-W>", "<C-w>wa!" },
	{ "<A-Q>", "<cmd>bufdo bwipeout<CR>" },

    -- Navigate Splits
    { "<A-H>", "<C-w>h" },
	{ "<A-J>", "<C-w>j" },
	{ "<A-K>", "<C-w>k" },
	{ "<A-L>", "<C-w>l" },
	-- { "<C-w>", "<C-w>w" },
	{ "<C-q>", "<cmd>close!<CR>" },


    -- Auto commenting toggles
	{ "<C-c>", "<cmd>ColorizerToggle<CR>" },
	{ "<leader>wf", "<cmd>lua vim.lsp.buf.format()<CR>" },

    -- Auto indent toggles
	{ "<C-i>", "<cmd>setlocal autoindent<CR>" },
	{ "<C-S>i", "<cmd>setlocal autoindent<CR>" },

    -- -- Transparency toggle
	{ "<C-t>", "<cmd>TransparentToggle<CR>" },

    -- Shellcheck and Spellcheck
	-- { "<C-s>", "<cmd>!clear && shellcheck %<CR>" },
	{ "<C-s>", "<cmd>setlocal spell! spelllang=en_us<CR>" },

    -- NvimTree
	{ "<C-n>", "<cmd>NvimTreeToggle<CR>" },

    -- Load different neovim configs
    { "<leader>sv", "<cmd>lua require'functions'.reload_nvim()<CR>"},
    { "<leader>sm", "<cmd>Pload main<CR>"},

	-- Nvim dap
	-- { "<leader>ds", ":vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-w>=', false, true, true), 'n', false)", { desc = 'Start/Stop'} },
	{ '<leader>dB', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>",{ desc = 'Breakpoint Condition' }},
	{ '<leader>db', "<cmd>lua require('dap').toggle_breakpoint()<cr>",{ desc = 'Toggle Breakpoint' }},
	{ '<leader>dc', "<cmd>lua require('dap').continue()<cr>",{ desc = 'Continue' }},
	{ '<leader>dC', "<cmd>lua require('dap').run_to_cursor()<cr>",{ desc = 'Run to Cursor' }},
	{ '<leader>dg', "<cmd>lua require('dap').goto_()<cr>",{ desc = 'Go to line (no execute)' }},
	{ '<leader>di', "<cmd>lua require('dap').step_into()<cr>",{ desc = 'Step Into' }},
	{ '<leader>dj', "<cmd>lua require('dap').down()<cr>",{ desc = 'Down' }},
	{ '<leader>dk', "<cmd>lua require('dap').up()<cr>",{ desc = 'Up' }},
	{ '<leader>dl', "<cmd>lua require('dap').run_last()<cr>",{ desc = 'Run Last' }},
	{ '<leader>do', "<cmd>lua require('dap').step_out()<cr>",{ desc = 'Step Out' }},
	{ '<leader>dO', "<cmd>lua require('dap').step_over()<cr>",{ desc = 'Step Over' }},
	{ '<leader>dp', "<cmd>lua require('dap').pause()<cr>",{ desc = 'Pause' }},
	{ '<leader>dr', "<cmd>lua require('dap').repl.toggle()<cr>",{ desc = 'Toggle REPL' }},
	{ '<leader>dS', "<cmd>lua require('dap').session()<cr>",{ desc = 'Session' }},
	{ '<leader>dt', "<cmd>lua require('dap').terminate()<cr>",{ desc = 'Terminate' }},
	{ '<leader>dw', "<cmd>lua require('dap.ui.widgets').hover()<cr>",{ desc = 'Widgets' }},
	{ '<leader>de', "<cmd>lua require('dapui').eval()<cr>",{ desc = 'Eval' }},
	{ '<leader>du', "<cmd>lua require('dapui').toggle({})<cr>",{ desc = 'Dap UI' }},
	{ "<leader>dv", ":DapVirtualTextToggle", desc = "Dap text" },

	-- Telescope
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>" },
    { "<leader>fl", "<cmd>Telescope resume<cr>" },
    { "<leader>fp", "<cmd>Telescope project<cr>" },
    { "<leader>fS", "<cmd>Telescope grep_string<cr>" },
    { "<leader>fr", "<cmd>Telescope registers<cr>" },
    { "<leader>ft", "<cmd>Telescope live_grep<cr>" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>" },
    { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({no_ignore=true})<cr>" },
    { "<leader>f:", "<cmd>Telescope commands<cr>" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
    { "<leader>fH", "<cmd>Telescope highlights<cr>" },
    { "<leader>fb", "<cmd>Telescope git_branches<cr>" },
    { "<leader>fq", "<cmd>Telescope buffers<cr>" },
    { "<leader>fj", "<cmd>Telescope jumplist<cr>" },
    { "<leader>u", "<cmd>UndotreeToggle<CR>" },
}


-- Insert
local insert_mode = {
    -- Move with h,j,k,l
	{ "<C-h>", "<Left>" },
	{ "<C-j>", "<Down>" },
	{ "<C-k>", "<Up>" },
	{ "<C-l>", "<Right>" },

	-- New line from insert
	{ "<C-o", "<Esc>o"}
}


-- Visual --
local visual_mode = {
-- Move text up and down + indent
	{ "<S-j>", ":m .+1<CR>==" },
	{ "<S-k>", ":m .-2<CR>==" },
	{ "<S-h>", "<gv" },
	{ "<S-l>", ">gv" },
    -- { "p", '"_dP' },
}


-- Visual Block --
local visual_block_mode = {
-- Move text up and down + indent
	{ "<S-j>", ":move '>+1<CR>gv-gv" },
	{ "<S-k>", ":move '<-2<CR>gv-gv" },
	{ "<S-h>", "<gv" },
	{ "<S-l>", ">gv" },
}


-- Terminal --
local term_mode = {
-- Better terminal navigation
	{ "<C-h>", "<C-\\><C-N><C-w>h" },
	{ "<C-j>", "<C-\\><C-N><C-w>j" },
	{ "<C-k>", "<C-\\><C-N><C-w>k" },
	{ "<C-l>", "<C-\\><C-N><C-w>l" },
}




for _, list in ipairs(normal_mode) do
    keymaps.nmap(list)
end
for _, list in ipairs(insert_mode) do
    keymaps.imap(list)
end
for _, list in ipairs(visual_mode) do
    keymaps.vmap(list)
end
for _, list in ipairs(visual_block_mode) do
    keymaps.xmap(list)
end
for _, list in ipairs(term_mode) do
    keymaps.tmap(list)
end
