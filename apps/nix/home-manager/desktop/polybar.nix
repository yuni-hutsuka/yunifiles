{
  services.polybar = {
    enable = true;
    script = ''
    '';
  };

  home.file = {
    "bitmap - root" = {
      enable = true;
      source = ../../../../configs/dotconfigs/polybar/bitmap;
      target = ".config/polybar";
    };
  };
}
