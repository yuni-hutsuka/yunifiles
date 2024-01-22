{
  services.picom = {
    enable = true;

    backend = "glx";

    activeOpacity   = 0.95;
    inactiveOpacity = 0.65;
    menuOpacity     = 0.95;

    settings = {
      border-width = 8;
      round-borders = 5;
      corner-radius = 15;
    };

    opacityRules = [
      "90:class_g *?= 'rofi'"
    ];
  };
}
