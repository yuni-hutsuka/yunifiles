# home-manager/common/default.nix
{
  # 設定ファイルのシンボリックリンク群。
  home.file = {
    "fonts" = {
      enable = true;
      target = ".local/share/fonts";
      source = ../../../../assets/fonts;
    };
    "gitconfig" = {
      enable = true;
      target = ".gitconfig";
      source = ../../../../configs/dots/.gitconfig;
    };
    "latexmkrc" = {
      enable = true;
      target = ".latexmkrc";
      source = ../../../../configs/dots/.latexmkrc;
    };
  };
}
