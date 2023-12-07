local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter-blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch-stable",
      lazypath,
   })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {}

local plugin_load = {
   require("plugin.profiles.tokyonight"),
   require("plugin.profiles.gitsigns"),
   require("plugin.profiles.zen-mode"),
   require("plugin.profiles.nvim-tree"),
   require("plugin.profiles.lualine"),
   require("plugin.profiles.telescope"),
   require("plugin.profiles.alpha-nvim"),
   require("plugin.profiles.nvim-treesitter"),
   require("plugin.profiles.flote"),
   require("plugin.profiles.template"),
--   require("plugin.profiles.vim-markdown")
}

for _, t in pairs(plugin_load) do
   for _, p in pairs(t) do
      table.insert(plugins, p)
   end
end

require("lazy").setup(plugins, { checker = {} })
