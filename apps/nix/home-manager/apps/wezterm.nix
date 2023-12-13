# home-manager/apps/wezterm.nix
{
  programs = {
    wezterm = {
      enable = true;
      extraConfig = builtins.readFile ../../../../configs/dots/.wezterm.lua;
    };
  };
}
