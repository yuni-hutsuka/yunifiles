# home-manager/apps/discord.nix
{ pkgs, ... }: {
  home.packages = with pkgs; [
    discord
  ];
}
