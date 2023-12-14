# home-manager/desktop/rofi.nix
{ pkgs, ... }: {
  home.packages = with pkgs; [
    rofi
  ];

  home.file = {
    "rofi files - root" = {
      enable = true;
      source = ../../../../configs/dotconfigs/rofi/files;
      target = ".config/rofi";
    };
  };

  programs.rofi = {
    enable = false;
    terminal = "wezterm";
  };
}
