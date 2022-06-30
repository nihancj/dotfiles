local settings = {
    clipboard = "unnamedplus",                  -- allows neovim to access the system clipboard
    splitbelow = true,                          -- force all horizontal splits to go below current window
    splitright = true,                          -- force all vertical splits to go to the right of current window
    termguicolors = true,                       -- set term gui colors (most terminals support this)
    number = true,                              -- set numbered lines
    relativenumber = true,                      -- set relative numbered lines
    numberwidth = 4,                            -- set number column width to 2 {default 4}
    tabstop = 4,                                -- insert 2 spaces for a tab
    softtabstop = 4,                            -- insert 2 spaces for a tab
    shiftwidth = 4,                             -- the number of spaces inserted for each indentation
    conceallevel = 0,                           -- so that `` is visible in markdown files
    -- smartindent = true,                         -- make indenting smarter again
    autoindent = true,                          -- auto indent
    expandtab = true,                           -- convert tabs to spaces
    ignorecase = true,                          -- ignore case in search patterns
    smartcase = true,                           -- smart case
    showmode = false,                            -- we don't need to see things like -- INSERT -- anymore
    showcmd = true,
    mouse = 'a',                                -- allow the mouse to be used in neovim
    pumheight = 10,                             -- pop up menu height
    signcolumn = "yes",                         -- always show the sign column, otherwise it would shift the text each time
    wildmode = { "longest", "list", "full" },   -- Good command completion
    completeopt = { "menuone", "noselect" },    -- mostly just for cmp
    foldmethod = "marker",                      -- Syntax, indent, manual, mark, diff
    laststatus = 3,                             -- global status line
    hlsearch = true,                            -- Clear search highlight after searching on false
    scrolloff = 8,                              -- Start scrolling up or down upon reaching the nth line
}

vim.opt.shortmess:append "c"

for k, v in pairs(settings) do
	vim.opt[k] = v
end

-- vim.cmd [[set formatoptions-=c formatoptions-=r formatoptions-=o]] -- this doesn't seem to work ; disable auto commenting
-- vim.cmd "set whichwrap+=<,>,[,],h,l" -- Connects end of a line to next line
-- vim.cmd [[set iskeyword+=-]] -- treats 'some-thing' as one word
