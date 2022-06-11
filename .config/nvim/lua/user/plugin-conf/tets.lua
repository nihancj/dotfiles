local opts = {"dsdads", "abc", "ddd"}

local function is_active(string)
	for key, value in pairs(opts) do
		if value == string then
			return key
		end
	end
	return false
end

print(is_active("dd"))
print(is_active("ddd"))
