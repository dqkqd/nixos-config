{
  description = "khanhdq nixos configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "nixpkgs/nixpkgs-unstable";

    # hardware
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # home-manager, used for managing user configuration.
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";

    nixvim-config.url = "path:./nixvim";
  };

  outputs = {
    home-manager,
    nixos-hardware,
    ...
  } @ inputs: let
    system = "x86_64-linux";

    hostname = "legendary";
    username = "dqk";

    pkgs = inputs.nixpkgs.legacyPackages.${system};
    pkgsUnstable = inputs.nixpkgs-unstable.legacyPackages.${system};
  in {
    nixosConfigurations = {
      ${hostname} = inputs.nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs hostname username;
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
          inherit inputs pkgsUnstable username;
        };
        modules = [./home/home.nix];
      };
    };
  };
}
