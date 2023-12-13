# home-manager/tools/neovim.nix
{ pkgs, ... }: {
  home.file = {
    "neovim" = {
      enable = true;
      source = ../../../configs/dotconfigs/nvim;
      target = ".config/nvim";
    };
  };

  programs = {
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      plugins = with pkgs.vimPlugins; [
        lazy-nvim
      ];
    };
  };
}
