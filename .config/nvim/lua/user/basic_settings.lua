local settings = {
	clipboard = "unnamedplus",                  -- allows neovim to access the system clipboard
	splitbelow = true,                          -- force all horizontal splits to go below current window
	splitright = true,                          -- force all vertical splits to go to the right of current window
	termguicolors = true,                       -- set term gui colors (most terminals support this)
	number = true,                              -- set numbered lines
	relativenumber = true,                      -- set relative numbered lines
	numberwidth = 4,                            -- set number column width to 2 {default 4}
	--    autoindent = false,                         -- auto indent
	--    expandtab = false,                          -- convert tabs to spaces (if true, sw is used instead  of ts)
	tabstop = 4,                                -- tab width when >> is pressed
	softtabstop = 4,                            -- tab width when in insert mode
	shiftwidth = 4,                             -- space width when >> is pressed (if expandtab is true)
	--    conceallevel = 0,                           -- so that `` is visible in markdown files
	--    smartindent = false,						-- make indenting smarter again
	ignorecase = true,                          -- ignore case in search patterns
	smartcase = true,                           -- smart case
	showmode = false,                           -- we don't need to see things like -- INSERT -- anymore
	--    showcmd = true,
	hlsearch = true,                            -- Clear search highlight after searching on false
	mouse = '',                                -- allow the mouse to be used in neovim
	mousemodel = "extend",
	--    pumheight = 10,                             -- pop up menu height
	signcolumn = "yes",                         -- always show the sign column, otherwise it would shift the text each time
	wildmode = {"longest:full", "full"},       -- Good command completion
	--    completeopt = { "menuone", "noselect" },    -- mostly just for cmp
	--    -- foldmethod = "marker",                      -- Syntax, indent, manual, mark, diff
	laststatus = 3,                             -- global status line
	scrolloff = 8,                              -- Start scrolling up or down upon reaching the nth line
	guifont = "Fira Code:h14",
	-- foldcolumn = '0',								-- 0 to disable. More than 1 is not necessary
	-- foldlevel = 99,								-- Using ufo provider need a large value, feel free to decrease the value
	-- foldlevelstart = 99,
}

-- vim.opt.shortmess:append "c"
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

for k, v in pairs(settings) do
	vim.opt[k] = v
end
