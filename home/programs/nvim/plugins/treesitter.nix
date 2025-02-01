{ pkgs, ... }:

{
  plugins.treesitter = {
    enable = true;
    folding = false;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      lua
      nix
    ];

    settings = {
      auto_install = false;
      highlight = { additional_vim_regix_highlighting = false; };
      indent.enable = true;
    };
  };
}

