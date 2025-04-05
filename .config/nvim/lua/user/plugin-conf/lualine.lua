local hide_in_width = function()
    return vim.o.columns > 100 end

local treesitter = {
    function()
        return "󰐅"
    end,
    color = function()
        local buf = vim.api.nvim_get_current_buf()
        local ts = vim.treesitter.highlighter.active[buf]
        return { fg = ts and not vim.tbl_isempty(ts) and "green" or "#ec5f67" }
    end,
    cond = hide_in_width,
}

local progress = {
"progress",
fmt = function()
  return "%P/%L"
end,
color = {},
}

local mode = {
	"mode",
	-- function(str)
	--   return "   "
	-- end,
	fmt = function(str)
		if (str == 'NORMAL') then
			return " "
		end if (str == 'INSERT') then
			return " "
		end if (str:sub(1,1) == 'V') then
			return " "
		end
		return str
	end,
    -- padding = { left = 0, right = 0 },
    color = {},
    cond = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}


local filename = {
    'filename',
    file_status = true, -- displays file status (read only, modified)
    path = 1,  -- 0 = just filename, 1 = relative path, 2 = absolute path
}


local diff = {
	"diff",
	colored = true,
	cond = hide_in_width
}


local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}


local encoding = {
    "o:encoding",
    fmt = string.upper,
    color = {},
    cond = hide_in_width
}


return {
  options = {
    icons_enabled = true,
    theme = 'auto',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = { mode },
    -- lualine_b = { branch, diff, 'diagnostics'},
    lualine_b = { branch, 'diagnostics'},
    lualine_c = { filename },
    lualine_x = { encoding, treesitter, 'filetype'},
    lualine_y = {'location'},
    lualine_z = { progress },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = { branch },
    lualine_c = { filename },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
