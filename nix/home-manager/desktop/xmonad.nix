{ pkgs, ... }: {
  home.packages = with pkgs; [
    haskellPackages.xmobar
  ];

  home.file = {
    "xmobarrc" = {
      enable = false;
      source = ../../../../configs/dots/xmobarrc.hs;
      target = ".xmobarrc";
    };
  };

  xsession = {
    enable = true;

    windowManager = {
      xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = hp: [
          hp.dbus
          hp.monad-logger
        ];
        config = ../../../../configs/dots/xmonad/config.hs;
      };
    };
  };
}
