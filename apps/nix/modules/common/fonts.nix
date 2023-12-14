{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
      nerdfonts
    ];
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif     = [ "Shippori Mincho" "Noto Color Emoji" ];
        sansSerif = [ "HackGen Console NFJ" "Noto Color Emoji" ];
        monospace = [ "HackGen Console NFJ" "Noto Color Emoji" ];
        emoji     = [ "Noto Color Emoji" ];
      };
    };
  };
}
