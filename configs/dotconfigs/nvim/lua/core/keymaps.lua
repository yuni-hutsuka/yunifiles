-- keymaps.lua

local mode_nv = { 'n', 'v' }
local options = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set(mode_nv, 'gg', 'gg', options)
vim.keymap.set(mode_nv, 'ge', 'G', options)
vim.keymap.set(mode_nv, 'gh', '^', options)
vim.keymap.set(mode_nv, 'gl', '$', options)
vim.keymap.set('i', '<c-k>', '<c-p>', options)
vim.keymap.set('i', '<c-j>', '<c-n>', options)
vim.keymap.set('i', '<c-a>', '<c-o>^', options)
vim.keymap.set('i', '<c-e>', '<c-o>$', options)
vim.keymap.set('i', '<c-p>', '<Up>', options)
vim.keymap.set('i', '<c-n>', '<Down>', options)
vim.keymap.set('i', '<c-f>', '<Right>', options)
vim.keymap.set('i', '<c-b>', '<Left>', options)
vim.keymap.set('i', '<c-h>', '<BS>', options)
vim.keymap.set('i', '<c-d>', '<DEL>', options)

-- plugin keymap
vim.keymap.set(mode_nv, "<leader>ff", ":Telescope find_files hidden=true <CR>", options)
vim.keymap.set(mode_nv, "<leader>t", ":NvimTreeToggle<CR>", options)
--vim.keymap.set('i', '<c-g>', "<Plug>(skkeleton-enable)", options)
vim.keymap.set('i', '<c-g>', "<Plug>(eskk:toggle)", options)
