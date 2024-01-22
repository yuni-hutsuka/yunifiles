# home-manager/apps/vivaldi.nix
{ pkgs, ... }: {
  home.packages = with pkgs; [
    vivaldi
  ];
}
