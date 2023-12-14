local plugin = {
   {
      "nvim-lualine/lualine.nvim",
      config = function()
         local function skkmode()
            if vim.call('eskk#is_enabled') == 1 then
               return vim.g['eskk#statusline_mode_strings'][vim.call('eskk#get_mode')]
            else
               return ''
            end
         end

         vim.api.nvim_create_autocmd('user', {
            pattern = 'eskk-initialize-post',
               callback = function()
               require('lualine').setup({
                  sections = {
                     lualine_c = { 'filename', skkmode },
                  },
               })
            end,
         })

         require("lualine").setup({
            options = {
               icons_enabled = true,
               theme = "horizon",
               -- component_separators = { left = "", right = "" },
               -- section_separators = { left = "", right = "" },
               disabled_filetyles = {
                  statusline = {},
                  winbar = {}
               },
               ignore_focus = {},
               always_divide_middle = true,
               globalstatus = false,
               refresh = {
                  statusline = 1000,
                  tabline = 1000,
                  winbar = 1000
               },
            },
            sections = {
               lualine_a = {"mode"},
               lualine_b = {"branch", "diff", "diagnostics"},
               lualine_c = {"filename"},
               lualine_x = {"encoding", "fileformat", "filetype"},
               lualine_y = {"progress"},
               lualine_z = {"location"}
            },
            inactive_sections = {
               lualine_a = {},
               lualine_b = {},
               lualine_c = {"filename"},
               lualine_x = {"location"},
               lualine_y = {},
               lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
         })
      end
   }
}

return plugin
