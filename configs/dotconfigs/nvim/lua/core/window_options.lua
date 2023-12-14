-- window_options.lua

local window_options = {
   list = true,
   wrap = false
}

for key, value in pairs(window_options) do
   vim.wo[key] = value
end
