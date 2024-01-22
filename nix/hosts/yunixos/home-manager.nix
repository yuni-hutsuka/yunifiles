{
  pkgs,
  ...
}: {
  imports = [
    ../../home-manager/common
    ../../home-manager/tools
    ../../home-manager/languages
    ../../home-manager/apps
    ../../home-manager/desktop
  ];
}
