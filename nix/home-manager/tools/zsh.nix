# home-manager/tools/zsh.nix
{
  programs = {
    zsh = {
      enable = true;
      autocd = true;
      enableCompletion      = true;
      enableAutosuggestions = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        cat  = "bat";
        ls   = "exa --icons --classify --long --sort=type --git";
        la   = "exa --icons --classify --long --sort=type --git --all";
        tree = "exa --icons --classify --long --sort=type --git --all --tree --level=3";
      };
    };
  };
}
