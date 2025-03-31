local keymaps = require("user.functions").keymaps

-- Remap space as leader key
keymaps.map("", { "<Space>", "<Nop>" })

local modes = { "n", "i", "v", "x", "t" }
local maps = {

{
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


	-- Colorizer toggle
	{ "<C-c>", "<cmd>ColorizerToggle<CR>" },

	-- Transparency toggle
	{ "<C-t>", "<cmd>TransparentToggle<CR>" },

	-- Spellcheck
	{ "<C-s>", "<cmd>setlocal spell! spelllang=en_us<CR>" },

	-- NvimTree
	{ "<C-n>", "<cmd>NvimTreeToggle<CR>" },
},


-- Insert mode
{
	-- Move with h,j,k,l
	{ "<C-h>", "<Left>" },
	{ "<C-j>", "<Down>" },
	{ "<C-k>", "<Up>" },
	{ "<C-l>", "<Right>" },

	-- New line from insert
	{ "<C-o", "<Esc>o"}
},


-- Visual mode
{
	-- Move text up and down + indent
	{ "<S-j>", ":m .+1<CR>==" },
	{ "<S-k>", ":m .-2<CR>==" },
	{ "<S-h>", "<gv" },
	{ "<S-l>", ">gv" },
	-- { "p", '"_dP' },
},


-- Visual block mode
{
	-- Move text up and down + indent
	{ "<S-j>", ":move '>+1<CR>gv-gv" },
	{ "<S-k>", ":move '<-2<CR>gv-gv" },
	{ "<S-h>", "<gv" },
	{ "<S-l>", ">gv" },
},


-- Command mode
{
	-- Better terminal navigation
	{ "<C-h>", "<C-\\><C-N><C-w>h" },
	{ "<C-j>", "<C-\\><C-N><C-w>j" },
	{ "<C-k>", "<C-\\><C-N><C-w>k" },
	{ "<C-l>", "<C-\\><C-N><C-w>l" },
},
}


for index, mode in ipairs(modes) do
	for _, mappings in ipairs(maps[index]) do
		keymaps.map(mode, mappings)
	end
end
