local plugin = {
   {
      "nvim-telescope/telescope.nvim",
      tag = '0.1.3',
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
         require("telescope").setup({
            defaults = {
               hidden = true,
               ignore = true,
               leayout_config = {
                  vertcal = {
                     width = 0.6
                  }
               }
            },
            pickers = {
               find_files = {
                  theme = "dropdown"
               }
            }
         })
      end
   }
}

return plugin
