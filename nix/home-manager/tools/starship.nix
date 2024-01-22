# home-manager/tools/starship.toml
{
  programs = {
    starship = {
      enable = true;
      settings = {
        format = "$all$fill$time$line_break$character";
        right_format = "";
        continuation_prompt = " ";
        scan_timeout = 30;
        command_timeout = 500;
        add_newline = true;

        time = {
          format = "[$time]($style) ";
          style = "bold yellow";
          use_12hr = false;
          disabled = false;
          utc_time_offset = "local";
          time_range = "-";
        };

        line_break = {
          disabled = false;
        };

        character = {
          format = "$symbol ";
          success_symbol = "[❯ ](bold yellow)";
          error_symbol = "[❯ ](bold purple)";
          vimcmd_symbol = "[❮ ](bold orange)";
          vimcmd_visual_symbol = "[❮ ](bold yellow)";
          vimcmd_replace_symbol = "[❮ ](bold purple)";
          vimcmd_replace_one_symbol = "[❮ ](bold purple)";
          disabled = false;
        };
      };
    };
  };
}
