{
  description = "khanhdq nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";

    # hardware
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # home-manager, used for managing user configuration.
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";
  };

  outputs = {
    catppuccin,
    home-manager,
    nixos-hardware,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux";

    hostname = "legendary";
    username = "dqk";

    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      ${hostname} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit username;
          inherit hostname;
          inherit nixos-hardware;
        };
        modules = [
          ./nixos/configuration.nix
          ./users
        ];
      };
    };

    homeConfigurations = {
      ${username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {
          inherit catppuccin;
          inherit username;
        };
        modules = [./home/home.nix];
      };
    };
  };
}
