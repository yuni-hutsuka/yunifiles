-- options.lua

local options = {
   encoding = "utf-8",
   fileencoding = "utf-8",
   fileformats = "unix",
   backup = false,
   swapfile = false,
   undofile = false,
   whichwrap = "<,>,[,],h,l,b,s,~",
   ignorecase = true,
   smartcase = true,
   incsearch = true,
   expandtab = true,
   smartindent = true,
   autoindent = true,
   number = true,
   relativenumber = false,
   numberwidth = 6,
   showmode = false,
   showtabline = 2,
   title = false,
   scrolloff = 5,
}

for key, value in pairs(options) do
   vim.opt[key] = value
end
