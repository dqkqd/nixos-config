system:
  sudo nixos-rebuild switch --flake .#legendary

home:
  home-manager switch --flake .#dqk

flake-update:
  nix flake update --flake ./nixvim
  nix flake update
