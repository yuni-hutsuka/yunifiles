# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  inputs,
  config,
  pkgs,
  hostname,
  username,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    ../../modules/common
    ../../modules/devices
    ../../modules/inputmethod
    ../../modules/localize
    ../../modules/desktop
  ]
  ++ (with inputs.nixos-hardware.nixosModules; [
    common-cpu-intel
    common-gpu-intel
    common-pc-ssd
  ]);

 # Bootloader.
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking.hostName = hostname;

  users.users."${username}" = {
    isNormalUser = true;
    description = "yuni hutsuka";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
    ];
    shell = pkgs.zsh;
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Don't touch this
  system.stateVersion = "23.05";
}
