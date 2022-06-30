local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
--vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Resize with arrows
keymap("n", "<C-Up>", "<cmd>resize +2<CR>", opts)
keymap("n", "<C-Down>", "<cmd>resize -2<CR>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<A-l>", "<cmd>bnext<CR>", opts)
keymap("n", "<A-h>", "<cmd>bprevious<CR>", opts)
keymap("n", "<A-q>", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<A-w>", "<cmd>write!<CR>", opts)
keymap("n", "<A-W>", "<C-w>wa!", opts)

-- Navigate Splits
keymap("n", "<A-H>", "<C-w>h", opts)
keymap("n", "<A-J>", "<C-w>j", opts)
keymap("n", "<A-K>", "<C-w>k", opts)
keymap("n", "<A-L>", "<C-w>l", opts)
keymap("n", "<C-w>", "<C-w>w", opts)
keymap("n", "<A-Q>", "<cmd>close!<CR>", opts)


-- Auto commenting toggles
keymap("n", "<C-c>", "<cmd>ColorizerToggle<CR>", opts)
-- keymap("n", "<C-S>c", "<cmd>setlocal formatoptions=cro<CR>", opts)

-- Auto indent toggles
keymap("n", "<C-i>", "<cmd>setlocal autoindent<CR>", opts)
keymap("n", "<C-S>i", "<cmd>setlocal autoindent<CR>", opts)

-- -- Transparency toggle
keymap("n", "<C-S>t", "<cmd>TransparentToggle<CR>", opts)

-- Shellcheck and Spellcheck
keymap("n", "<C-s>", "<cmd>!clear && shellcheck %<CR>", opts)
keymap("n", "<C-S>s", "<cmd>setlocal spell! spelllang=en_us<CR>", opts)

-- Nvim Tree
keymap("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", "<cmd>NvimTreeRefresh<CR>", opts)

--TeleScope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fl", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fgb", "<cmd>Telescope git_branch<CR>", opts)
keymap("n", "<leader>fgc", "<cmd>Telescope git_commit<CR>", opts)
keymap("n", "<leader>fgs", "<cmd>Telescope git_status<CR>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope project<CR>", opts)
keymap("n", "<leader>f<space>", ":Telescope ", { noremap = true })


-- Insert
-- Move with h,j,k,l
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)



-- Visual --
-- Move text up and down + indent
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "<S-h>", "<gv", opts)
keymap("v", "<S-l>", ">gv", opts)
-- keymap("v", "p", '"_dP', opts)


-- Visual Block --
-- Move text up and down + indent
keymap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)
keymap("v", "<S-h>", "<gv", opts)
keymap("v", "<S-l>", ">gv", opts)


-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
