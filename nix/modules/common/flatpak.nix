{ pkgs, ... }: {
  services.flatpak.enable = false;
  xdg.portal = {
    enable = false;
    extraPortals = [
      "xdg-desktop-portal-gtk"
    ];
  };
}
