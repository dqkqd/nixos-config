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

    nixcats.url = "path:./nixcats";
  };

  outputs = {
    catppuccin,
    home-manager,
    nixos-hardware,
    nixpkgs,
    nixpkgs-unstable,
    nixcats,
    ...
  }: let
    system = "x86_64-linux";

    hostname = "legendary";
    username = "dqk";

    pkgs = nixpkgs.legacyPackages.${system};
    pkgsUnstable = nixpkgs-unstable.legacyPackages.${system};
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
          inherit pkgsUnstable;
          inherit nixcats;
        };
        modules = [./home/home.nix];
      };
    };
  };
}
