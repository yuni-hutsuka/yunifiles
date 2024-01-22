# home-manager/tools/default.nix
{ pkgs, ... }: {
  # packages
  home.packages = with pkgs; [
    bat           # cat alternative
    eza           # ls alternative
    helix         # editor
    evince        # PDF Viewer
    git           # git
    gitflow       # git flow
    poppler_utils # pdf utilities
    gnumake       # GNU Make
    zip           # zip
    unzip         # unzip
    wget          # wget
  ];

  # Nix側で設定を幾らか施すもの
  imports = [
    ./zsh.nix
    ./starship.nix
    ./neovim.nix
  ];
}
