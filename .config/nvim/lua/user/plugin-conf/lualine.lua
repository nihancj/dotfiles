local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
    return vim.o.columns > 100 end


local mode = { --{{{
	"mode",
	-- function(str)
	--   return "   "
	-- end,
	fmt = function(str)
		if (str == 'NORMAL') then
			return "   "
		end if (str == 'INSERT') then
			return "   "
		end if (str:sub(1,1) == 'V') then
			return "   "
		end
		return str
	end,
    padding = { left = 0, right = 0 },
    color = {},
    cond = nil,
}
--}}}

local branch = { --{{{
	"branch",
	icons_enabled = true,
	icon = "",
}
--}}}


local filename = { --{{{
    'filename',
    file_status = true, -- displays file status (read only, modified)
    path = 1,  -- 0 = just filename, 1 = relative path, 2 = absolute path
}
--}}}

local diff = { --{{{
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}
--}}}


local diagnostics = { --{{{
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}
--}}}


local encoding = { --{{{
    "o:encoding",
    fmt = string.upper,
    color = {},
    cond = hide_in_width
}
--}}}

local filetype = { --{{{
	"filetype",
	icons_enabled = false,
	icon = nil,
}
--}}}

-- local lsp = { --{{{
--     function(msg)
--         msg = msg or "LS Inactive"
--         local buf_clients = vim.lsp.buf_get_clients()
--         if next(buf_clients) == nil then
--         -- TODO: clean up this if statement
--             if type(msg) == "boolean" or #msg == 0 then
--                 return "LS Inactive"
--             end
--             return msg
--         end
--         local buf_ft = vim.bo.filetype
--         local buf_client_names = {}
--
--         -- add client
--         for _, client in pairs(buf_clients) do
--             if client.name ~= "null-ls" then
--                 table.insert(buf_client_names, client.name)
--             end
--         end
--
--         -- add formatter
--         local formatters = require "plugins.null-ls.formatters"
--         local supported_formatters = formatters.list_registered(buf_ft)
--         vim.list_extend(buf_client_names, supported_formatters)
--
--         -- add linter
--         local linters = require "plugins.null-ls.linters"
--         local supported_linters = linters.list_registered(buf_ft)
--         vim.list_extend(buf_client_names, supported_linters)
--
--         local unique_client_names = vim.fn.uniq(buf_client_names)
--         return "[" .. table.concat(unique_client_names, ", ") .. "]"
--     end,
--     separator = nil,
--     color = { gui = "bold" },
--     cond = hide_in_width,
-- }
--}}}

local treesitter = { --{{{
    function()
        return ""
    end,
    color = function()
        local buf = vim.api.nvim_get_current_buf()
        local ts = vim.treesitter.highlighter.active[buf]
        return { fg = ts and not vim.tbl_isempty(ts) and "green" or "#ec5f67" }
    end,
    cond = hide_in_width,
}
--}}}

local progress = { --{{{
"progress",
fmt = function()
  return "%P/%L"
end,
color = {},
}
--}}}

-- local progress_bar = function() --{{{
-- 	local current_line = vim.fn.line(".")
-- 	local total_lines = vim.fn.line("$")
-- 	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
-- 	local line_ratio = current_line / total_lines
-- 	local index = math.ceil(line_ratio * #chars)
-- 	return chars[index]
-- end
--}}}

-- local spaces = function() --{{{
-- 	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
-- end
--}}}

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
        lualine_a = { mode },
        lualine_b = { "branch" },
		lualine_c = { filename, "diagnostics" },
        lualine_x = { encoding, treesitter, filetype },
        lualine_y = { "location" },
        lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
