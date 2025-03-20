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
      ./performance.nix
    ];

  enableMan = true;

  package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;

  # TODO: diagnostic
  # TODO: files
  # TODO: globals
  # TODO: opts
  opts = {
    number = true;
    relativenumber = true;
  };

  viAlias = false;
  vimAlias = false;

  # provider
  withPython3 = true;
  withRuby = false;

  # TODO: autocmd

  # experimental, not sure if it works
  luaLoader.enable = true;

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  # TODO: move elsewhere
  plugins.lz-n.enable = true;
}
