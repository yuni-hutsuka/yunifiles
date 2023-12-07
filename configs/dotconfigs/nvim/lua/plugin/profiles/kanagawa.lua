local plugin = {
   {
      "rebelot/kanagawa.nvim",
      lazy = false,
      config = function()
         require("kanagawa").setup({
            compile = true,
            undercurl = true,
            commentStyle = { italic = false },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,
            dimInactive = false,
            terminalColors = true,
            colors = {
               palette = {},
               theme = {
                  wave = {},
                  lotus = {},
                  dragon = {},
                  all = {}
               }
            },
            overrides = function(colors)
               return {}
            end,
            theme = "dragon",
            background = {
               dark = "dragon",
               light = "lotus"
            }
         })

         vim.cmd("colorscheme kanagawa")
      end
   },
}

return plugin
