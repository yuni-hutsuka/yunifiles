# home-manager/apps/default.nix
{ pkgs, ...}: {
  imports = [
    ./discord.nix
    ./vivaldi.nix
    ./wezterm.nix
    ./vscode.nix
  ];
}
