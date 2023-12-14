local plugin = {
   {
      "glepnir/template.nvim",
      cmd = { 'Template', 'TemProject' },
      config = function()
         require("template").setup({
            temp_dir = "~/.config/nvim/assets/templates",
         })
      end
   }
}

return plugin
