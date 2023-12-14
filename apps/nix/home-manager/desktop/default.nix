# home-manager/desktop/default.nix
# ウィンドウマネージャなどricingに関わる諸設定
{
  imports = [
    ./xmonad.nix
    ./rofi.nix
    ./picom.nix
    ./polybar.nix
    ./im.nix
  ];
}
