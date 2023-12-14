{ pkgs, ... }: {
  services.xserver = {
    enable = true;

    displayManager = {
      defaultSession = "none+xmonad";

      lightdm = {
        enable = true;
        background = ../../assets/wallpapers/wallpaper_pixiv_moon_and_stars.jpg;
        greeters.gtk = {
          enable   = true;

          clock-format = "%H:%M";
          indicators = [
            "~clock"
            "~spacer"
            "~spacer"
            "~spacer"
            "~power"
          ];

          theme = {
            name = "Tokyonight-Dark-B";
            package = pkgs.tokyo-night-gtk;
          };

          extraConfig = ''
          '';
        };
      };
    };

    windowManager = {
      xmonad = {
        enable = true;
        enableContribAndExtras = true;
      };
    };
  };

  services.picom.enable = true;
}
