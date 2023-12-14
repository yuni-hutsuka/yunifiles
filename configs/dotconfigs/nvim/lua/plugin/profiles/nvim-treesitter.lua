local plugin = {
   {
      "nvim-treesitter/nvim-treesitter",
      config = function()
         require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "rust", "rust", "latex", "markdown", "javascript", "typescript"},
            sync_install = false,
            auto_install = true,
            ignore_install = {},
            highlight = {
               enable = true,
               disable = {},
            },
            additional_vim_regex_highlighting = false,
         })
      end
   }
}

return plugin
