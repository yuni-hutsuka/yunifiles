# home-manager/languages/default.nix
{ pkgs, ... }: {
  home.packages = with pkgs; [
    rust-bin.stable.latest.default # rust-toolchain
    gcc                            # c
    texlive.combined.scheme-full   # tex/latex
    nodejs                         # Node.js
    deno                           # deno
    ghc                            # Glasgow Haskell Compiler
  ];
}
