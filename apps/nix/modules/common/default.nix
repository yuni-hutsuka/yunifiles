{ pkgs, ... }: {
  imports = [
    ./flatpak.nix
    ./fonts.nix
    ./networking.nix
    ./nix.nix
    ./sound.nix
    ./virtualization.nix
  ];

  programs = {
    zsh.enable = true;
  };
}
