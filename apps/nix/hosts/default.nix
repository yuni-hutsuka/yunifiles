inputs:
  let
    YuNixosSystem = {
      system,
      hostname,
      username,
      modules,
    }:
      inputs.nixpkgs.lib.nixosSystem {
        inherit system modules;
        specialArgs = {
          inherit inputs hostname username;
        };
        #pkgs = import inputs.nixpkgs {
        #  config = {
        #   allowUnfree = true;
        #   packageOverrides = pkgs: {
        #     nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
        #       inherit pkgs;
        #     };
        #   };
        # };
        #};
      };
    YuNixHomeManagerConfiguration = {
      system,
      username,
      overlays,
      modules,
    }:
      inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          inherit system overlays;
          config.allowUnfree = true;
          config.packageOverrides = pkgs: {
            nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
              inherit pkgs;
            };
          };
        };
        extraSpecialArgs = {
          inherit inputs username;
        };
        modules =
          modules
          ++ [
            {
              home = rec {
                inherit username;
                homeDirectory = "/home/${username}";
                stateVersion = "23.05";
              };

              programs.home-manager.enable = true;
            }
          ];
      };
  in {
    nixos = {
      yunixos = YuNixosSystem {
        system = "x86_94-linux";
        hostname = "yunixos";
        username = "yunih";
        modules = [
          ./yunixos/configuration.nix
        ];
      };
    };

    home-manager = {
      "yunih@yunixos" = YuNixHomeManagerConfiguration {
        system = "x86_64-linux";
        username = "yunih";
        overlays = [(import inputs.rust-overlay)];
        modules = [
          ./yunixos/home-manager.nix
        ];
      };
      "ubuntu" = YuNixHomeManagerConfiguration {
        system = "x86_64-linux";
        username = "yunih";
        overlays = [(import inputs.rust-overlay)];
        modules = [
          ./ubuntu/home-manager.nix
        ];
      };
    };
  }
