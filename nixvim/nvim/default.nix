{
  inputs,
  lib,
  pkgs,
  ...
}: {
  # Plugin by-name directory imports
  imports = let
    inherit (builtins) readDir;
    inherit (lib.attrsets) foldlAttrs;
    inherit (lib.lists) optional;
    by-name = ./plugins;
  in
    (foldlAttrs (
      prev: name: type:
        prev ++ optional (type == "directory") (by-name + "/${name}")
    ) [] (readDir by-name))
    ++ [
      ./colorscheme.nix
      ./diagnostics.nix
      ./ft.nix
      ./keymaps.nix
      ./options.nix
      ./performance.nix
      ./usercommands.nix
    ];

  enableMan = true;

  package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;

  viAlias = false;
  vimAlias = false;

  # provider
  withPython3 = true;
  withRuby = false;

  # TODO: autocmd
}
