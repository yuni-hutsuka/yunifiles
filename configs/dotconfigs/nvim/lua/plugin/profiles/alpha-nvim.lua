local plugin = {
   {
      "goolord/alpha-nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
         local alpha = require'alpha'
         local dashboard = require'alpha.themes.dashboard'
         dashboard.section.header.val = {
            [[ ⠀⠀⠀⠀⠀⠀   ⠀⢀⡠⠔⠚⠉⠩⠍⠩⠍⢩⣶⣦⣤⡀   ⠀⠀⠀⠀⠀⠀⠀ ]],
            [[ ⠀⠀⠀⠀   ⠀⡠⡲⠑⢈⣨⠵⠊⠁⠀⠀⠀⠈⠲⢌⡻⣿⣶⣄   ⡀⠀⠀⠀⠀ ]],
            [[ ⠀⠀⠀   ⣠⡾⠊⠈⠉⠉⣑⣀⣀⠀⠀⠀⠀⠀⡶⢄⡈⢻⣿⠟⠻⣄   ⠀⠀⠀ ]],
            [[ ⠀   ⠀⡐⡑⠁⢀⠏⢠⢞⠕⠚⠉⢻⣏⠀⠀⠀⠑⠀⢱⠀⠉⢇⠀⢹⣦⠀   ⠀ ]],
            [[    ⠀⠰⣼⠀⠀⠀⢰⡎⠁⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠃⠀⠀⠈⠘⡟⢿⡇⠀    ]],
            [[    ⠀⢷⡿⢰⠓⠀⠀⢣⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠐⠀⢄⠄⠄⢣⣸⡿⠀    ]],
            [[    ⠘⣸⠁⠸⠔⢀⡀⠀⠳⠦⢤⡶⠂⠀⠀⠀⠀⠀⠀⠀⠀⡀⠣⡆⠀⣿⣷⠂    ]],
            [[    ⠀⣿⠀⠀⠀⠈⠁⠀⠀⠀⠀⠓⠀⠀⠀⠀⠀⠀⠀⠐⠁⠀⣀⢀⠿⢿⣿⠀    ]],
            [[ ⠀   ⠸⡇⢀⠀⠀⡀⠀⠀⠀⠀⢄⠀⠀⠀⡄⠀⠀⠀⠀⢀⡞⢁⠄⠀⣼⡇   ⠀ ]],
            [[ ⠀⠀   ⠻⡌⢆⠰⡠⠐⠈⠀⣤⠜⠒⢢⠀⠀⠀⠢⠄⢀⣈⣄⢾⢴⡿⡟⠀   ⠀ ]],
            [[ ⠀⠀⠀   ⠹⣌⡿⢄⠀⠀⠀⠣⣄⢀⠶⠃⠀⢀⣀⣀⣤⣿⢿⣶⣯⠊⠀⠀   ⠀ ]],
            [[ ┌──────────────────────┐   ／l、   ]],
            [[ │ Fly me to the moon ♪ ├ （ﾟv ｡７  ]],
            [[ └──────────────────────┘   l  ~ヽ  ]],
            [[                           じしf_)ノ]],
         }


         dashboard.section.buttons.val = {
            dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
         }
         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune

         dashboard.config.opts.noautocmd = true

         vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
      end
   }
}

return plugin
